<?php include 'header.php';
$ss_id=$_GET['no']; ?>
<style>
.table-bordered {
	border: 1px solid #000000;
}
.table-bordered th, .table-bordered td{
	border: 1px solid #000000;
}
.table th, .table td {
	padding:2px 10px 2px 10px;
}

.challan{
	font-weight:bold;
}
</style>
<?php
	$sqld = "select * from `inv_scrap` where `ss_id`='$ss_id'";
	$resultd = mysqli_query($conn, $sqld);
	$rowd = mysqli_fetch_array($resultd);
?>
<link rel="stylesheet" type="text/css" href="css/jquery.fancybox.css">
<script src="js/jquery.fancybox.js"></script>

<div class="container-fluid">
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>
            Material Sale Report
			<!-- Your HTML content goes here -->
			<div style="display: none;" id="hidden-content"><img src="images/<?php echo $rowd['issue_image']; ?>" /></div>
			<button class="btn btn-info" data-fancybox data-src="#hidden-content" onclick="javascript:;"><i class="fa fa-eye" aria-hidden="true"></i> View Attached File </button>
			<button class="btn btn-default" onclick="printDiv('printableArea')" style="float:right;"><i class="fa fa-print" aria-hidden="true" style="font-size: 17px;"> Print</i></button></div>
			<div class="card-body" id="printableArea">
				<div class="row">
					<div class="col-sm-1"></div>
					<div class="col-sm-10">
						<div class="row">
							<div class="col-sm-6">	
								<p>
								<img src="images/Saif_Engineering_Logo_165X72.png" height="100px;"/>
								<h5>MAA MOTORS</h5><span>CNG PUMP,BANDARI MARKET,DOKKIN KHAN,DHAKA-1230</span></br></p></div>
							<div class="col-sm-6">
								<table class="table table-bordered">
									<tr>
										<th>SS ID:</th>
										<td><?php echo $ss_id; ?></td>
									</tr>
									<tr>
										<th>SS Date:</th>
										<td><?php
										echo $rowd['ss_date'] ?></td>
									</tr>
								
								
								
								
								
								
									
									<tr>
										<th>Partner:</th>
										<td>
											<?php 
											$partner_id = $rowd['partner_id'];
											$sqlunit	=	"SELECT `name` FROM `partner` WHERE `partner_id` = '$partner_id' ";
											$resultunit = mysqli_query($conn, $sqlunit);
											$rowunit=mysqli_fetch_array($resultunit);
											echo   $rowunit['name']."[".$partner_id."]";
											?>
										</td>
									</tr>
									
									
									
									
									
									<tr>
										<th>Warehouse:</th>
										<td>
											<?php 
											$dataresult =   getDataRowByTableAndId('inv_warehosueinfo', $rowd['warehouse_id']);
											echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : '');
											?>
										</td>
									</tr>
								</table>
							</div>
						</div>
						<center><h3 >SCRAP SALE INVOICE</h3></center>
						
						<table class="table table-bordered" id="material_receive_list"> 
							<thead>
								<tr>
									<th>SL #</th>
									<th>Material ID</th>
									<th>Material Name</th>
									<th>Material Unit</th>
									<th>Quantity</th>
									<th>Rate</th>
									<th>Amount</th>
								</tr>
							</thead>
							<tbody id="material_receive_list_body">
								<?php
								$SS_id=$_GET['no'];
								$sql = "select * from `inv_scrapdetail` where `ss_id`='$ss_id'";
								$result = mysqli_query($conn, $sql);
									for($i=1; $row = mysqli_fetch_array($result); $i++){
								?>
								<tr>
									<td><?php echo $i; ?></td>
									<td><?php echo $row['material_id']; ?></td>
									<td>
										<?php 
											$dataresult =   getDataRowByTableAndId('inv_material', $row['material_name']);
											echo (isset($dataresult) && !empty($dataresult) ? $dataresult->material_description : '');
										?>
									</td>
									
									
									<td>
										<?php 
										$dataresult =   getDataRowByTableAndId('inv_item_unit', $row['unit']);
										echo (isset($dataresult) && !empty($dataresult) ? $dataresult->unit_name : '');
										?>
									</td>
									
									<td><?php echo $row['issue_qty'] ?></td>
									<td><?php echo $row['issue_price'] ?></td>
									<td><?php echo $row['amount'] ?></td>
									
								</tr>
								<?php } ?>
								
								
								
						
								
								
								
								
								<tr>
									<td colspan="6" class="grand_total"style="text-align:right;">Total Amount:</td>
									<td>
										<?php 
										$sql2 = "SELECT totalamount FROM  `inv_scrap` where `ss_id`='$ss_id'";
										$result2 = mysqli_query($conn, $sql2);
										for($i=0; $row2 = mysqli_fetch_array($result2); $i++){
										$totalamountvar=number_format((float)$row2['totalamount'], 2, '.', '');
										
										echo $totalamountvar ;
										}
										?>
									</td>
									
								</tr>
								
								
								
								
									<tr>
									<td colspan="6" class="grand_total"style="text-align:right;">Paid Amount:</td>
									<td>
										<?php 
										$sql2 = "SELECT paidamount FROM  `inv_scrap` where `ss_id`='$ss_id'";
										$result2 = mysqli_query($conn, $sql2);
										for($i=0; $row2 = mysqli_fetch_array($result2); $i++){
										$fgfg3=number_format((float)$row2['paidamount'], 2, '.', '');
										
										echo $fgfg3 ;
										}
										?>
									</td>
									
								</tr>
								
								
								<tr>
									<td colspan="6" class="grand_total"style="text-align:right;">Due Amount:</td>
									<td>
										<?php 
										$sql2 = "SELECT Dueamount FROM  `inv_scrap` where `ss_id`='$ss_id'";
										$result2 = mysqli_query($conn, $sql2);
										for($i=0; $row2 = mysqli_fetch_array($result2); $i++){
										$DUEAMOUNTVAR=number_format((float)$row2['Dueamount'], 2, '.', '');
										
										echo $DUEAMOUNTVAR ;
										}
										?>
									</td>
									
								</tr>
								
								
								
								
								
								
								
								
								
								
								<tr>
									<td colspan="7">Remarks:</br>
										<?php 
										echo $rowd['remarks'];
										?>
									</td>
								</tr>
							</tbody>
						</table>
						
						<b>Total Amount in words: 
							<span class="amountWords"><?php echo convertNumberToWords($totalamountvar).' Only';?></span>
						</b>
						<div class="row" style="text-align:center">
							<div class="col-sm-5"></br><?php echo $rowd['received_by'];?></br>--------------------</br>Receiver Signature</div>			
							<div class="col-sm-2">
								<?php $queryedit	= "SELECT `approval_status` FROM `inv_scrap` WHERE `ss_id`='$ss_id'";
								$result		=	$conn->query($queryedit);
								$row		=	mysqli_fetch_assoc($result);
								if($row['approval_status'] == 0){?>
								<img src="images/pending.png" height="80;" class="authimg"/>
								<?php } else{?>
								<img src="images/approved.png" height="80;" class="authimg"/>
								<?php }?>
							</div>
							
							
							
							<div class="col-sm-5"></br><?php 
										if($rowd['approved_by']){
										$dataresult =   getDataRowByTableAndId('users', $rowd['approved_by']);
										echo (isset($dataresult) && !empty($dataresult) ? $dataresult->first_name . ' ' .$dataresult->last_name : '');	
										}?></br>--------------------</br>Authorised Signature</div>
						</div></br>
						<div class="row">
							<div class="col-sm-12" style="border:1px solid gray;border-radius:5px;padding:10px;color:#f26522;">
								<h5>Notice***</br><span style="font-size:14px;color:#000000;">Please Check Everything Before Signature</span></h5>
								
							</div>
						</div>
					</div>
					<div class="col-sm-1"></div>
				</div>
			</div>				
			<script>
			function printDiv(divName) {
				 var printContents = document.getElementById(divName).innerHTML;
				 var originalContents = document.body.innerHTML;

				 document.body.innerHTML = printContents;

				 window.print();

				 document.body.innerHTML = originalContents;
			}
			</script>
		</div>
	</div>
<!-- /.container-fluid -->
<?php include 'footer.php' ?>