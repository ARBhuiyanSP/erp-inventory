<?php include 'header.php';
$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
 ?>
<link href="css/dataTables.bootstrap4.min.css" rel="stylesheet">
<style>
table tbody tr{
	background-color:#E9ECEF;
	color:#000;
}
.table th, .table td {
	padding:2px;
}

</style>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
<script>
$(document).ready(function() {
    $('.js-example-basic-single').select2();
});
</script>
<div class="container-fluid">
<!-- Breadcrumbs-->
		<?php if($_SESSION['logged']['user_type'] !== 'whm') {?>
		<div class="row">
		<?php
			$projectsData = getwarehouseinfo('inv_warehosueinfo');
			;
			if (isset($projectsData) && !empty($projectsData)) {
				foreach ($projectsData as $data) {
					?>
					

			
			
			<?php
				}
			}
			?>	
		</div>
		<?php } ?>
		<div class="row">
			<div class="col-xl-12 col-sm-6 mb-4">
				<div class="row">
					<div class="col-xl-6 col-sm-6 mb-3">
						<div class="card bg-default o-hidden">
							<div class="card-body">
							<?php
								$toDay = '2022-05-01';
								//$toDay = date("Y-m-d");
								if($_SESSION['logged']['user_type'] == 'superAdmin') {
									$sqlsales	=	"select SUM(`totalamount`) AS totalamount FROM `inv_issue` WHERE  `issue_date` = '$toDay'";
								}else{
									$sqlsales	=	"select SUM(`totalamount`) AS totalamount FROM `inv_issue` WHERE `warehouse_id` = '$warehouse_id' AND `issue_date` = '$toDay'";
								}
								$resultsales = mysqli_query($conn, $sqlsales);
								$rowsales 		= mysqli_fetch_object($resultsales) ;
								$tadaySales			= $rowsales->totalamount;
							?>
							<div class=""> Sales<br><small>Today Sales Amount - <?php echo $tadaySales; ?></small></div>
							<table class="table table-bordered table-striped">
								<thead>
									<th>INV No</th>
									<th>Amount</th>
								</thead>
								<tbody>
									<?php
									$sqlsaleslist = "select * from `inv_issue` WHERE `issue_date` = '$toDay' LIMIT 3";
									$resultsaleslist = mysqli_query($conn, $sqlsaleslist);
										for($i=1; $rowsaleslist = mysqli_fetch_array($resultsaleslist); $i++){
									?>
									<tr>
										<td><?php echo $rowsaleslist['issue_id']; ?></td>
										<td><?php echo $rowsaleslist['totalamount']; ?></td>
									</tr>
									<?php } ?>
								</tbody>
							</table>
						  </div>
						  <a class="card-footer clearfix small z-1" href="#">
							<span class="float-right">
							  View More <i class="fas fa-angle-right"></i>
							</span>
						  </a>
						</div>
					</div>
					<div class="col-xl-6 col-sm-6 mb-3">
						<div class="card bg-default o-hidden">
							<div class="card-body">
							<?php
								$toDay = '2022-05-01';
								//$toDay = date("Y-m-d");
								if($_SESSION['logged']['user_type'] == 'superAdmin') {
									$sqlpayment	=	"select SUM(`amount`) AS amount FROM `party_payment` WHERE  `voucherdate` = '$toDay'";
								}else{
									$sqlpayment	=	"select SUM(`amount`) AS amount FROM `party_payment` WHERE `warehouse_id` = '$warehouse_id' AND `voucherdate` = '$toDay'";
								}
								$resultpayment = mysqli_query($conn, $sqlpayment);
								$rowpayment 		= mysqli_fetch_object($resultpayment) ;
								$tadaypayment			= $rowpayment->amount;
							?>
							<div class=""> Collection<br><small>Today Collection Amount - <?php echo $tadaypayment; ?></small></div>
							<table class="table table-bordered table-striped">
								<thead>
									<th>Voucher No</th>
									<th>Amount</th>
								</thead>
								<tbody>
									<?php
									$sqlpaymentlist = "select * from `party_payment` WHERE `voucherdate` = '$toDay' LIMIT 3";
									$resultpaymentlist = mysqli_query($conn, $sqlpaymentlist);
										for($i=1; $rowpaymentlist = mysqli_fetch_array($resultpaymentlist); $i++){
									?>
									<tr>
										<td><?php echo $rowpaymentlist['voucherid']; ?></td>
										<td><?php echo $rowpaymentlist['amount']; ?></td>
									</tr>
									<?php } ?>
								</tbody>
							</table>
						  </div>
						  <a class="card-footer clearfix small z-1" href="#">
							<span class="float-right">
							  View More <i class="fas fa-angle-right"></i>
							</span>
						  </a>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-6 col-sm-6 mb-4">
						<div class="card">
							<form name="" action="" method="GET">
								<div class="col-md-12">
									<div class="form-group">
										<label>Material Name</label>
										<select class="form-control js-example-basic-single" id="material_name" name="material_name" required>
											<?php
											$projectsData = get_product_with_category();
											if (isset($projectsData) && !empty($projectsData)) {
												foreach ($projectsData as $data) {
													if($_GET['material_name'] == $data['item_code']){
														$selected	= 'selected';
														}else{
														$selected	= '';
														}
													?>
													<option value="<?php echo $data['item_code']; ?>" <?php echo $selected; ?>><?php echo $data['material_name']; ?></option>
													<?php
												}
											}
											?>
										</select>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<input type="submit" name="name_submit" id="submit" class="btn btn-block" style="background-color:#007BFF;color:#ffffff;" value="SEARCH" />   
									</div>
								</div>
							</form>
							<?php
							if(isset($_GET['name_submit'])){
							$material_name=$_GET['material_name'];
							//echo $material_name;
								$material_id_code = $material_name;
								$sqlmat	=	"SELECT * FROM `inv_material` WHERE `material_id_code` = '$material_id_code' ";
								$resultmat = mysqli_query($conn, $sqlmat);
								$rowmat=mysqli_fetch_array($resultmat);
													
							?>
							<h5>Total Stock of <?php echo $rowmat['material_description']; ?></h5>
							<table class="table table-bordered">
								<tbody>
								<?php
									$projectsData = getwarehouseinfo('inv_warehosueinfo');
									;
									if (isset($projectsData) && !empty($projectsData)) {
										foreach ($projectsData as $data) {
											?>
									<tr>
										<td><?php echo $data['name']; ?></td>
										<?php 
										$warehouse = $data['id'];
										$to_date = date('Y-m-d');
										$mb_materialid = $material_name;
										$sqlinqty = "SELECT SUM(`mbin_qty`) AS totalin FROM `inv_materialbalance` WHERE `warehouse_id` = '$warehouse' AND `mb_materialid` = '$mb_materialid' AND mb_date <= '$to_date'";
										$resultinqty = mysqli_query($conn, $sqlinqty);
										$rowinqty = mysqli_fetch_object($resultinqty) ;
										
										
										$sqloutqty = "SELECT SUM(`mbout_qty`) AS totalout FROM `inv_materialbalance` WHERE `warehouse_id` = '$warehouse' AND `mb_materialid` = '$mb_materialid' AND mb_date <= '$to_date'";
										$resultoutqty = mysqli_query($conn, $sqloutqty);
										$rowoutqty = mysqli_fetch_object($resultoutqty) ;
									
									
										?>
										<td><?php echo  $rowinqty->totalin -$rowoutqty->totalout; ?></td>
										<td><?php echo getDataRowByTableAndId('inv_item_unit', $rowmat['qty_unit'])->unit_name; ?></td>
									<tr>
									<?php
										}
									}
									?>
								</tbody>
							</table>
							<?php
							}
							?>
						</div>
					</div>
					<div class="col-xl-6 col-sm-6 mb-4">
						<div class="row">
							<div class="col-xl-6 col-sm-6 mb-4">
								<div class="card text-white bg-info o-hidden h-100">
									<div class="card-body">
										<div class="card-body-icon">
											<i class="fas fa-fw fa-truck"></i>
										</div>
									<?php
									if($_SESSION['logged']['user_type'] == 'superAdmin') {
										$sqlpmrr	=	"SELECT * FROM `inv_receive` WHERE `approval_status` = '0'";
									}else{
										$sqlpmrr	=	"SELECT * FROM `inv_receive` WHERE `warehouse_id`='$warehouse_id' AND `approval_status` = '0'";
									}
									
									$resultpmrr = mysqli_query($conn, $sqlpmrr);
									$totalPendingMrr = mysqli_num_rows($resultpmrr);
									?>
										<div class="mr-5">Total Received MRR:<?php echo $totalPendingMrr; ?> </div>
									</div>
									<a class="card-footer text-white clearfix small z-1" href="receive-list.php">
									<span class="float-left">View Details</span>
									<span class="float-right">
										<i class="fas fa-angle-right"></i>
									</span>
									</a>
								</div>
							</div>
							<div class="col-xl-6 col-sm-6 mb-4">
								<div class="card text-white bg-info o-hidden h-100">
									<div class="card-body">
										<div class="card-body-icon">
											<i class="fas fa-fw fa-truck"></i>
										</div>
									<?php
									if($_SESSION['logged']['user_type'] == 'superAdmin') {
										$sqlpmrr	=	"SELECT * FROM `inv_issue` WHERE `approval_status` = '0'";	
									}else{
										$sqlpmrr	=	"SELECT * FROM `inv_issue` WHERE `warehouse_id`='$warehouse_id' AND `approval_status` = '0'";
									}
									
									$resultpmrr = mysqli_query($conn, $sqlpmrr);
									$totalPendingMrr = mysqli_num_rows($resultpmrr);
									?>
										<div class="mr-5">Total sale Invoice:<?php echo $totalPendingMrr; ?></div>
									</div>
									<a class="card-footer text-white clearfix small z-1" href="issue-list.php">
									<span class="float-left">View Details</span>
									<span class="float-right">
										<i class="fas fa-angle-right"></i>
									</span>
									</a>
								</div>
							</div><!--
							<div class="col-xl-4 col-sm-6 mb-4">
								<div class="card text-white bg-info o-hidden h-100">
									<div class="card-body">
										<div class="card-body-icon">
											<i class="fas fa-fw fa-truck"></i>
										</div>
									<?php
									if($_SESSION['logged']['user_type'] == 'superAdmin') {
										$sqlpmrr	=	"SELECT * FROM `inv_return` WHERE `approval_status` = '0'";
									}else{
										$sqlpmrr	=	"SELECT * FROM `inv_return` WHERE `warehouse_id`='$warehouse_id' AND `approval_status` = '0'";
									}
									
									$resultpmrr = mysqli_query($conn, $sqlpmrr);
									$totalPendingMrr = mysqli_num_rows($resultpmrr);
									?>
										<div class="mr-5"><?php echo $totalPendingMrr; ?> Pending Return</div>
									</div>
									<a class="card-footer text-white clearfix small z-1" href="return-list.php">
									<span class="float-left">View Details</span>
									<span class="float-right">
										<i class="fas fa-angle-right"></i>
									</span>
									</a>
								</div>
							</div> -->
						</div>
					</div>
				</div>
			</div>
		</div>
		
        <!-- Icon Cards-->
		<?php if($_SESSION['logged']['user_type'] !== 'whm') {?>
        <div class="row">
		  <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-primary o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-comments"></i>
                </div>
				<?php
				$sqlsup	=	"SELECT * FROM suppliers";
				$resultsup = mysqli_query($conn, $sqlsup);
				$totalSupplier = mysqli_num_rows($resultsup);
				?>
                <div class="mr-5"><?php echo $totalSupplier; ?> Total Supplier</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="supplier_entry.php">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-primary o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-comments"></i>
                </div>
				<?php
				$sqlwar	=	"SELECT * FROM inv_warehosueinfo";
				$resultwar = mysqli_query($conn, $sqlwar);
				$totalWarehouse = mysqli_num_rows($resultwar);
				?>
                <div class="mr-5"><?php echo $totalWarehouse; ?> Total Warehouse</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="warehouse_entry.php">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-primary o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-comments"></i>
                </div>
				<?php
				$sqlpck	=	"SELECT * FROM partner";
				$resultpck = mysqli_query($conn, $sqlpck);
				$totalPartner = mysqli_num_rows($resultpck);
				?>
                <div class="mr-5"><?php echo $totalPartner; ?> Total Partner</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="partner_entry.php">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <div class="col-xl-3 col-sm-6 mb-3">
            <div class="card text-white bg-primary o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-comments"></i>
                </div>
				<?php
				$sqlbld	=	"SELECT * FROM party";
				$resultbld = mysqli_query($conn, $sqlbld);
				$totalparty = mysqli_num_rows($resultbld);
				?>
                <div class="mr-5"><?php echo $totalparty; ?> Total party</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="party_entry.php">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
        </div>
		
<?php } ?>

		
		
		
      </div>
      <!-- /.container-fluid -->
<?php include 'footer.php' ?>