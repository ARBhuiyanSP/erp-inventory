
<style>
.dtext{
	text-decoration:underline;
}
</style>
<div class="card mb-3">
    <div class="card-header">
        <i class="fas fa-search"></i>
        Party Ledger Report Search</div>
    <div class="card-body">
        <form class="form-horizontal" action="" id="warehouse_stock_search_form" method="GET">
            <div class="table-responsive">          
                <table class="table table-borderless search-table">
                    <tbody>
                        <tr>  
						
						
						
						
						
							<td>
								<div class="form-group">
									<label for="id">party</label>
									<select class="form-control select2" id="partyname" name="partyname" required onchange="getItemCodeByParam(this.value, 'party', 'party_id', 'party_id');">
										<option value="">Select</option>
										<?php
										$projectsData = getTableDataByTableName('party');

										if (isset($projectsData) && !empty($projectsData)) {
											foreach ($projectsData as $data) {
												if($_GET['partyname'] == $data['id']){
													$selected	= 'selected';
													}else{
													$selected	= '';
													}
													?>
												<option value="<?php echo $data['id']; ?>" <?php echo $selected; ?>><?php echo $data['partyname']; ?></option>
												<?php
											}
										}
										?>
									</select>
								</div>
							</td>
							
							
							
							
							<td style="width:10%">
							
								<div class="form-group">
									<label for="id">Party ID</label>
									<input type="text" name="party_id" id="party_id" class="form-control" value="<?php if(isset($_GET['party_id'])){ echo $_GET['party_id']; } ?>" required>
								</div>
							</td>
							
							
							
							
							
							<td style="width:10%">
                                <div class="form-group">
                                    <label for="todate">From Date</label>
                                    <input type="text" class="form-control" id="from_date" name="from_date" value="<?php if(isset($_GET['from_date'])){ echo $_GET['from_date']; } ?>" autocomplete="off" required >
                                </div>
                            </td>
							
							
							
							
							<td style="width:10%">
                                <div class="form-group">
                                    <label for="todate">To Date</label>
                                    <input type="text" class="form-control" id="to_date" name="to_date" value="<?php if(isset($_GET['to_date'])){ echo $_GET['to_date']; } ?>" autocomplete="off" required >
                                </div>
                            </td>
							
							
							
							
							<td style="width:15%">
                                <div class="form-group">
                                    <label for="todate">.</label>
									<button type="submit" name="submit" class="form-control btn btn-primary">Party Details</button>
                                </div>
                            </td>
							
							
							
							
							
							<td style="width:15%">
                                <div class="form-group">
                                    <label for="todate">.</label>
									<button type="submit" name="submitLedger" class="form-control btn btn-primary">Party Ledger</button>
                                </div>
                            </td>
							
							
							
							
							
                        </tr>
                    </tbody>
                </table>
            </div>
        </form>
    </div>
</div>


                                                                        <!-- party Details Start -->
<?php
if(isset($_GET['submit'])){
	
	$partyname	=	$_GET['partyname'];
	$party_id	=	$_GET['party_id'];
	$from_date		=	$_GET['from_date'];
	$to_date		=	$_GET['to_date'];
	//$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
										$sqlunit	=	"SELECT * FROM `party` WHERE `party_id` = '$party_id	' ";
										$resultunit = mysqli_query($conn, $sqlunit);
										$rowunit=mysqli_fetch_array($resultunit);
										$Party	= $rowunit['partyname'];
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
							<span>Party Ledger Report</span><br>
							<span><?php echo $partyname; ?></span><br>
							From <span class="dtext"><?php echo date("jS F Y", strtotime($from_date));?></span> To  <span class="dtext"><?php echo date("jS F Y", strtotime($to_date));?> </span><br>
						</p>
					</center>
				</div>
			</div>
			
			


			
			
	<table id="" class="table table-bordered">
					<thead>
						<tr>
							<th>Material ID</th>
							<th>Material Name</th>
							<th>Unit</th>
							<th>Receive QTY</th>
							<th>Unit Price</th>
							<th>Total Amount</th>
						</tr>
					</thead>
					<tbody>
						<?php
							/* $sql	=	"SELECT * FROM `inv_receive` where `supplier_id`='$supplier_id' AND `warehouse_id` = '$warehouse_id' AND `mrr_date` BETWEEN '$from_date' AND '$to_date';"; */
							
							$sql	=	"SELECT * FROM `inv_issue` where `party_id`='$party_id' AND `issue_date` BETWEEN '$from_date' AND '$to_date';";
							$result = mysqli_query($conn, $sql);
							while($row=mysqli_fetch_array($result))
							{
						?>
						
						
						<tr style="background-color:#E9ECEF;">
							<td>MRR No : <?php echo $row['issue_id']; ?></td>
							<td>Date : <?php echo date("jS F Y", strtotime($row['issue_date']));?></td>
							
							<td colspan="2">Party : <?php 
								$party_id = $row['party_id'];
								$sqlunit	=	"SELECT * FROM `party` WHERE `party_id` = '$party_id'  ";
								$resultunit = mysqli_query($conn, $sqlunit);
								$rowunit=mysqli_fetch_array($resultunit);
								echo $rowunit['partyname'];
								?>
							</td>
						</tr>
						
						
						
						<?php
							$totalQty = 0;
							$totalAmount = 0;
							$issue_id = $row['issue_id'];
							$sqlall	=	"SELECT * FROM `inv_issuedetail` WHERE `issue_id` = '$issue_id';";
							$resultall = mysqli_query($conn, $sqlall);
							while($rowall=mysqli_fetch_array($resultall))
							{
								$totalQty += $rowall['issue_qty'];
								$totalAmount += $rowall['amount'];
						?>
						<tr>
							<td><?php echo $rowall['material_id']; ?></td>
							
							
							<td><?php 
								$mb_materialid = $rowall['material_id'];
								$sqlname	=	"SELECT * FROM `inv_material` WHERE `material_id_code` = '$mb_materialid' ";
								$resultname = mysqli_query($conn, $sqlname);
								$rowname=mysqli_fetch_array($resultname);
								echo $rowname['material_description'];
							?>
							</td>
							
							
							
							<td><?php echo getDataRowByTableAndId('inv_item_unit', $rowall['unit'])->unit_name; ?></td>
							<td><?php echo $rowall['issue_qty']; ?></td>
							<td><?php echo $rowall['issue_price']; ?></td>
							<td><?php echo $rowall['amount']; ?></td>
						</tr>
						<?php } ?>
						<tr>
							<td colspan="3" class="grand_total">Total:</td>
							<td><?php echo $totalQty; ?></td>
							<td></td>
							<td><?php echo $totalAmount; ?></td>
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


                                                            <!-- party Details End -->









<?php } else if(isset($_GET['submitLedger'])){
	$partyname	=	$_GET['partyname'];
	$party_id	=	$_GET['party_id'];
	$from_date		=	$_GET['from_date'];
	$to_date		=	$_GET['to_date'];
	//$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
	
									    $sqlunit	=	"SELECT * FROM `party` WHERE `party_id` = '$party_id' ";
										$resultunit = mysqli_query($conn, $sqlunit);
										$rowunit=mysqli_fetch_array($resultunit);
										$Party	= $rowunit['partyname'];
										
										
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
							<span>Party Ledger Report</span><br>
							<span><?php echo $partyname; ?></span><br>
							From <span class="dtext"><?php echo date("jS F Y", strtotime($from_date));?></span> To  <span class="dtext"><?php echo date("jS F Y", strtotime($to_date));?> </span><br>
						</p>
					</center>
				</div>
			</div>
				<table id="" class="table table-bordered">
					<thead>
						<tr>
							<th>Date</th>
							<th>Ref no</th>
							<th>Perticulars</th>
							<th>Bill Amount</th>
							<th>Paid Amount</th>
							<th>Balance</th>
							
							<th>Receiver Mode</th>
							<th>Remarks</th>
							
						</tr>
					</thead>
					<tbody>
						<?php 
							/* $sqlpreinqty = "SELECT SUM(`sb_cr_amount`)- SUM(`sb_dr_amount`) AS due FROM `inv_supplierbalance` WHERE `sb_supplier_id` = '$supplier_id' AND `warehouse_id`='$warehouse_id' AND `sb_date` < '$from_date'";
							
							$sqlpreinqty = "SELECT SUM(`sb_cr_amount`)- SUM(`sb_dr_amount`) AS due FROM `inv_supplierbalance` WHERE `sb_supplier_id` = '$supplier_id' AND `warehouse_id`='$warehouse_id' AND `sb_date` < '$from_date'"; */
							
							$sqlpreinqty = "SELECT SUM(`pb_cr_amount`)- SUM(`pb_dr_amount`) AS due FROM `inv_partybalance` WHERE `pb_party_id` = '$party_id'  AND `pb_date` < '$from_date'";
							$resultpreinqty = mysqli_query($conn, $sqlpreinqty);
							$rowpreinqty = mysqli_fetch_object($resultpreinqty);
							
							if($rowpreinqty->due > 0){
								$opening_stock = $rowpreinqty->due;
							}
							else {
									$opening_stock = 0;
								}
							//echo $opening_stock;
						?>
						<tr style="background-color:#E9ECEF;">
							<td><?php echo date("jS F Y", strtotime($from_date));?></td>
							<td colspan="2">Opening Balance</td>
							<td>0</td>
							<td><?php echo $opening_stock; ?></td>
							<td><?php echo $opening_stock; ?></td>
						</tr>
						<?php
							/* $sql	=	"SELECT * FROM `inv_supplierbalance` WHERE `sb_supplier_id`='$supplier_id' AND `warehouse_id`='$warehouse_id' AND `sb_date` BETWEEN '$from_date' AND '$to_date';"; */
							
							$sql	=	"SELECT * FROM `inv_partybalance` WHERE `pb_party_id`='$party_id' AND `pb_date` BETWEEN '$from_date' AND '$to_date';";
							$result = mysqli_query($conn, $sql);
							$totaldebit = 0;
							$totalcredit = 0;
							while($row=mysqli_fetch_array($result))
							{
								$debit = $row['pb_dr_amount'];
								$totaldebit += $row['pb_dr_amount'];
								
								$credit = $row['pb_cr_amount'];
								$totalcredit += $row['pb_cr_amount'];
								
								
								
								
								
								
								
									
								$balance = $opening_stock +  $totaldebit-$totalcredit ;
								
								
								
								
								
								
								
								
								
						?>
						<tr style="background-color:#E9ECEF;">
							<td><?php echo date("jS F Y", strtotime($row['pb_date']));?></td>
							<td><?php echo $row['pb_ref_id']; ?></td>
							<td><?php echo $row['pb_remark']; ?></td>
							<td><?php echo $row['pb_dr_amount']; ?></td>
							<td><?php echo $row['pb_cr_amount']; ?></td>
							
							<?php 
							$adate			=	$row['pb_date'];
							/* $sqlcredit 		=	"SELECT SUM(`sb_cr_amount`) AS tcredit FROM `inv_supplierbalance` WHERE `sb_supplier_id` = '$supplier_id' AND `warehouse_id`='$warehouse_id' AND `sb_date` < '$adate'"; */
							
							
							$sqlcredit 		=	"SELECT SUM(`pb_cr_amount`) AS tcredit FROM `inv_partybalance` WHERE `pb_party_id` = '$party_id' AND `pb_date` < '$adate'";
							$resultcredit 	= 	mysqli_query($conn, $sqlcredit);
							$rowcredit 		=	mysqli_fetch_object($resultcredit);
							$creditamount	=	$rowcredit->tcredit;
							?>
							<td><?php echo $balance; ?></td>
							
							<td><?php echo $row['receivermode']; ?></td>
						    <td><?php echo $row['pb_remark']; ?></td>
							
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

<?php } ?>
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


