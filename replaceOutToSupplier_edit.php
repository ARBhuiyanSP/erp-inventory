<?php
include 'header.php';
if (isset($_GET['edit_id']) && !empty($_GET['edit_id'])) {
    $edit_id            = $_GET['edit_id'];
    $data               = getReplacesupplierOUTDataDetailsById($edit_id); // this function damage_process.php file ar vitor
    $replaceRecData          = $data['receiveData'];
    $replaceReDetailsData   = $data['receiveDetailsData'];
}
?>
<!-- Left Sidebar End -->
<!--<script src="https://code.jquery.com/jquery-1.12.4.js"></script>-->
<!--<link href="css/form-entry.css" rel="stylesheet">-->
<!-- Left Sidebar End -->
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="dashboard.php">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Receive Edit</li>
		
		
		 <li class="breadcrumb-item" style="text-align:right;">
								
								<?php  
									$warehouse_id = $_SESSION['logged']['warehouse_id'];								
									$dataresult =   getDataRowByTableAndId('inv_warehosueinfo', $warehouse_id);
								
								echo 'Warehouse: <b>'.(isset($dataresult) && !empty($dataresult) ? $dataresult->name : '').'</b>'; ?>
		</li>
		
		
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>
            Receive Edit Form</div>
        <div class="card-body">
            <!--here your code will go-->
            <div class="form-group">
                <form action="" method="post" name="update_receive" id="update_receive" enctype="multipart/form-data">
                    <div class="row" id="div1" style="">
                        <div class="col-xs-2">
                            <div class="form-group">
                                <label> Date</label>
                                <input type="text" autocomplete="off" name="ros_date" id="ros_date" class="form-control datepicker" value="<?php echo date('Y-m-d', strtotime($replaceRecData->ros_date)); ?>">
								
                            </div>
                        </div>
                       
					   <!--$replaceRecData->damage_date  ai replaceRecData recordset vitor sob column ar data achat -->
					   
					   
					   <div class="col-xs-2">
                            <div class="form-group">
                                <label>Replace Return No</label>
                                <input type="text" name="ros_id" id="ros_id" class="form-control" readonly="readonly" value="<?php echo $replaceRecData->ros_id; ?>">
                                <input type="hidden" name="damage_no" id="damage_no" value="<?php echo $replaceRecData->ros_id; ?>">
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
                                            <option value="<?php echo $data['id']; ?>" <?php if (isset($replaceRecData->supplier_id) && $replaceRecData->supplier_id == $data['code']) {
                                        echo 'selected';
                                    } ?>><?php echo $data['name']; ?></option>
                                            <?php
                                        }
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-2">
                            <div class="form-group">
                                <label for="id">Supplier ID</label>
                                <input type="text" name="supplier_id" id="supplier_id" class="form-control" value="<?php echo (isset($replaceRecData->supplier_id) && !empty($replaceRecData->supplier_id) ? $replaceRecData->supplier_id : ''); ?>">
                            </div>
                        </div>
						
						
						
						
						<input type="hidden" value="2" name="project_id" />
						
                        <div class="col-xs-2">
                            <div class="form-group">
                                <label>Warehouse</label>
								<?php 
									$warehouse_id		=	$_SESSION['logged']['warehouse_id'];
									$dataresult =   getDataRowByTableAndId('inv_warehosueinfo', $warehouse_id);	
								?>
								<input type="text" autocomplete="off" name="warehouse_id" id="warehouse_id" class="form-control datepicker" value="<?php echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : ''); ?>" readonly >
                            </div>
                        </div>
						
                    </div>
                    <div class="row" id="div1"  style="">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dynamic_field">
                                <thead>
                                <th>Material Name<span class="reqfield"> ***required</span></th>
                                <th>Material ID</th>
                                <th>Unit</th>
                                <th>Brand Name</th>
                                <th>Quantity<span class="reqfield"> ***required</span></th>
                                <th></th>
                                </thead>
                                <tbody>
                                    <?php
                                    $productSerial = 0;
                                    if (isset($replaceReDetailsData) && !empty($replaceReDetailsData)) {
                                        foreach ($replaceReDetailsData as $key => $editDatas) {
                                            $productSerial++;
                                            ?>
                                            <tr id="row<?php echo $key; ?>">
												<td>
													<select class="form-control select2" id="material_name<?php echo $editDatas->id; ?>" name="material_name[]" required onchange="getItemCodeByParam('<?php echo $editDatas->id; ?>', 'inv_material', 'material_id_code', 'material_id0', 'qty_unit');">
													<option value="">Select</option>
													<?php
													$projectsData = get_product_with_category();
													if (isset($projectsData) && !empty($projectsData)) {
													foreach ($projectsData as $data) {
													?>
													<option value="<?php echo $data['id']; ?>" <?php
																if (isset($editDatas->material_id) && $editDatas->material_id == $data['item_code']) {
																	echo 'selected';
																}
																?>><?php echo $data['material_name']; ?></option>
													<?php
													}
													}
													?>
													</select>
												</td>
												<td><input type="text" name="material_id[]" id="material_id0" class="form-control" value="<?php echo $editDatas->material_id ?>" readonly></td>
												<td>
													<select class="form-control" id="unit<?php echo $editDatas->id; ?>" name="unit[]" required>
													<option value="">Select</option>
													<?php
													$projectsData = getTableDataByTableName('inv_item_unit', '', 'unit_name');
													if (isset($projectsData) && !empty($projectsData)) {
													foreach ($projectsData as $data) {
													?>
													<option value="<?php echo $data['id']; ?>" <?php
																if (isset($editDatas->unit) && $editDatas->unit == $data['id']) {
																	echo 'selected';
																}
																?>><?php echo $data['unit_name']; ?></option>
													<?php
													}
													}
													?>
													</select>
												</td>
												<td><input type="text" name="brand[]" id="brand0" class="form-control" value="brand"</td>
												<td><input type="text" name="quantity[]" id="quantity0"  class="form-control" value="<?php echo $editDatas->return_qty ?>" ></td>
                                            <?php if ($key == 0) { ?>
                                                    <td><button type="button" name="add" id="add" class="btn" style="background-color:#2e3192;color:#ffffff;">+</button></td>
                                            <?php } else { ?>
                                                    <td><button type="button" name="remove" id="<?php echo $key; ?>" class="btn btn_remove" style="background-color:#f26522;color:#ffffff;">X</button></td>
                                            <?php } ?>
                                            </tr>
												<?php
											}//End of foreach
										} else {
											?>
                                        <tr>
                                            <td>
                                                <select class="form-control select2" id="material_name" name="material_name[]" required onchange="getItemCodeByParam(this.value, 'inv_material', 'material_id_code', 'material_id0', 'qty_unit');">
                                                    <option value="">Select</option>
                                                    <?php
                                                    $projectsData = get_product_with_category();
                                                    if (isset($projectsData) && !empty($projectsData)) {
                                                        foreach ($projectsData as $data) {
                                                            ?>
                                                            <option value="<?php echo $data['id']; ?>"><?php echo $data['material_name']; ?></option>
            <?php
        }
    }
    ?>
                                                </select>
                                            </td>
                                            <td><input type="text" name="material_id[]" id="material_id0" class="form-control"></td>
                                            <td>
                                                <!--<input type="text" name="unit[]" id="unit0" class="form-control">-->
                                                <select class="form-control" id="unit0" name="unit[]" required>
                                                    <option value="">Select</option>
                                                    <?php
                                                    $projectsData = getTableDataByTableName('inv_item_unit', '', 'unit_name');
                                                    if (isset($projectsData) && !empty($projectsData)) {
                                                        foreach ($projectsData as $data) {
                                                            ?>
                                                            <option value="<?php echo $data['id']; ?>"><?php echo $data['unit_name']; ?></option>
            <?php
        }
    }
    ?>
                                                </select>
                                            </td>
                                            <td><input type="text" name="brand[]" id="brand0" class="form-control"></td>
                                            <td><input type="text" name="quantity[]" id="quantity0" onchange="sum(0)" class="form-control"></td>
                                            <td><button type="button" name="add" id="add" class="btn" style="background-color:#2e3192;color:#ffffff;">+</button></td>
                                        </tr>
<?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="">
                       
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label>Remarks</label>
                                <textarea id="remarks" name="remarks" class="form-control"><?php
								if (isset($replaceRecData->remarks)) {
									echo $replaceRecData->remarks;
								}
								?></textarea>
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <div class="form-group">
                                <div class="modal-footer">
								
								
								
								
								
                                    <input type="hidden" name="edit_id" value="<?php echo $replaceRecData->id; ?>">
									
									
									
									
               <input type="submit" name="replaceOutToSupplier_update_submit" id="replaceOutToSupplier_update_submit" class="btn btn-block" style="background-color:#f26522;color:#ffffff;" value="Update" />
                                </div>    
                            </div>
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
    var i = <?php echo $productSerial; ?>;
    $(document).ready(function () {
        $('#add').click(function () {
            i++;
            $('#dynamic_field').append('<tr id="row' + i + '"><td><select class="form-control select2" id="material_name' + i + '" name="material_name[]' + i + '" required onchange="getAppendItemCodeByParam(' + i + ",'inv_material'" + ",'material_id_code'" + ",'material_id'," + "'qty_unit'" + ')"><option value="">Select</option><?php
$projectsData = get_product_with_category();
if (isset($projectsData) && !empty($projectsData)) {
    foreach ($projectsData as $data) {
        ?><option value="<?php echo $data['id']; ?>"><?php echo $data['material_name']; ?></option><?php }
}
?></select></td><td><input type="text" name="material_id[]" id="material_id' + i + '" class="form-control"></td><td><select class="form-control select2" id="unit' + i + '" name="unit[]' + i + '" required onchange="getAppendItemCodeByParam(' + i + ",'inv_material'" + ",'material_id_code'" + ",'material_id''" + ",'qty_unit'" + ')"><option value="">Select</option><?php
$projectsData = getTableDataByTableName('inv_item_unit', '', 'unit_name');
if (isset($projectsData) && !empty($projectsData)) {
    foreach ($projectsData as $data) {
        ?><option value="<?php echo $data['id']; ?>"><?php echo $data['unit_name']; ?></option><?php }
}
?></select></td><td><input type="text" name="brand[]" id="brand' + i + '" class="form-control"></td><td><input type="text" name="quantity[]" id="quantity' + i + '" onchange="sum(0)" class="form-control"></td><td><button type="button" name="remove" id="' + i + '" class="btn btn_remove" style="background-color:#f26522;color:#ffffff;">X</button></td></tr>');
            $('#quantity' + i + ', #unit_price' + i).change(function () {
                sum(i)
            });
        });

        $(document).on('click', '.btn_remove', function () {
            var button_id = $(this).attr("id");
            $('#row' + button_id + '').remove();
            sum_total();
        });

        $('#submit').click(function () {
            $.ajax({
                url: "name.php",
                method: "POST",
                data: $('#add_name').serialize(),
                success: function (data)
                {
                    alert(data);
                    $('#add_name')[0].reset();
                }
            });
        });

    });

    $(document).ready(function () {
        //this calculates values automatically 
        sum(0);
    });

    function sum(i) {
        var quantity1 = document.getElementById('quantity' + i).value;
        var unit_price1 = document.getElementById('unit_price' + i).value;
        var result = parseFloat(quantity1) * parseFloat(unit_price1);
        if (!isNaN(result)) {
            document.getElementById('sum' + i).value = result;
        }
        sum_total();
    }
    function sum_total() {
        var newTot = 0;
        for (var a = 0; a <= i; a++) {
            aVal = $('#sum' + a);
            if (aVal && aVal.length) {
                newTot += aVal[0].value ? parseFloat(aVal[0].value) : 0;
            }
        }
        document.getElementById('allsum').value = newTot.toFixed(2);
    }
</script>
<script>
    $(function () {
        $("#mrr_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
</script>
<script>
    $(function () {
        $("#challan_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
</script>
<script>
    $(function () {
        $("#requisition_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
</script>
<?php include 'footer.php' ?>