
							
<style>
.dtext{
	text-decoration:underline;
}
.linktext{
	font-size:12px;
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
                                    <input type="text" class="form-control" id="from_date" value="<?php if(isset($_GET['from_date'])){ echo $_GET['from_date']; } ?>" name="from_date" autocomplete="off" required >
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
							<span>Date Wise Sales  Report</span><br>
							From <span class="dtext"><?php echo date("jS F Y", strtotime($from_date));?></span> To  <span class="dtext"><?php echo date("jS F Y", strtotime($to_date));?> </span><br>
						</p>
					</center>
				</div>
			</div>
				<table id="" class="table table-bordered table-striped ">
					
					
					
					<thead>
						<tr>
							<th>Issue No</th>
							<th>Issue Date</th>
							<th>Memo No</th>
							<th>Partner Name</th>
							<th>Party Name</th>
							<th>Material Name</th>
							
							<th>Quantity</th>
							<th>Buy Price</th>
                            <th>Buy amount</th>
							<th>Sale Price</th>
							<th>Sale amount</th>
							
							
				
						</tr>
					</thead>
					
					
					
<tbody>
					
					
					
					
					
					<?php
					     $dissue_qty=0;
						 $dcur_price=0;
						 $dcur_price_amount = 0;
						
						 $dissue_price=0;
						 $damount=0;
						
						
						if($_SESSION['logged']['user_type'] !== 'whm'){
							$sql	=	"SELECT * FROM `inv_issuedetail` WHERE  `issue_date` BETWEEN '$from_date' AND '$to_date'";
						}else{
							$sql	=	"SELECT * FROM `inv_issuedetail` WHERE `warehouse_id` = '$warehouse_id'  `issue_date` BETWEEN '$from_date' AND '$to_date'";
						}
						$result = mysqli_query($conn, $sql);

						while($row=mysqli_fetch_array($result))
						{
							
							
							    $dissue_qty += $row['issue_qty'];
								$dcur_price += $row['cur_price'];
								
								$dcur_price_amount += $row['cur_price_amount'];
						        
							    $dissue_price =0;
								$damount += $row['amount'];
								
							
					?>
					
					
					
					
				<tr>
							<td><?php echo $row['issue_id']; ?></td>
							
							<td><?php echo $row['issue_date']; ?></td>
							
							<td><?php echo $row['memono']; ?></td>
							
							
							<td>
							<?php 
											$dataresult =   getDataRowByTableAndId('partner', $row['partner_id']);
											echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : '');
							?></td>
							
							
							<td><?php 
											$dataresult =   getDataRowByTableAndId1('party', $row['party_id']);
											echo (isset($dataresult) && !empty($dataresult) ? $dataresult->partyname : '');
							?></td>
							
						
							
							
							<td><?php 
								$mb_materialid = $row['material_id'];
								$sqlname	=	"SELECT * FROM `inv_material` WHERE `material_id_code` = '$mb_materialid' ";
								$resultname = mysqli_query($conn, $sqlname);
								$rowname=mysqli_fetch_array($resultname);
								echo $rowname['material_description'];
							?>
							</td>
						

							<td style="text-align:right;"><?php echo number_format((float)$row['issue_qty']); ?></td>
							<td style="text-align:right;"><?php echo number_format((float)$row['cur_price']); ?></td>
							<td style="text-align:right;"><?php echo number_format((float)$row['cur_price_amount'], 2, '.', ''); ?></td>
							<td style="text-align:right;"><?php echo number_format((float)$row['issue_price'], 2, '.', ''); ?></td>
							<td style="text-align:right;"><?php echo number_format((float)$row['amount'], 2, '.', ''); ?></td>
							
							
							
							
							
							
				</tr>
				
				
				
				
				
						<?php
							}?>
							
							
							
						<tr>
							<td colspan="8" class="grand_total" style="text-align:right;">Grand Total:</td>
							<td style="text-align:right;">
								<?php echo number_format((float)$dcur_price_amount, 2, '.', '');
								?>
							</td>
							
							<td style="text-align:right;">
								<?php echo number_format((float)$dissue_price, 2, '.', '');
								?>
							</td>
							
							<td style="text-align:right;">
								<?php echo number_format((float)$damount, 2, '.', '');
								?>
							</td>
							
						
							
							
						</tr>
						
						
						
						
						<?php 
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


