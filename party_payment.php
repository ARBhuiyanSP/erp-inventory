<?php 
include 'header.php';
?>
<!-- Left Sidebar End -->
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="party_ledger.php">Party Ledger Report</a>
			
        </li>
		<li class="breadcrumb-item">
            <a href="allpartyaccountstatus_report.php">All Party Balance REport</a>
			
        </li>
		
		<li class="breadcrumb-item">
            <a href="allpartyaccountstatuspartnerandpartywise_report.php">Partner and  Party wise Balance Report</a>
			
        </li>
		
        <li class="breadcrumb-item active"> Party Payment Receive Form</li>
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i> Party Payment Receive Form
		</div>
        <div class="card-body">
            <!--here your code will go-->
            <div class="form-group">
                <form action="" method="post" name="add_name" id="add_name" enctype="multipart/form-data">
                    <div class="row" id="div1" style="">
                        <div class="col-xs-2">
                            <div class="form-group">
                                <label>Voucher ID</label>
                                <input type="text" name="voucherid" id="voucherid" class="form-control" readonly="readonly" value="<?php echo getDefaultCategoryCode('party_payment', 'voucherid', '03d', '001', 'VID-') ?>">
                            </div>
                        </div>
						  <div class="col-xs-2">
                            <div class="form-group">
                                <label for="id">Voucher Date</label>
                                <input type="text" autocomplete="off" name="voucherdate" id="voucherdate" class="form-control datepicker" value="<?php echo date('Y-m-d'); ?>">
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
                       
						
						
						<div class="col-xs-2">
                            <div class="form-group">
                                <label>Payment Type</label>
                                <select name="paymenttype" id="paymenttype" class="form-control">
									<option value="cash">Cash</option>
									<option value="credit">BKASH</option>
									<option value="credit">NOGOD</option>
								</select>
                            </div>
                        </div>
						
						
						
						<div class="col-xs-2">
                            <div class="form-group">
                                <label>Amount</label>
                                <input type="text" name="amount" id="amount" class="form-control">
                            </div>
                        </div>
						
						  <div class="form-group">
                                <label>Warehouse</label>

                                <?php
                                $warehouse_id = $_SESSION['logged']['warehouse_id'];
                                $dataresult = getDataRowByTableAndId('inv_warehosueinfo', $warehouse_id);
                                ?>
                                <input type="text" class="form-control" readonly="readonly" value="<?php echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : ''); ?>">

                                <input type="hidden" name="warehouse_id" id="warehouse_id" class="form-control" readonly="readonly" value="<?php echo $_SESSION['logged']['warehouse_id']; ?>">

                            </div>
							
							
						<div class="col-xs-6">
                            <div class="form-group">
                                <label>Remarks</label>
								<textarea rows="5" name="remarks" id="remarks" class="form-control"></textarea>
                            </div>
                        </div>
						<div class="col-xs-3">
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
						<div class="col-xs-3">
                            
							<div style="border:1px solid gray;border-radius:5px;height:150px;width:150px;">
								<img id="output" height="150px" width="150px"/>
                            </div>
                        </div>
						
				
						<div class="col-xs-12">
                            <div class="form-group">
                                <input type="submit" name="party_payment_submit" id="submit" class="btn btn-block" style="background-color:#007BFF;color:#ffffff;" value="Save" />   
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
										<th>Party ID</th>
										<th>Payment Type</th>
										<th>Amount</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<?php
									
									$item_details = getTableDataByTableName('party_payment', '', 'id');
									
									if (isset($item_details) && !empty($item_details)) {
										foreach ($item_details as $item) {
											?>
											<tr>
												<td><?php echo $item['voucherid']; ?></td>
												<td><?php echo $item['voucherdate']; ?></td>
												<td><?php echo $item['partyid']; ?></td>
												<td><?php echo $item['paymenttype']; ?></td>
												<td><?php echo $item['amount']; ?></td>
												<td>
													<span><a class="action-icons c-approve" href="issue-view.php?no=<?php echo $item['issue_id']; ?>" title="View"><i class="fas fa-eye text-success"></i></a></span>
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