<?php
include 'header.php';
if (isset($_GET['edit_id']) && !empty($_GET['edit_id'])) {
    $edit_id            = $_GET['edit_id'];
    $data               = getwarehousetransferDataDetailsById($edit_id); // this function transfer_process.php file ar vitor
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
        <li class="breadcrumb-item active">warehouse transfer Edit</li>
		
		
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
            warehouse transfer Edit Form</div>
        <div class="card-body">
            <!--here your code will go-->
            <div class="form-group">
                <form action="" method="post" name="update_receive" id="update_receive" enctype="multipart/form-data">
                    <div class="row" id="div1" style="">
					
					
					
					
                        <div class="col-xs-2">
                            <div class="form-group">
                                <label> Transfer Date</label>
                         <input type="text" autocomplete="off" name="transfer_date" id="transfer_date" class="form-control datepicker" value="<?php echo date('Y-m-d', strtotime($replaceRecData->transfer_date)); ?>">
								
                            </div>
                        </div>
                       
					   <!--$replaceRecData->damage_date  ai replaceRecData recordset vitor sob column ar data achat -->
					   
					   
					   <div class="col-xs-2">
                            <div class="form-group">
                                <label>Transfer No</label>
                                <input type="text" name="transfer_id" id="transfer_id" class="form-control" readonly="readonly" value="<?php echo $replaceRecData->transfer_id; ?>">
                            </div>
                        </div>
						
						
						
						
						
						
						
						
						
						
						
						
						<input type="hidden" value="2" name="project_id" />
						
						
						
						<?php if($_SESSION['logged']['user_type'] == 'whm') { ?>
						<div class="col-xs-3">
							<div class="form-group">
									<label>From Warehouse</label>
									
									<?php  
										$warehouse_id = $_SESSION['logged']['warehouse_id'];								
										$dataresult =   getDataRowByTableAndId('inv_warehosueinfo', $warehouse_id);
									?>
									<input type="text" class="form-control" readonly="readonly" value="<?php echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : ''); ?>">
									
									<input type="hidden" name="from_warehouse" id="from_warehouse" class="form-control" readonly="readonly" value="<?php echo $_SESSION['logged']['warehouse_id']; ?>">
									
							</div>
						</div>
						<?php }else { ?>
						
						<div class="col-xs-3">
							<div class="form-group">
								<label for="id">From Warehouse </label>
								<select class="form-control" id="from_warehouse" name="from_warehouse" required>
									<option value="">Select</option>
									<?php
									$projectsData = getTableDataByTableName('inv_warehosueinfo');

									if (isset($projectsData) && !empty($projectsData)) {
										foreach ($projectsData as $data) {
											?>
									<option value="<?php echo $data['id']; ?>" <?php if (isset($replaceRecData->from_warehouse) && $replaceRecData->from_warehouse == $data['id']) {
                                        echo 'selected';
                                    } ?>><?php echo $data['name']; ?></option>
                                            <?php
                                        }
                                    }
                                    ?>
								</select>
							</div>
						</div>
						<?php } ?>
						
						<!-- admin-->
						
						
						<div class="col-xs-3">
							<div class="form-group">
								<label for="id">To Warehouse </label>
								<select class="form-control" id="to_warehouse" name="to_warehouse" required>
									<option value="">Select</option>
									<?php
									$projectsData = getTableDataByTableName('inv_warehosueinfo');

									if (isset($projectsData) && !empty($projectsData)) {
										foreach ($projectsData as $data) {
											?>
											<option value="<?php echo $data['id']; ?>" <?php if (isset($replaceRecData->to_warehouse) && $replaceRecData->to_warehouse == $data['id']) {
                                        echo 'selected';
                                    } ?>><?php echo $data['name']; ?></option>
                                            <?php
                                        }
                                    }
                                    ?>
								</select>
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
							<th>In Stock</th>
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
											
											
										

										
										 <!-- First start Material name/ id ( data show)-->
											
									  <td>
                                                    <select class="form-control select2" id="material_name<?php echo $key; ?>" name="material_name[]" required onchange="getAppendItemCodeByParam('<?php echo $key; ?>', 'inv_material', 'material_id_code', 'material_id', 'unit_id');">
                                                        <option value="">Select</option>
                                                        <?php
                                                        $projectsData = get_product_with_category();
                                                        if (isset($projectsData) && !empty($projectsData)) {
                                                            foreach ($projectsData as $data) {
                                                                ?>
                                                                <option value="<?php echo $data['id']; ?>"<?php if (isset($editDatas->material_id) && $editDatas->material_id == $data['item_code']) {
                                                    echo 'selected';
                                                } ?>><?php echo $data['material_name']; ?></option>
                                                                <?php
                                                            }
                                                        }
                                                        ?>
                                                    </select>
                                                </td>
												
                                                <td><input type="text" name="material_id[]" id="material_id<?php echo $key; ?>" class="form-control" value="<?php echo (isset($editDatas->material_id) && !empty($editDatas->material_id) ? $editDatas->material_id : ''); ?>"></td>
												
												 <!-- First end Material name/ id ( data show)-->
												
												
												<!-- unit start( data show)-->
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
												<!-- unit end( data show)-->
												
<td><input type="text" name="brand[]" id="brand0" class="form-control" value="brand"</td>
												
<td> <input type="text" name="material_total_stock[]" id="material_total_stock0" class="form-control" readonly> </td>
                                               
<td><input type="text" name="quantity[]" id="quantity0"  class="form-control" value="<?php echo $editDatas->transfer_qty ?>" ></td>
												


												
												
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
										
										
										 <!-- 2nd start Material name/ id -->
										
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
											
							 <!-- 2nd end Material name/ id -->				
											
											
											<!-- unit start-->
                                            <td>
                                                
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
											<!-- unit close-->
											
                                            <td><input type="text" name="brand[]" id="brand0" class="form-control"></td>
<td><input type="text" name="material_total_stock[]" id="material_total_stock0" class="form-control" readonly></td>
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
									
									
									
						<!-- call transfer_process.php file-->		
               <input type="submit" name="transfer_update_submit" id="transfer_update_submit" class="btn btn-block" style="background-color:#f26522;color:#ffffff;" value="Update" />
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
<!-- /.container-fluid material id/name -->  
<script>
    var i = <?php echo $productSerial; ?>;
    $(document).ready(function () {
        $('#add').click(function () {
            i++;
            $('#dynamic_field').append('<tr id="row' + i + '"><td><select class="form-control select2" id="material_name' + i + '" name="material_name[]' + i + '" required onchange="getAppendItemCodeByParam(' + i + ",'inv_material'," + "'material_id_code'," + "'material_id'," + "'qty_unit'" + ')"><option value="">Select</option><?php
                                    $projectsData = get_product_with_category();
                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                            ?><option value="<?php echo $data['id']; ?>"><?php echo $data['material_name']; ?></option><?php
                                        }
                                    }
                                    ?></select></td><td><input type="text" name="material_id[]" id="material_id' + i + '" class="form-control"></td><td><select class="form-control select2" id="unit' + i + '" name="unit[]' + i + '" required onchange="getAppendItemCodeByParam(' + i + ",'inv_material'" + ",'material_id_code'" + ",'material_id''" + ",'qty_unit'" + ')"><option value="">Select</option><?php
$projectsData = getTableDataByTableName('inv_item_unit', '', 'unit_name');
if (isset($projectsData) && !empty($projectsData)) {
    foreach ($projectsData as $data) {
        ?><option value="<?php echo $data['id']; ?>"><?php echo $data['unit_name']; ?></option><?php }
}
?></select></td><td><input type="text" name="brand[]" id="brand' + i + '" class="form-control"></td><td><input type="text" name="material_total_stock[]" id="material_total_stock' + i + '" class="form-control" readonly></td><td><input type="text" name="quantity[]" id="quantity' + i + '" onchange="sum(0)" class="form-control"></td><td><button type="button" name="remove" id="' + i + '" class="btn btn_remove" style="background-color:#f26522;color:#ffffff;">X</button></td></tr>');
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
        $("#rrs_date").datepicker({
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