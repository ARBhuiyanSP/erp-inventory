<style>
.dtext{
	text-decoration:underline;
}
</style>
<div class="card mb-3">
   <div class="card-header">
			<button class="btn btn-success linktext"onclick="window.location.href='consumption_report.php';"> Individual Material sales Report</button>
		
		
		
		
		<button class="btn btn-info linktext" onclick="window.location.href='profit_report.php';"> Partner wise Profit Report</button>
		<button class="btn btn-info linktext" onclick="window.location.href='sales_report.php';"> Date wise Sales  Report</button>
		
		<button class="btn btn-info linktext" onclick="window.location.href='salesdetail_report.php';"> Date wise Sales Detail Report</button>
		
		<button class="btn btn-info linktext" onclick="window.location.href='salesdetailmemo_report.php';"> Memo wise Sales Detail Report</button>
		
	</div>
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
		<div class="col-md-1"></div>
		<div class="col-md-10" id="printableArea">
			<div class="row">
				<div class="col-sm-12">	
					<center>
						<p>
							<img src="images/Saif_Engineering_Logo_165X72.png" height="100px;"/><br>
							<span>Material Receive Report</span><br>
							From <span class="dtext"><?php echo date("jS F Y", strtotime($from_date));?></span> To  <span class="dtext"><?php echo date("jS F Y", strtotime($to_date));?> </span><br>
						</p>
					</center>
				</div>
			</div>
				<table id="" class="table table-bordered">
					<thead>
						<tr>
							
							<th>Material Name</th>
							<th>Issue Qty</th>
							<th>Buy Price</th>
							<th>Buy Amount</th>
							<th>Sale Price</th>
							<th>Sale amount</th>
							<th>Profit amount</th>
							<th>Net Profit</th>
						</tr>
					</thead>
					<tbody>
						<?php
						
						
						 
						 
							if($_SESSION['logged']['user_type'] !== 'whm'){
								$sql	=	"SELECT * FROM `inv_issuedetail` where `issue_date` BETWEEN '$from_date' AND '$to_date' group by memono;";
							}else{
								$sql	=	"SELECT * FROM `inv_issuedetail` where `warehouse_id` = '$warehouse_id' AND `issue_date` BETWEEN '$from_date' AND '$to_date' group by memono;";
							}
							
							$result = mysqli_query($conn, $sql);
							while($row=mysqli_fetch_array($result))
							{
								
							
								
						?>
						
				
						
						
						<tr style="background-color:#E9ECEF;">
							<td>Issue No : <?php echo $row['issue_id']; ?></td>
							<td>Date : <?php echo date("jS F Y", strtotime($row['issue_date']));?></td>
							<td>Memo No : <b><?php echo $row['memono']; ?></b></td>
							<td colspan="3">Partner : <?php 
								$partner_id = $row['partner_id'];
								$sqlunit	=	"SELECT * FROM `partner` WHERE `id` = '$partner_id' ";
								$resultunit = mysqli_query($conn, $sqlunit);
								$rowunit=mysqli_fetch_array($resultunit);
								echo $rowunit['name'];
								?>
							</td>
							
								<td colspan="4">Party : <?php 
								$party_id = $row['party_id'];
								$sqlunit	=	"SELECT * FROM `party` WHERE `party_id` = '$party_id' ";
								$resultunit = mysqli_query($conn, $sqlunit);
								$rowunit=mysqli_fetch_array($resultunit);
								echo $rowunit['partyname'];
								?>
							</td>
							
							
								<td colspan="4">Discount : <?php 
								$memono = $row['memono'];
								$sqlunit	=	"SELECT discount_amount FROM `inv_issue` WHERE `memono` = '$memono' ";
								$resultunit = mysqli_query($conn, $sqlunit);
								$rowunit=mysqli_fetch_array($resultunit);
								echo $rowunit['discount_amount'];
								?>
							</td>
							
						</tr>
						
						
						
						<?php
                         $dissue_qty=0;
						 $dcur_price=0;
						 $dcur_price_amount = 0;
						
						 $dissue_price=0;
						 $damount=0;
						
						 $profitsumamount=0;
						 
						 
						 $netprofit=0;
						 
						 
							$memono = $row['memono'];
							$sqlall	=	"SELECT * FROM `inv_issuedetail` WHERE `memono` = '$memono';";
							$resultall = mysqli_query($conn, $sqlall);
							while($rowall=mysqli_fetch_array($resultall))
							{
								$dissue_qty += $rowall['issue_qty'];
								$dcur_price_amount += $rowall['cur_price_amount'];
								$damount += $rowall['amount'];
								$profitsumamount +=  $rowall['amount']-$rowall['cur_price_amount'];
						?>
						<tr>
							
							<td><?php 
								$mb_materialid = $rowall['material_id'];
								$sqlname	=	"SELECT * FROM `inv_material` WHERE `material_id_code` = '$mb_materialid' ";
								$resultname = mysqli_query($conn, $sqlname);
								$rowname=mysqli_fetch_array($resultname);
								echo $rowname['material_description'];
							?>
							</td>
							
							
							<td style="text-align:center;"><?php echo number_format((float)$rowall['issue_qty']); ?></td>
							<td style="text-align:center;"><?php echo number_format((float)$rowall['cur_price']); ?></td>
							<td style="text-align:center;"><?php echo number_format((float)$rowall['cur_price_amount'], 2, '.', ''); ?></td>
							<td style="text-align:center;"><?php echo number_format((float)$rowall['issue_price'], 2, '.', ''); ?></td>
							<td style="text-align:center;"><?php echo number_format((float)$rowall['amount'], 2, '.', ''); ?></td>
							
							<td style="text-align:center;">
								<?php $profitamount =  $rowall['amount']-$rowall['cur_price_amount']; echo number_format((float)$profitamount, 2, '.', '');?>
							</td>
							
						</tr>
						<?php } ?>
						<tr>
							<td colspan="1" class="sub_total">Total Qty:</td>
							<td style="text-align:center;"><b><?php echo $dissue_qty; ?></b></td>
							<td></td>
						
							<td style="text-align:center;"><b><?php echo $dcur_price_amount; ?></b></td>
							<td></td>
							<td style="text-align:center;"><b><?php echo $damount; ?></b></td>
							
							
							<td style="text-align:center;"><b><?php echo $profitsumamount; ?></b></td>
							
							
							<td style="text-align:center;">
				<?php $netprofit =  $profitsumamount-$rowunit['discount_amount']; echo number_format((float)$netprofit, 2, '.', '');?>
							</td>
							
						</tr>
						
						
						
						
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
		<center><button class="btn btn-default" onclick="printDiv('printableArea')"><i class="fa fa-print" aria-hidden="true" style="    font-size: 17px;"> Print</i></button></center>
		<div class="col-md-1"></div>
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


