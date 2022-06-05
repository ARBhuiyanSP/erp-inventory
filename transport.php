<?php 
include 'header.php';

if (isset($_GET['id']) && $_GET['id'] != '') { 
	//echo $row['education'];
	$id=	$_GET['id'];
	
	
	$table 	= 'transport';
	$sqledit = "SELECT * FROM $table WHERE `id`='$id'";
	$resultedit = $conn->query($sqledit);
	$rowedit = mysqli_fetch_array($resultedit);
	$button_name = 'Update';
	$button_post_name = 'transport_update_submit';
}
else{
	$button_name = 'Save';
	$button_post_name = 'transport_submit';
}
?>
<!-- Left Sidebar End -->
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
		
            <a href="party_ledger.php">Transport  Report</a>
			
        </li>
		
		
        <li class="breadcrumb-item active"> Transport Form</li>
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i> Transport Form
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
								
									if(isset($rowedit['tranid']) && !empty($rowedit['tranid'])){
										$tranid 	=$rowedit['tranid'];
									}else{
										$tranid 	=	getDefaultCategoryCode('transport', 'tranid', '03d', '001', 'TRN-');
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
						
						
						
                     
                       
						
						
						<div class="col-xs-1">
                            <div class="form-group">
                                <label>Cost Type</label>
                                <select name="trantype" id="trantype" value="<?php if (isset($rowedit['trantype']) && $rowedit['trantype'] != '') { echo $rowedit['trantype']; }?>" class="form-control">
									<option value="cash">CAR</option>
									
									
								</select>
                            </div>
                        </div>
						
						
						
						<div class="col-xs-1">
                            <div class="form-group">
                                <label>Amount</label>
                                <input type="text" name="amount" value="<?php if (isset($rowedit['amount']) && $rowedit['amount'] != '') { echo $rowedit['amount']; }?>" id="amount" class="form-control">
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
							
							
						<div class="col-xs-3">
                           <div class="form-group">
                                <label>Remarks</label>
								<textarea rows="3" name="remarks" id="remarks" class="form-control"><?php if (isset($rowedit['remarks']) && $rowedit['remarks'] != '') { echo $rowedit['remarks']; }?></textarea>
                            </div>
                        </div>
					
						
				
						<div class="col-xs-12">
                            <div class="form-group">
							
							 <input type="hidden" name="edit_id" value="<?php echo (isset($rowedit['id']) && !empty($rowedit['id']) ? $rowedit['id']: ""); ?>">
							 
                                <input type="submit" name="transport_submit" id="submit" class="btn btn-block" style="background-color:#007BFF;color:#ffffff;" value="Save" />   
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
										<th>Description</th>
										<th>Amount</th>
										
									</tr>
								</thead>
								<tbody>
									<?php
									
									$partner_details = getTableDataByTableName('transport', '', 'id');
									
									if (isset($partner_details) && !empty($partner_details)) {
										foreach ($partner_details as $item) {
											?>
											<tr>
												<td><?php echo $item['tranid']; ?></td>
												<td><?php echo $item['trandate']; ?></td>
												<td><?php echo $item['partner_id']; ?></td>
												<td><?php echo $item['trantype']; ?></td>
												<td><?php echo $item['amount']; ?></td>
												<td>
													<span><a class="action-icons c-approve" href="issue-view.php?no=<?php echo $item['tranid']; ?>" title="View"><i class="fas fa-eye text-success"></i></a></span>
													
													
													<span><a class="action-icons c-approve" href="transport.php?id=<?php echo $item['id']; ?>" title="Edit"><i class="fas fa-edit text-info"></i></a></span>
													
													
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