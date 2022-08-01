
							
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
		<button class="btn btn-success linktext"> Individual Material sales Report</button>
		
		
		
		
		<button class="btn btn-info linktext" onclick="window.location.href='profit_report.php';"> Partner wise Profit Report</button>
		<button class="btn btn-info linktext" onclick="window.location.href='sales_report.php';"> Date wise Sales  Report</button>
		
		<button class="btn btn-info linktext" onclick="window.location.href='salespartner_report.php';"> Partner wise Daily Sales  Report</button>
		
		<button class="btn btn-info linktext" onclick="window.location.href='salespartnerparty_report.php';"> partner and party wise Sales Detail Report</button>
		
		
		<button class="btn btn-info linktext" onclick="window.location.href='salesdetail_report.php';"> Date wise Sales Detail Report</button>
		
		
		
		
		
		
	</div>
		
    <div class="card-body">
        <form class="form-horizontal" action="" id="warehouse_stock_search_form" method="GET">
            <div class="table-responsive">          
                <table class="table table-borderless search-table">
                    <tbody>
                        <tr> 
						
							<div class="col-xs-2">
							<div class="form-group">
								<label for="id">Partner</label><span class="reqfield"> ***required</span>
								<select class="form-control" id="partner_id" name="partner_id" onchange="getPartyByPartner(this.value);">
									<option value="">Select</option>
									<?php
									$parentCats = getTableDataByTableName('partner', '', 'name');
									if (isset($parentCats) && !empty($parentCats)) {
										foreach ($parentCats as $pcat) {
											?>
											<option value="<?php echo $pcat['id'] ?>"><?php echo $pcat['name'] ?></option>
										<?php }
									} ?>
								</select>
							</div>
                        </div>
						
						
						 <div class="col-xs-3">
							<div class="form-group">
								<label for="id">Party</label><span class="reqfield"> ***required</span>
								<select class="form-control" id="main_sub_item_id" name="partyname" onchange="getItemCodeByParam(this.value, 'party', 'party_id', 'party_id');">
									<option value="">Select</option>
									<?php
									$parentCats = getTableDataByTableName('party','','partyname');
									if (isset($parentCats) && !empty($parentCats)) {
										foreach ($parentCats as $pcat) {
											?>
											<option value="<?php echo $pcat['id'] ?>"><?php echo $pcat['partyname'] ?></option>
										<?php }
									} ?>
								</select>
							</div>
                        </div>
						
                        <div class="col-xs-1">
                            <div class="form-group">
                                <label for="id">party ID</label>
                                <input type="text" name="party_id" id="party_id" class="form-control" readonly required>
                            </div>
                        </div>
						
						
							
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
	 $partner_id 		= $_GET['partner_id'];
	     $party_id   		= $_GET['party_id'];
	
	
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
							
								<br><span>PARTNER:<?php 
											$dataresult =   getDataRowByTableAndId('partner', $partner_id);
											echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : '');
							                              ?></span>
														  
														  
														  <br><span>PARTY:<?php 
											$dataresult =   getDataRowByTableAndId1('party', $party_id);
											echo (isset($dataresult) && !empty($dataresult) ? $dataresult->partyname : '');
							                            ?></span><br>
														
														
							From <span class="dtext"><?php echo date("jS F Y", strtotime($from_date));?></span> To  <span class="dtext"><?php echo date("jS F Y", strtotime($to_date));?> </span><br>
						</p>
					</center>
				</div>
			</div>
				<table id="" class="table table-bordered table-striped ">
					<thead>
						<tr>
							<th>Memo No</th>
							<th>Memo Date</th>
							<th>Partner Name</th>
							<th>Party Name</th>
							
							<th>Buy amount</th>
							<th>Sale amount</th>
							
							<th>Discount</th>
							<th>Net Sale</th>

							
							<th>Paid amount</th>
							<th>Due amount</th>
							<th>Profit amount</th>
							<th>Remarks</th>
						</tr>
					</thead>
					<tbody>
					
					
					
					
					
					<?php
					
						$totalsumamount = 0;
						$totalpaidamount=0;
						$totaldueamount=0;
						$totalprofitamount=0;
						$totaldiscount_amount=0;
						$totalnetsale_amount=0;
						
						
						if($_SESSION['logged']['user_type'] !== 'whm'){
							$sql	=	"SELECT * FROM `inv_issue` WHERE `partner_id` = '$partner_id' and `party_id` = '$party_id' and  `issue_date` BETWEEN '$from_date' AND '$to_date'";
						}else{
							$sql	=	"SELECT * FROM `inv_issue` WHERE `partner_id` = '$partner_id' and `party_id` = '$party_id' and `warehouse_id` = '$warehouse_id'  `issue_date` BETWEEN '$from_date' AND '$to_date'";
						}
						$result = mysqli_query($conn, $sql);

						while($row=mysqli_fetch_array($result))
						{
							$totalsumamount += $row['totalamount'];
							
							$totaldiscount_amount += $row['discount_amount'];
							$totalnetsale_amount  += $row['netsale_amount'];
							
							$totalpaidamount += $row['paidamount'];
							$totaldueamount += $row['Dueamount'];
							$totalprofitamount += $row['profitamount'];
							
							
					?>
					
					
					
					
				<tr>
							<td><?php echo $row['issue_id']; ?></td>
							
							<td><?php echo $row['issue_date']; ?></td>
							
							
							<td>
							<?php 
											$dataresult =   getDataRowByTableAndId('partner', $row['partner_id']);
											echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : '');
							?></td>
							
							
								<td><?php 
											$dataresult =   getDataRowByTableAndId1('party', $row['party_id']);
											echo (isset($dataresult) && !empty($dataresult) ? $dataresult->partyname : '');
										?></td>
							
							
							
							
							
							
						

							<td style="text-align:right;"><?php echo number_format((float)$row['totalcur'], 2, '.', ''); ?></td>
							<td style="text-align:right;"><?php echo number_format((float)$row['totalamount'], 2, '.', ''); ?></td>
							
							<td style="text-align:right;"><?php echo number_format((float)$row['discount_amount'], 2, '.', ''); ?></td>
							<td style="text-align:right;"><?php echo number_format((float)$row['netsale_amount'], 2, '.', ''); ?></td>							
							
							
							<td style="text-align:right;"><?php echo number_format((float)$row['paidamount'], 2, '.', ''); ?></td>
							<td style="text-align:right;"><?php echo number_format((float)$row['Dueamount'], 2, '.', ''); ?></td>
							<td style="text-align:right;"><?php echo number_format((float)$row['profitamount'], 2, '.', ''); ?></td>
							
						
							<td><?php echo $row['remarks']; ?></td>
				</tr>
						<?php
							}?>
							
							
							
						<tr>
							<td colspan="5" class="grand_total" style="text-align:right;">Grand Total:</td>
							<td style="text-align:right;">
								<?php echo number_format((float)$totalsumamount, 2, '.', '');
								?>
							</td>
							
							
							<td style="text-align:right;">
								<?php echo number_format((float)$totaldiscount_amount, 2, '.', '');
								?>
							</td>
							
							
							<td style="text-align:right;">
								<?php echo number_format((float)$totalnetsale_amount, 2, '.', '');
								?>
							</td>
							
							
							
							<td style="text-align:right;">
								<?php echo number_format((float)$totalpaidamount, 2, '.', '');
								?>
							</td>
							
							<td style="text-align:right;">
								<?php echo number_format((float)$totaldueamount, 2, '.', '');
								?>
							</td>
							
							<td style="text-align:right;">
								<?php echo number_format((float)$totalprofitamount, 2, '.', '');
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


