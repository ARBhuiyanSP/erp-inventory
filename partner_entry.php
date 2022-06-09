<?php 
include 'header.php';

if (isset($_GET['id']) && $_GET['id'] != '') { 
	//echo $row['education'];
	$id=	$_GET['id'];
	
	
	$table 	= 'partner';
	$sqledit = "SELECT * FROM $table WHERE `id`='$id'";
	$resultedit = $conn->query($sqledit);
	$rowedit = mysqli_fetch_array($resultedit);
	$button_name = 'Update';
	$button_post_name = 'partner_update_submit';
}
else{
	$button_name = 'Save';
	$button_post_name = 'partner_submit';
}
?>
<!-- Left Sidebar End -->
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="dashboard.php">Dashboard</a>
        </li>
        <li class="breadcrumb-item active"> Partner Entry</li>
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i> Partner Entry Form
		</div>
        <div class="card-body">
            <!--here your code will go-->
            <div class="form-group">
                <form action="" method="post" name="add_name" id="add_name">
                    <div class="row" id="div1" style="">
					
					
					
	>
                        </div>
						
						<div class="col-xs-3">
                            <div class="form-group">
                                <label>Partner ID</label>
								<?php
								
									if(isset($rowedit['partner_id']) && !empty($rowedit['partner_id'])){
										$partner_id 	=$rowedit['partner_id'];
									}else{
								$partner_id 	=	getDefaultCategoryCode('partner', 'partner_id', '03d', 'P01', 'PID-');
									}
                                   ?>
                                <input type="text" name="partner_id" id="partner_id" value="<?php echo $partner_id; ?>" class="form-control" readonly="readonly">
                            </div>
</div>

						
						
						<div class="col-xs-3">
                            <div class="form-group">
                                <label>Partner Name</label>
                                <input type="text" name="name"  value="<?php if (isset($rowedit['name']) && $rowedit['name'] != '') { echo $rowedit['name']; }?>" id="name" class="form-control">
                            </div>
                        </div>
						
						
						
											<!-- <div class="col-xs-3">
                            <div class="form-group">
                                <label>Project Name</label>
								<select class="form-control" id="project_id" name="project_id" required>
                                    <option value="">Select</option>
                                    <?php
                                    $projectsData = getTableDataByTableName('projects');
                                    ;
                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                            ?>
                                            <option value="<?php echo $data['id']; ?>"><?php echo $data['name']; ?></option>
                                            <?php
                                        }
                                    }
                                    ?>
                                </select>
                            </div>
                        </div> 
						
						
						
						<div class="col-xs-3">
                            <div class="form-group">
                                <label>Warehouse Name</label>
								<select class="form-control" id="warehouse_id" name="warehouse_id" required>
                                    <option value="">Select</option>
                                    <?php
                                    $projectsData = getTableDataByTableName('inv_warehosueinfo');
                                    ;
                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                            ?>
                                            <option value="<?php echo $data['id']; ?>"><?php echo $data['name']; ?></option>
                                            <?php
                                        }
                                    }
                                    ?>
                                </select>
                            </div>
                        </div> -->
						
						
						
						<div class="col-xs-12">
                            <div class="form-group">
							
							
							<input type="hidden" name="edit_id" value="<?php echo (isset($rowedit['id']) && !empty($rowedit['id']) ? $rowedit['id']: ""); ?>">
							
							
                                <input type="submit" name="partner_submit" id="submit" class="btn btn-block" style="background-color:#007BFF;color:#ffffff;" value="Save" />   
                            </div>
                        </div>
                    </div>
					<div class="row">
						<div class="col-xs-12">
							<table id="dataTable" class="table table-bordered table-striped table-hover">
								<thead>
									<tr>
										<th>Partner ID</th>
										<th>Partner Name</th>
										<
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
								<?php
                                    $projectsData = getTableDataByTableName('partner');
                                    ;
                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                            ?>
									<tr>
										<td><?php echo $data['partner_id']; ?></td>
										<td><?php echo $data['name']; ?></td>
										
										
										<!-- <td><?php 
											$dataresult =   getDataRowByTableAndId('project', $data['project_id']);
											echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : '');
											?></td> 
											
										 <td><?php 
											$dataresult =   getDataRowByTableAndId('inv_warehosueinfo', $data['warehouse_id']);
											echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : '');
											?></td> -->
											
											
										<td>
												
													<span><a class="action-icons c-approve" href="partner_entry.php?id=<?php echo $data['id']; ?>" title="Edit"><i class="fas fa-edit text-info"></i></a></span>
													
													
										
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