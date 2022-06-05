<?php 
include 'header.php';


if (isset($_GET['id']) && $_GET['id'] != '') { 
	//echo $row['education'];
	$id=	$_GET['id'];
	
	
	$table 	= 'partnerpayment';
	$sqledit = "SELECT * FROM $table WHERE `id`='$id'";
	$resultedit = $conn->query($sqledit);
	$rowedit = mysqli_fetch_array($resultedit);
	$button_name = 'Update';
	$button_post_name = 'partnerpayment_update_submit';
}
else{
	$button_name = 'Save';
	$button_post_name = 'partnerpayment_submit';
}


?>
<!-- Left Sidebar End -->
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
		
            <a href="partneraccountsreport.php">Partner Accounts  Report</a>
			
        </li>
		
		
        <li class="breadcrumb-item active"> Partner Accounts Form</li>
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i> Partner Accounts Form
		</div>
        <div class="card-body">
            <!--here your code will go-->
            <div class="form-group">
                <form action="" method="post" name="add_name" id="add_name" enctype="multipart/form-data">
                    <div class="row" id="div1" style="">
					
					

						
						
<div class="col-xs-2">
                            <div class="form-group">
                                <label>Tran ID</label>
								<?php
								
									if(isset($rowedit['tranid']) && !empty($rowedit['tranid'])){
										$tranid 	=$rowedit['tranid'];
									}else{
										$tranid 	=	getDefaultCategoryCode('partnerpayment', 'tranid', '03d', '001', 'TRN-');
									}
                                   ?>
                                <input type="text" name="tranid" id="tranid" value="<?php echo $tranid; ?>" class="form-control" readonly="readonly">
                            </div>
</div>


	

<div class="col-xs-2">
                            <div class="form-group">
                                <label for="id"> Date</label>
                                <input type="text" autocomplete="off" name="trandate" id="trandate" value="<?php if (isset($rowedit['trandate']) && $rowedit['trandate'] != '') { echo $rowedit['trandate']; }?>" class="form-control datepicker" value="<?php echo date('Y-m-d'); ?>">
                            </div>
</div>

	
						
<div class="col-xs-2">
							<div class="form-group">
								<label for="id">Partner</label><span class="reqfield"> ***required</span>
								<select class="form-control" id="partner_id" name="partner_id" onchange="getPartyByPartner(this.value);" required >
									<option value="">Select</option>
									<?php
									$parentCats = getTableDataByTableName('partner', '', 'name');
									if (isset($parentCats) && !empty($parentCats)) {
										foreach ($parentCats as $pcat) {
											?>
 <option value="<?php echo $pcat['id'] ?>"<?php if (isset($rowedit['partner_id']) && $rowedit['partner_id'] == $pcat['id']) { echo "Selected"; }?>><?php echo $pcat['name'] ?></option>
										<?php }
									} ?>
								</select>
							</div>
</div>
						
						
                  
						
						
						<div class="col-xs-4">
                            <div class="form-group">
                                <label>Description</label>
                                <input type="text" name="expensedesc" value="<?php if (isset($rowedit['expensedesc']) && $rowedit['expensedesc'] != '') { echo $rowedit['expensedesc']; }?>" id="expensedesc" class="form-control">
                            </div>
                        </div>
						
						
						
							<div class="col-xs-2">
                            <div class="form-group">
                                <label>Payment Type</label>
                       <select name="trantype" id="trantype" class="form-control">
									
								
								<option value="Deposit" <?php 
								if (isset($rowedit['trantype']) && $rowedit['trantype'] == 'Deposit' ) { echo 'selected'; }
								?> >Deposit</option>
								
								<option value="payment/withdraw" <?php 
								if (isset($rowedit['trantype']) && $rowedit['trantype'] == 'payment/withdraw' ) { echo 'selected'; }
								?>>payment/withdraw</option>
								
							</select>
                            </div>
                        </div>
						
						
						
						
						<div class="col-xs-2">
                            <div class="form-group">
                                <label>Amount</label>
								<?php 
								if (isset($rowedit['trantype']) && $rowedit['trantype'] == 'Deposit' ) 
								{ 
									$amount=$rowedit['amountdeposit'];
								}else if (isset($rowedit['trantype']) && $rowedit['trantype'] == 'payment/withdraw' ) {
									$amount=$rowedit['amountwithdraw'];
								}
								
								?>
                                <input type="text" name="amount" value="<?php if (isset($rowedit['trantype']) && $rowedit['trantype'] != '') { echo $amount; }?>" id="amount" class="form-control">
                            </div>
                        </div>
						
						
						
						
						
						
						  <div class="form-group">
                                <label></label>

                                <?php
                                $warehouse_id = $_SESSION['logged']['warehouse_id'];
                                $dataresult = getDataRowByTableAndId('inv_warehosueinfo', $warehouse_id);
                                ?>
                                <input type="hidden" class="form-control" readonly="readonly" value="<?php echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : ''); ?>">

                                <input type="hidden" name="warehouse_id" id="warehouse_id" class="form-control" readonly="readonly" value="<?php echo $_SESSION['logged']['warehouse_id']; ?>">

                            </div>
							
							
					
					
						
				
						<div class="col-xs-12">
                            <div class="form-group">
							
	<input type="hidden" name="edit_id" value="<?php echo (isset($rowedit['id']) && !empty($rowedit['id']) ? $rowedit['id']: ""); ?>">
							
                                <input type="submit" name="partnerpayment_submit" id="partnerpayment_submit" class="btn btn-block" style="background-color:#007BFF;color:#ffffff;" value="Save" />   
                            </div>
                        </div>
                    </div>
					
					
					
										<div class="row">
						<div class="col-xs-12">
							<table id="dataTable" class="table table-bordered table-striped table-hover">
								<thead>
									<tr>
										<th>Tran ID</th>
										<th>Tran Date</th>
										<th>Partner ID</th>
										<th>Tran Type</th>
										<th>Expense Description</th>
										<th>Deposit</th>
										<th>Payment/withdraw</th>
										
									</tr>
								</thead>
								<tbody>
									<?php
									
									$partner_details = getTableDataByTableName('partnerpayment', '', 'id');
									
									if (isset($partner_details) && !empty($partner_details)) {
										foreach ($partner_details as $item) {
											?>
											<tr>
												<td><?php echo $item['tranid']; ?></td>
												<td><?php echo $item['trandate']; ?></td>
												
												
												<td><?php 
											    $dataresult =   getDataRowByTableAndId('partner', $item['partner_id']);
											    echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : '');
									          	    ?></td>
												
												
												<td><?php echo $item['trantype']; ?></td>
												<td><?php echo $item['expensedesc']; ?></td>
												<td><?php echo $item['amountdeposit']; ?></td>
												<td><?php echo $item['amountwithdraw']; ?></td>
												<td>
<span><a class="action-icons c-approve" href="issue-view.php?no=<?php echo $item['tranid']; ?>" title="View"><i class="fas fa-eye text-success"></i></a></span>

<span><a class="action-icons c-approve" href="partnerpayment.php?id=<?php echo $item['id']; ?>" title="View"><i class="fas fa-edit text-info"></i></a></span>
													

<span><a class="action-icons c-delete" href="#" title="delete"><i class="fa fa-trash text-danger"></i></a></span>
												</td>
											</tr>
											<?php
										}
									}else{ ?>
										  <tr>
											  <td colspan="7">
													<div class="alert alert-info" role="alert">
														Sorry, no data found!
													</div>
												</td>
											</tr>  
									<?php } ?>
								</tbody>

							</table>
						</div>
					</div>
					
					
					

                </form>
            </div>
            <!--here your code will go-->
        </div>
    </div>

</div>
<!-- /.container-fluid -->

<script>
	$(function() {
	$("#trandate").datepicker({
			inline: true,
			dateFormat:"yy-mm-dd",
			yearRange:"-50:+10",
			changeYear: true,
			changeMonth: true
	});
});
</script>

<?php include 'footer.php' ?>