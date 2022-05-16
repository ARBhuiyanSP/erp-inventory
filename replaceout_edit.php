<?php
include 'header.php';
if (isset($_GET['edit_id']) && !empty($_GET['edit_id'])) {
    $edit_id            = $_GET['edit_id'];
    $data               = getReplaceOUTDataDetailsById($edit_id); // this function damage_process.php file ar vitor
    $replaceOUTData          = $data['receiveData'];
    $replaceOUTDetailsData   = $data['receiveDetailsData'];
}
?>

<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
             <a href="movementdamage_report.php">Report</a>
        </li>
        <li class="breadcrumb-item active">Replace Return Edit</li>
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>
            Replace Return Edit Form</div>
        <div class="card-body">
            <!--here your code will go-->
            <div class="form-group">
                <form action="" method="post" name="add_damageout" id="damageout_entry_form" onsubmit="showFormIsProcessing('damageout_entry_form');">
                    <div class="row" id="div1" style="">
                        <div class="col-xs-2">
                            <div class="form-group">
                                <label> Date</label>
                               <input type="text" autocomplete="off" name="damageout_date" id="damageout_date" class="form-control datepicker" value="<?php echo date('Y-m-d', strtotime($replaceOUTData->damageout_date)); ?>">
                            </div>
                        </div>
                       
					   
					   
					      <div class="col-xs-2">
                            <div class="form-group">
                                <label>Replace return No</label>
                                <input type="text" name="damageout_id" id="damageout_id" class="form-control" readonly="readonly" value="<?php echo $replaceOUTData->damageout_id; ?>">
                                <input type="hidden" name="damage_no" id="damage_no" value="<?php echo $replaceOUTData->damageout_id; ?>">
                            </div>
                        </div>
						
						
						
						
						
							 <div class="col-xs-2">
                            <div class="form-group">
                                <label>Partner</label>
                                <select class="form-control" id="partner_id" name="partner_id" onchange="getPartyByPartner(this.value);" required >
                                    <?php
                                    $projectsData = getTableDataByTableName('partner');;
                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                    ?>
                                      
                                            <option value="<?php echo $data['id']; ?>" <?php if (isset($replaceOUTData->partner_id) && $replaceOUTData->partner_id == $data['id']) {
                                                                                            echo 'selected';
                                                                                        } ?>><?php echo $data['name']; ?></option>
                                    <?php
                                        }
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
						
						
						
						
						
						        <div class="col-xs-3">
                            <div class="form-group">
                                <label>Party</label>
                                <select class="form-control" id="main_sub_item_id" name="partyname" onchange="getItemCodeByParam(this.value, 'party', 'party_id', 'party_id');">
                                    <?php
                                    $projectsData = getTableDataByTableName('party');;
                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                    ?>
                                           
                                            <option value="<?php echo $data['id']; ?>" <?php if (isset($replaceOUTData->party_id) && $replaceOUTData->party_id == $data['party_id']) {
                                                                                            echo 'selected';
                                                                                        } ?>><?php echo $data['partyname']; ?></option>
                                    <?php
                                        }
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>


                        <div class="col-xs-1">
                            <div class="form-group">
                                <label for="id">party ID</label>
                                <input type="text" name="party_id" id="party_id" class="form-control"  value="<?php echo (isset($replaceOUTData) && !empty($replaceOUTData) ? $replaceOUTData->party_id : ''); ?>">
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
                                    if (isset($replaceOUTDetailsData) && !empty($replaceOUTDetailsData)) {
                                        foreach ($replaceOUTDetailsData as $key => $editDatas) {
                                            $productSerial++;
                                    ?>
                                            <tr id="row<?php echo $editDatas->id; ?>">
											
											
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
									<?php }} ?>
									
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label>Remarks</label>
                                <textarea id="remarks" name="remarks" class="form-control"><?php
                                                                                    if (isset($replaceOUTData->remarks)) {
                                                                                        echo $replaceOUTData->remarks;
                                                                                    }
                                                                                    ?></textarea>
                            </div>
                        </div>
						
							<input type="hidden" name="edit_id" value="<?php echo $edit_id ?>" />
							
							
                        <div class="col-xs-12">
                            <div class="form-group">
                                <div class="modal-footer">
                                    <input type="submit" name="damageout_update_submit" id="damageout_update_submit" class="btn btn-block" style="background-color:#007BFF;color:#ffffff;" value="UPDATE" />
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
    $(document).ready(function() {
        $('#add').click(function() {
            i++;
            $('#dynamic_field').append('<tr id="row' + i + '"><td><select class="form-control select2" id="material_name' + i + '" name="material_name[]' + i + '" required onchange="getAppendItemCodeByParam(' + i + ",'inv_material'," + "'material_id_code'," + "'material_id'," + "'qty_unit'" + ')"><option value="">Select</option><?php
                                                $projectsData = get_product_with_category();
                                                if (isset($projectsData) && !empty($projectsData)) {
                                                    foreach ($projectsData as $data) {
                                                        ?><option value="<?php echo $data['id']; ?>"><?php echo $data['material_name']; ?></option><?php }
                                                }
                                                ?></select></td><td><input type="text" name="material_id[]" id="material_id' + i + '" class="form-control" readonly></td><td><select class="form-control select2" id="unit' + i + '" name="unit[]' + i + '" required onchange="getAppendItemCodeByParam(' + i + ",'inv_material'" + ",'material_id_code'" + ",'material_id''" + ",'qty_unit'" + ')"><option value="">Select</option><?php
                                                $projectsData = getTableDataByTableName('inv_item_unit', '', 'unit_name');
                                                if (isset($projectsData) && !empty($projectsData)) {
                                                    foreach ($projectsData as $data) {
                                                        ?><option value="<?php echo $data['id']; ?>"><?php echo $data['unit_name']; ?></option><?php }
                                                }
                                                ?></select></td><td><select class="form-control select2" id="brand' + i + '" name="brand[]' + i + '"><option value="">Select</option><?php
                                                $projectsData = getmaterialbrand();
                                                if (isset($projectsData) && !empty($projectsData)) {
                                                    foreach ($projectsData as $data) {
                                                        ?><option value="<?php echo $data['brand_name']; ?>"><?php echo $data['brand_name']; ?></option><?php }
                                                }
                                                ?></select></td><td><input type="text" name="quantity[]" id="quantity' + i + '" onchange="sum(0)" class="form-control" required></td><td><button type="button" name="remove" id="' + i + '" class="btn btn_remove" style="background-color:#f26522;color:#ffffff;">X</button></td></tr>');
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
</script>
<script>
    $(function () {
        $("#damageout_date").datepicker({
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