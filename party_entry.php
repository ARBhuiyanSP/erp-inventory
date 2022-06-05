<?php 
include 'header.php';

if (isset($_GET['id']) && $_GET['id'] != '') { 
	//echo $row['education'];
	$id=	$_GET['id'];
	
	
	$table 	= 'party';
	$sqledit = "SELECT * FROM $table WHERE `id`='$id'";
	$resultedit = $conn->query($sqledit);
	$rowedit = mysqli_fetch_array($resultedit);
	$button_name = 'Update';
	$button_post_name = 'party_update_submit';
}
else{
	$button_name = 'Save';
	$button_post_name = 'party_submit';
}
?>
<!-- Left Sidebar End -->
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="dashboard.php">Dashboard</a>
			
        </li>
        <li class="breadcrumb-item active"> Party Entry</li>
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i> Party Entry Form
			
			<a href="partnerpartyreport.php">Partner wise party Print</a>
			
		</div>
        <div class="card-body">
            <!--here your code will go-->
            <div class="form-group">
                <form action="" method="post" name="add_name" id="add_name">
                    <div class="row" id="div1" style="">
					
					
					<div class="col-xs-4">
                            <div class="form-group">
                                <label>Partner Name</label>
								<select class="form-control" id="partner_id" name="partner_id" required>
                                    <option value="">Select</option>
                                    <?php
                                    $projectsData = getTableDataByTableName('partner');
                                    ;
                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                            ?>
   <option value="<?php echo $data['id'] ?>"<?php if (isset($rowedit['partner_id']) && $rowedit['partner_id'] == $data['id']) { echo "Selected"; }?>><?php echo $data['name'] ?></option>
										<?php }
									} ?>
								</select>
                            </div>
                        </div>
					
						
						
				



<div class="col-xs-2">
                            <div class="form-group">
                                <label>Voucher ID</label>
								<?php
								
									if(isset($rowedit['party_id']) && !empty($rowedit['party_id'])){
										$party_id 	=$rowedit['party_id'];
									}else{
										$party_id 	=	getDefaultCategoryCode('party', 'party_id', '03d', 'P01', 'PA-');
									}
                                   ?>
                                <input type="text" name="party_id" id="party_id" value="<?php echo $party_id; ?>" class="form-control" readonly="readonly">
                            </div>
</div>

					
						
						
						
						<div class="col-xs-3">
                            <div class="form-group">
                                <label>Party Name</label>
                                <input type="text" name="partyname" value="<?php if (isset($rowedit['partyname']) && $rowedit['partyname'] != '') { echo $rowedit['partyname']; }?>" id="partyname" class="form-control">
                            </div>
                        </div>
						
						<div class="col-xs-2">
                            <div class="form-group">
                                <label>serial</label>
                                <input type="text" name="serial" id="serial" class="form-control">
                            </div>
                        </div>
						
						
						
						<!--<div class="col-xs-4">
                            <div class="form-group">
                                <label>Party Type</label>
								<select class="form-control" id="building_type" name="building_type" required>
									<option value="">Select</option>
									<option value="A">A</option>
									<option value="B">B</option>
								</select>
                            </div>
                        </div> -->
						
						
						
						<div class="col-xs-12">
                            <div class="form-group">
							
							
								 <input type="hidden" name="edit_id" value="<?php echo (isset($rowedit['id']) && !empty($rowedit['id']) ? $rowedit['id']: ""); ?>">
								 
								 
                                <input type="submit" name="party_submit" id="submit" class="btn btn-block" style="background-color:#007BFF;color:#ffffff;" value="Save" />   
                            </div>
                        </div>
                    </div>
					<div class="row">
						<div class="col-xs-12">
							<table id="dataTable" class="table table-bordered table-striped table-hover">
								<thead>
									<tr>
										<th>Party ID</th>
										<th>Party Name</th>
										<th>Partner Name</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
								<?php
                                    $projectsData = getTableDataByTableName('party', '', 'id');
                                    ;
                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                            ?>
									<tr>
										<td><?php echo $data['party_id']; ?></td>
										<td><?php echo $data['partyname']; ?></td>
										<td><?php 
											$dataresult =   getDataRowByTableAndId('partner', $data['partner_id']);
											echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : '');
										?></td>
										
										
										
										
											<td>
													<span><a class="action-icons c-approve" href="issue-view.php?no=<?php echo $data['tranid']; ?>" title="View"><i class="fas fa-eye text-success"></i></a></span>
													
													
													<span><a class="action-icons c-approve" href="party_entry.php?id=<?php echo $data['id']; ?>" title="Edit"><i class="fas fa-edit text-info"></i></a></span>
													
													
											<span><a class="action-icons c-delete" href="#" title="delete"><i class="fa fa-trash text-danger"></i></a></span>
												</td>
												
												
									</tr>
									<?php
                                        }
                                    }
                                    ?>
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
<?php include 'footer.php' ?>