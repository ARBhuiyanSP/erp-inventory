<?php 
include 'header.php';

if (isset($_GET['id']) && $_GET['id'] != '') { 
	//echo $row['education'];
	$id=	$_GET['id'];
	
	
	$table 	= 'inv_item_unit';
	$sqledit = "SELECT * FROM $table WHERE `id`='$id'";
	$resultedit = $conn->query($sqledit);
	$rowedit = mysqli_fetch_array($resultedit);
	$button_name = 'Update';
	$button_post_name = 'unit_update_submit';
}
else{
	$button_name = 'Save';
	$button_post_name = 'unit_submit';
}
?>
<!-- Left Sidebar End -->
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="dashboard.php">Dashboard</a>
        </li>
        <li class="breadcrumb-item active"> Unit Entry</li>
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i> Unit Entry Form
		</div>
        <div class="card-body">
            <!--here your code will go-->
            <div class="form-group">
                <form action="" method="post" name="add_name" id="unit_entry_form" onsubmit="showFormIsProcessing('unit_entry_form');">
                    <div class="row" id="div1" style="">
						<div class="col-xs-4">
                            <div class="form-group">
                                <label>Unit Name</label>
                                <input type="text" name="unit_name" value="<?php if (isset($rowedit['unit_name']) && $rowedit['unit_name'] != '') { echo $rowedit['unit_name']; }?>" id="name" id="name" class="form-control" required >
                            </div>
                        </div>
						<div class="col-xs-4">
                            <div class="form-group">
							<label>.</label>
										<input type="hidden" name="edit_id" value="<?php echo (isset($rowedit['id']) && !empty($rowedit['id']) ? $rowedit['id']: ""); ?>">
							
                                <input type="submit" name="unit_submit" id="submit" class="btn btn-block" style="background-color:#007BFF;color:#ffffff;" value="Save" />   
                            </div>
                        </div>
                    </div>
					<div class="row">
						<div class="col-xs-12">
							<table id="dataTable" class="table table-bordered table-striped table-hover">
								<thead>
									<tr>
										<th>Unit Name</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
								<?php
                                    $projectsData = getTableDataByTableName('inv_item_unit');
                                    ;
                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                            ?>
									<tr>
										<td><?php echo $data['unit_name']; ?></td>
										<td>

													<span><a class="action-icons c-approve" href="unit_entry.php?id=<?php echo $data['id']; ?>" title="Edit"><i class="fas fa-edit text-info"></i></a></span>
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