<?php 
include 'header.php';



if (isset($_GET['id']) && $_GET['id'] != '') { 
	//echo $row['education'];
	$id=	$_GET['id'];
	
	
	$table 	= 'supplier_payment';
	$sqledit = "SELECT * FROM $table WHERE `id`='$id'";
	$resultedit = $conn->query($sqledit);
	$rowedit = mysqli_fetch_array($resultedit);
	$button_name = 'Update';
	$button_post_name = 'spplier_payment_update_submit';
}
else{
	$button_name = 'Save';
	$button_post_name = 'supplier_payment_submit';
}



?>
<!-- Left Sidebar End -->
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="supplier_ledger.php">Report</a>
			
								
        </li>
        <li class="breadcrumb-item active"> Supplier Payment Entry Form</li>
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i> Supplier Payment Entry Form
		</div>
        <div class="card-body">
            <!--here your code will go-->
            <div class="form-group">
                <form action="" method="post" name="add_name" id="add_name" enctype="multipart/form-data">
                    <div class="row" id="div1" style="">
                     
						
						
						<div class="col-xs-2">
                            <div class="form-group">
                                <label>Voucher ID</label>
								<?php
								
									if(isset($rowedit['voucherid']) && !empty($rowedit['voucherid'])){
										$voucherid 	=$rowedit['voucherid'];
									}else{
										$voucherid 	=	getDefaultCategoryCode('supplier_payment', 'voucherid', '03d', '001', 'SPR-');
									}
                                   ?>
                                <input type="text" name="voucherid" id="voucherid" value="<?php echo $voucherid; ?>" class="form-control" readonly="readonly">
                            </div>
</div>



						
<div class="col-xs-2">
                            <div class="form-group">
                                <label for="id">Voucher Date</label>
                                <input type="text" autocomplete="off" name="voucherdate" id="voucherdate" value="<?php if (isset($rowedit['voucherdate']) && $rowedit['voucherdate'] != '') { echo $rowedit['voucherdate']; }?>" class="form-control datepicker" value="<?php echo date('Y-m-d'); ?>">
                            </div>
</div>
						
						
								<div class="col-xs-2">
                            <div class="form-group">
                                <label for="id">Supplier</label>
                                <select class="form-control" id="supplier_name" name="supplier_name" required onchange="getItemCodeByParam(this.value, 'suppliers', 'code', 'supplier_id');">
                                    <option value="">Select</option>
                                    <?php
                                    $projectsData = getTableDataByTableName('suppliers');

                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                            ?>
           <option value="<?php echo $data['id'] ?>"<?php if (isset($rowedit['supplierid']) && $rowedit['supplierid'] == $data['code']) { echo "Selected"; }?>><?php echo $data['name'] ?></option>
										<?php }
									} ?>
                                </select>
                            </div>
                        </div>
						
					
						
						

                        <div class="col-xs-2">
                            <div class="form-group">
                                <label for="id">Supplier ID</label>
                                <input type="text" name="supplierid" value="<?php if (isset($rowedit['supplierid']) && $rowedit['supplierid'] != '') { echo $rowedit['supplierid']; }?>" id="supplier_id" class="form-control" required readonly>
                            </div>
                        </div>
						
						
						<div class="col-xs-2">
                            <div class="form-group">
                                <label>Payment Type</label>
                                <select name="paymenttype" id="paymenttype" class="form-control">
									<option value="cash">Cash</option>
									<option value="Bank">Bank</option>
									<option value="Bkash">Bkash</option>
									<option value="Nagod">Nagod</option>
								</select>
                            </div>
                        </div>
						
						
						
						
						
                                <?php
                                $warehouse_id = $_SESSION['logged']['warehouse_id'];
                                $dataresult = getDataRowByTableAndId('inv_warehosueinfo', $warehouse_id);
                                ?>
                                <input type="hidden" class="form-control" readonly="readonly" value="<?php echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : ''); ?>">

                                <input type="hidden" name="warehouse_id" id="warehouse_id" class="form-control" readonly="readonly" value="<?php echo $_SESSION['logged']['warehouse_id']; ?>">
								
								
								
						
						<div class="col-xs-2">
                            <div class="form-group">
                                <label>Amount</label>
                                <input type="text" name="amount" value="<?php if (isset($rowedit['amount']) && $rowedit['amount'] != '') { echo $rowedit['amount']; }?>" id="amount" class="form-control">
                            </div>
                        </div>
						
						<div class="col-xs-4">
                            <div class="form-group">
                                <label>Receiver Mode</label>
                                <input type="text" name="receivermode" id="receivermode" value="<?php if (isset($rowedit['receivermode']) && $rowedit['receivermode'] != '') { echo $rowedit['receivermode']; }?>" class="form-control">
                            </div>
                        </div>
						
						
						<div class="col-xs-3">
                            <div class="form-group">
                                <label>Remarks</label>
								<textarea rows="3" name="remarks" id="remarks" class="form-control"><?php if (isset($rowedit['remarks']) && $rowedit['remarks'] != '') { echo $rowedit['remarks']; }?></textarea>
                            </div>
                        </div>
						<div class="col-xs-2">
                            <div class="form-group">
                                <label>File Upload</label>
								<input type="file" accept="image/*" name="sn_prt_image" onchange="loadFile(event)">
								<p style="color:red;">*** Select an image file like .jpg or .png</p>
								<script>
								  var loadFile = function(event) {
									var output = document.getElementById('output');
									output.src = URL.createObjectURL(event.target.files[0]);
									output.onload = function() {
									  URL.revokeObjectURL(output.src) // free memory
									}
								  };
								  
								</script>
                            </div>
                        </div>
						<div class="col-xs-2">
                            
							<div style="border:1px solid gray;border-radius:5px;height:150px;width:150px;">
								<img id="output" height="150px" width="150px"/>
                            </div>
                        </div>
						
				
						<div class="col-xs-12">
                            <div class="form-group">
							
							
											<!-- name="edit_id"   call korchi payment_process.php -->		
 <input type="hidden" name="edit_id" value="<?php echo (isset($rowedit['id']) && !empty($rowedit['id']) ? $rowedit['id']: ""); ?>">
 
 
                                <input type="submit" name="payment_submit" id="submit" class="btn btn-block" style="background-color:#007BFF;color:#ffffff;" value="Save" />   
                            </div>
                        </div>
                    </div>
					<div class="row">
						<div class="col-xs-12">
							<table id="dataTable" class="table table-bordered table-striped table-hover">
								<thead>
									<tr>
										<th>Voucher ID</th>
										<th>Voucher Date</th>
										<th>Supplier ID</th>
										<th>Payment Type</th>
										<th>Amount</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<?php
									
									$item_details = getTableDataByTableName('supplier_payment', '', 'id');
									
									if (isset($item_details) && !empty($item_details)) {
										foreach ($item_details as $item) {
											?>
											<tr>
												<td><?php echo $item['voucherid']; ?></td>
												<td><?php echo $item['voucherdate']; ?></td>
												<td><?php echo $item['supplierid']; ?></td>
												<td><?php echo $item['paymenttype']; ?></td>
												<td><?php echo $item['amount']; ?></td>
												<td>
													<span><a class="action-icons c-approve" href="issue-view.php?no=<?php echo $item['issue_id']; ?>" title="View"><i class="fas fa-eye text-success"></i></a></span>
													
															<span><a class="action-icons c-approve" href="payment_entry.php?id=<?php echo $item['id']; ?>" title="View"><i class="fas fa-edit text-info"></i></a></span>
															
															
															
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
	$("#voucherdate").datepicker({
			inline: true,
			dateFormat:"yy-mm-dd",
			yearRange:"-50:+10",
			changeYear: true,
			changeMonth: true
	});
});
</script>


<?php include 'footer.php' ?>