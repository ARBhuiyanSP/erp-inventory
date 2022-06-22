<style>
.dtext{
	text-decoration:underline;
}
.table th, .table td{
	padding:5px;
}

</style>
<script src="https://res.cloudinary.com/dxfq3iotg/raw/upload/v1569818907/jquery.table2excel.min.js"></script>
<div class="card mb-3">
    <div class="card-header">
        <i class="fas fa-search"></i>
        All Party Accounts Staus report</div>
    <div class="card-body">
        <form class="form-horizontal" action="" id="warehouse_stock_search_form" method="GET">
            <div class="table-responsive">          
                <table class="table table-borderless search-table">
                    <tbody>
                        <tr>  
							<td>
                                <div class="form-group">
                                    <label for="todate">From Date</label>
                                    <input type="text" class="form-control" id="from_date" name="from_date" value="<?php if(isset($_GET['from_date'])){ echo $_GET['from_date']; } ?>" autocomplete="off" required >
                                </div>
                            </td>
							<td>
                                <div class="form-group">
                                    <label for="todate">To Date</label>
                                    <input type="text" class="form-control" id="to_date" name="to_date" value="<?php if(isset($_GET['to_date'])){ echo $_GET['to_date']; } ?>" autocomplete="off" required >
                                </div>
                            </td>
							
							<td>
                                <div class="form-group">
                                    <label for="todate">.</label>
									<button type="submit" name="submit" class="form-control btn btn-primary">Search</button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </form>
    </div>
</div>





<?php
if(isset($_GET['submit'])){
	
	$from_date		=	$_GET['from_date'];
	$to_date		=	$_GET['to_date'];
	$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
	
	
?>
<center>
	
	<div class="row">
		<div class="col-md-12" id="printableArea">
				<table id="htmltable" class="table table-bordered table-striped ">
					<thead>
						<tr>
							<th colspan="9">
								<center>
										<img src="images/Saif_Engineering_Logo_165X72.png" height="100px;"/><br>
										<span>All Supplier Account Status Report</span><br>
										From  <span class="dtext"><?php echo date("jS F Y", strtotime($from_date));?> </span>To  <span class="dtext"><?php echo date("jS F Y", strtotime($to_date));?> </span>
								</center>
							</th>
						</tr>
						<tr>
							<th width="15%">Party ID</th>
							<th width="30%">Party Name</th>
							
							
							<th>Bill Amount</th>
							<th>Paid Amount</th>
							
							<th width="15%">Due Balance</th>
							
						</tr>
					</thead>
					<tbody>
					
					
					
					<!--  utilities.php file function: get_my_credit_amount() get_my_debit_amount() is_showable() -->
					
    <?php
						if($_SESSION['logged']['user_type'] !== 'whm'){
							$sql	=	"SELECT * FROM `inv_partybalance` GROUP BY `pb_party_id`";
						}else{
							$sql	=	"SELECT * FROM `inv_partybalance` WHERE `warehouse_id` = $warehouse_id GROUP BY `pb_party_id`";
						}
						$result = mysqli_query($conn, $sql);
						while($row=mysqli_fetch_array($result))
						{
							$pb_party_id = $row['pb_party_id'];
							
							$cr_db_parama = (object)[
								'from_date'		=>	$from_date,
								'to_date'		=>	$to_date,
								'warehouse_id'	=>	$warehouse_id,
								'pb_party_id'	=>	$pb_party_id,
							];
							
							$totcredit = get_my_credit_amount($cr_db_parama);
							$totdebit  = get_my_debit_amount($cr_db_parama);
							
							if(is_showable($totcredit, $totdebit)){
								
								
					?>
					
					
					
					
					
					
<tr>
						
						    <!-- PARTY ID -->
						
							<td><?php echo $row['pb_party_id']; ?></td>
							
							
							<!-- PARTY NAME -->
							
							<td>
								<?php 
								
								$sqlname	=	"SELECT * FROM `party` WHERE `party_id` = '$pb_party_id' ";
								$resultname = mysqli_query($conn, $sqlname);
								$rowname=mysqli_fetch_array($resultname);
								echo $rowname['partyname'];
								?>
							</td>
							
							
							
							
							
							<!-- Debit AMOUNT -->
							<td style="text-align:right;">
								<?php 
									echo number_format((float)$totdebit, 2, '.', '');
								?>
							</td>
							
							
							
							
							
							<!-- Credit AMOUNT -->
							
							<td style="text-align:right;">
							<?php
							echo number_format((float)$totcredit, 2, '.', '');
							?>
							</td>
							
							
							
							
							
								
							
							
							
							
							
							
							
							<!-- BALANCE -->
							<td style="text-align:right;">
								<?php $balance =  $totdebit -$totcredit; echo number_format((float)$balance, 2, '.', '');?>
							</td>
							
						
							
</tr>
						
						
						
						
						
						
						
						<?php
							}
						}
							$rowcount=mysqli_num_rows($result);
							if($rowcount < 1) { ?>
								<tr><td colspan="6"><center>No Data Found</center></td></tr>
	<?php } ?>
					</tbody>
				</table>
				<center><div class="row">
					<div class="col-sm-6"></br></br>--------------------</br>Receiver Signature</div>
					<div class="col-sm-6"></br></br>--------------------</br>Authorised Signature</div>
				</div></center></br>
				<div class="row">
					<div class="col-sm-12" style="border:1px solid gray;border-radius:5px;padding:10px;color:#f26522;">
						<center><h5>Notice***</br><span style="font-size:14px;color:#000000;">Please Check Everything Before Signature</span></h5></center>
						
					</div>
				</div>
			</div>			
		</div>
		<center><button class="btn btn-default" onclick="printDiv('printableArea')"><i class="fa fa-print" aria-hidden="true" style="font-size: 17px;"> Print</i></button><button id="exporttable" class="btn btn-default"><i class="fas fa-file-excel" aria-hidden="true" style="font-size: 17px;"> Export xls</i></button></center>
		
</center>





<?php }?>




<script>
function printDiv(divName) {
	 var printContents = document.getElementById(divName).innerHTML;
	 var originalContents = document.body.innerHTML;

	 document.body.innerHTML = printContents;

	 window.print();

	 document.body.innerHTML = originalContents;
}
</script>
<script>
    $(function () {
        $("#from_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
</script>
<script>
    $(function () {
        $("#to_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
</script>
<script>
$(function() {
$("#exporttable").click(function(e){
var table = $("#htmltable");
if(table && table.length){
$(table).table2excel({
exclude: ".noExl",
name: "Excel Document Name",
filename: "BBBootstrap" + new Date().toISOString().replace(/[\-\:\.]/g, "") + ".xls",
fileext: ".xls",
exclude_img: true,
exclude_links: true,
exclude_inputs: true,
preserveColors: false
});
}
});

});
</script>


