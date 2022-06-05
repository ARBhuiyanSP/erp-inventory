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
	
	
	

		
	 <!--	<button class="btn btn-info linktext" onclick="window.location.href='movementdamage_report.php';"> Replace Stock Report</button>-->
		
	<button class="btn btn-info linktext" onclick="window.location.href='replacepartnerpartymovement_report.php';"> supplier wise movement Report</button>
		
		
		
		</div>
		
		
    <div class="card-body">
        <form class="form-horizontal" action="" id="warehouse_stock_search_form" method="GET">
            <div class="table-responsive">          
                <table class="table table-borderless search-table">
                    <tbody>
                        <tr>  
						
						
						
						
						
						
						  <div class="col-xs-2">
                            <div class="form-group">
                                <label for="id">Supplier</label><span class="reqfield"> ***required</span>
                                <select class="form-control material_select_2" id="supplier_name" name="supplier_name" required onchange="getItemCodeByParam(this.value, 'suppliers', 'code', 'supplier_id');">
                                    <option value="">Select</option>
                                    <?php
                                    $projectsData = getTableDataByTableName('suppliers');

                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                            ?>
                                            <option value="<?php echo $data['id']; ?>"><?php echo $data['name']; ?></option>
                                            <?php
                                        }
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-2">
                            <div class="form-group">
                                <label for="id">Supplier ID</label>
                                <input type="text" name="supplier_id" id="supplier_id" class="form-control" required>
                            </div>
                        </div>
						
						
						
						
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
	
	 $supplier_id 		= $_GET['supplier_id'];
    
	
	
?>
<center>
	
	<div class="row">
		<div class="col-md-12" id="printableArea">
				<table id="htmltable" class="table table-bordered table-striped ">
					<thead>
					
					
<tr>
	<th colspan="9">
					<center>
										<img src="images/Saif_Engineering_Logo_165X72.png" height="100px;"/>
										
										<br><span>Supplier Replace Material Movement Report</span><br>
										
										
										
										<br><span>supplier:<?php 
											
											$sqlunit	=	"SELECT * FROM `suppliers` WHERE `code` = '$supplier_id' ";
											$resultunit = mysqli_query($conn, $sqlunit);
											$rowunit=mysqli_fetch_array($resultunit);
											echo $rowunit['name'];
											?></span><br>
										
										From  <span class="dtext"><?php echo date("jS F Y", strtotime($from_date));?> </span>To  <span class="dtext"><?php echo date("jS F Y", strtotime($to_date));?> </span>
			
								
								
								
								
		         </center>						
	 </th>
</tr>
						
						
						
						<tr>
							<th width="15%">Replace No</th>
							<th width="15%">Date</th>
							<th width="30%">Material Name</th>
							            <th>Unit</th>
							
							<th>Replace Receive</th>
							<th>Replace Issue</th>
							<th>Remarks</th>
						</tr>
						
						
					</thead>
					<tbody>
					
					
					
					
					
    <?php
	$totalReceiveQty=0;
	$totalOutQty=0;
						if($_SESSION['logged']['user_type'] !== 'whm'){
							$sql	=	"SELECT * FROM `inv_replacesupplierbalance`WHERE  `supplier_id` = '$supplier_id'  and `mb_date` BETWEEN '$from_date' AND '$to_date'";
						}else{
							$sql	=	"SELECT * FROM `inv_replacesupplierbalance` WHERE `warehouse_id` = $warehouse_id and `supplier_id` = '$supplier_id' AND `mb_date` BETWEEN '$from_date' AND '$to_date'";
						}
						$result = mysqli_query($conn, $sql);
						while($row=mysqli_fetch_array($result))
						{
							
							
						$totalReceiveQty += $row['mbin_qty'];
						
						$totalOutQty += $row['mbout_qty'];	
						
					?>
					
					
		
						
							<td><?php echo $row['mb_ref_id']; ?></td>
							<td><?php echo $row['mb_date']; ?></td>
						
							
							<!-- MATERIAL NAME -->
							
							<td>
								<?php 
								$mb_materialid = $row['mb_materialid'];
								$sqlname	=	"SELECT * FROM `inv_material` WHERE `material_id_code` = '$mb_materialid' ";
								$resultname = mysqli_query($conn, $sqlname);
								$rowname=mysqli_fetch_array($resultname);
								echo $rowname['material_description'];
								?>
							</td>
							
							
							<!-- UNIT -->
							<td>
								<?php 
								$qty_unit = $rowname['qty_unit'];
								$sqlunit	=	"SELECT * FROM `inv_item_unit` WHERE `id` = '$qty_unit' ";
								$resultunit = mysqli_query($conn, $sqlunit);
								$rowunit=mysqli_fetch_array($resultunit);
								echo $rowunit['unit_name'];
								
								?>
								
							</td>
							
						<td><?php echo $row['mbin_qty']; ?></td>
						<td><?php echo $row['mbout_qty']; ?></td>
						<td><?php echo $row['remarks']; ?></td>
						
					
							
					
</tr>
						
						
						
						
						
						
						
						<?php

							} ?>
							
							<tr>
								<td> </td>
							
							</tr>
							
							<tr>
								<td colspan="4" style="text-align:right">Total Replace Receive</td>
								<td><b><?php echo $totalReceiveQty; ?></b></td>
								
							</tr>
							<tr>
								<td colspan="4" style="text-align:right">Total Replace Out</td>
								<td><b><?php echo $totalOutQty; ?></b></td>
								
							</tr>
							
							<tr>
								<td colspan="4" style="text-align:right">Balance</td>
								<td><b><?php echo $balanceqty=$totalReceiveQty-$totalOutQty; ?></b></td>
								
							</tr>
							
							<?php $rowcount=mysqli_num_rows($result);
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


