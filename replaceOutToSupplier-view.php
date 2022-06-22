<?php include 'header.php';
$ros_id=$_GET['no']; ?>
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
.amountWords{
	text-decoration:underline;
	font-style:italic;
	color:#f26522;
}


</style>

<link rel="stylesheet" type="text/css" href="css/jquery.fancybox.css">
<script src="js/jquery.fancybox.js"></script>

<div class="container-fluid">
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>
            Material Receive Report
			<?php
				$sqld = "select * from `inv_replaceOUTsupplier` where `ros_id`='$ros_id'";
				$resultd = mysqli_query($conn, $sqld);
				$rowd = mysqli_fetch_array($resultd);
			?>
			<!-- Your HTML content goes here -->
			<div style="display: none;" id="hidden-content"><img src="images/<?php echo $rowd['mrr_image']; ?>" /></div>
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
										<th>Replace No:</th>
										<td><?php echo $ros_id; ?></td>
									</tr>
									<tr>
										<th>Date:</th>
										<td><?php
										echo $rowd['ros_date']; ?></td>
									</tr>
									
									<tr>
										<th>warehouse:</th>
										<td>
											<?php 
											$dataresult =   getDataRowByTableAndId('inv_warehosueinfo', $rowd['warehouse_id']);
											echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : '');
											?>
										</td>
									</tr>
									<tr>
										<th>supplier:</th>
										<td>
											<?php 
									$supplier_id = $rowd['supplier_id'];
									 $sqlunit="SELECT name FROM `suppliers` WHERE `code` = '$supplier_id' ";
											$resultunit = mysqli_query($conn, $sqlunit);
											$rowunit=mysqli_fetch_array($resultunit);
											echo   $rowunit['name']."[".$supplier_id."]";
											?>
										</td>
									</tr>
									
								</table>
							</div>
						</div>
						<center><button class="btn btn-block btn-secondary challan">REPLACE OUT TO SUPPLIER</button></center>
						<table class="table table-bordered" id=""> 
						<!-- id="material_receive_list = FOR SEARCH AND PAGE COUNT VIEW SHOW -->
						
							<thead>
								<tr>
									<th>SL #</th>
									<th>Material ID</th>
									<th>Material Name</th>
									<th>Material Unit</th>
									<th>Quantity</th>
									
								</tr>
							</thead>
							<tbody id="material_receive_list_body">
								<?php
								
								$sql = "select * from `inv_replaceoutsupplierdetails` where `ros_id`='$ros_id'";
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
									<td><?php echo $row['return_qty'] ?></td>
						
								</tr>
								<?php } ?>
						
						
						
						
						<tr>
										<td colspan="4" class="grand_total" style="text-align:right;"> Total Qty:</td>
									<td>	
										<?php 
										$sql2 			= "SELECT sum(return_qty) FROM  `inv_replaceOUTsupplierdetails` where `ros_id`='$ros_id'";
										$result2 		= mysqli_query($conn, $sql2);
										for($i=0; $row2 = mysqli_fetch_array($result2); $i++){
										$totalReceived	=$row2['sum(return_qty)'];
										echo $totalReceived ;
										}
										?>
									</td>
									
									
								</tr>
								
								
								
							</tbody>
						</table>
						
						<div class="row" style="text-align:center">
							<div class="col-sm-5"></br></br>--------------------</br>Receiver Signature</div>
										
										
										
						
							
							
							
						
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