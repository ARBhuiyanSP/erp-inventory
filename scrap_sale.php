<?php include 'header.php' ?>
<!-- Left Sidebar End -->

<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="scrap_report.php">Report</a>
        </li>
        <li class="breadcrumb-item active">Scrap Entry</li>
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>
            Scrap Entry Form</div>
        <div class="card-body">
            <!--here your code will go-->
            <div class="form-group">
                <form action="" method="post" name="add_scrap" id="scrap_entry_form" enctype="multipart/form-data" onsubmit="showFormIsProcessing('scrap_entry_form');">
                    <div class="row" id="div1" style="">
                        <div class="col-xs-2">
                            <div class="form-group">
                                <label>Date</label>
                                <input type="text" autocomplete="off" name="ss_date" id="ss_date" class="form-control datepicker" value="<?php echo date('Y-m-d'); ?>">
                            </div>
                        </div>
                        <div class="col-xs-2">
                            <div class="form-group">
                                <label>SS No</label>
                                <?php
                                if ($_SESSION['logged']['user_type'] == 'whm') {
                                    $warehouse_id = $_SESSION['logged']['warehouse_id'];
                                    $sql = "SELECT * FROM inv_warehosueinfo WHERE `id`='$warehouse_id'";
                                    $result = mysqli_query($conn, $sql);
                                    $row = mysqli_fetch_array($result);
                                    $short_name = $row['short_name'];
                                    $ssCode = 'SS-' . $short_name;
                                } else {
                                    $ssCode = 'SS-CW';
                                }
                                ?>
                                <input type="text" name="ss_id" id="ss_id" class="form-control" value="<?php echo getDefaultCategoryCodeByWarehouse('inv_scrap', 'ss_id', '03d', '001', $ssCode) ?>" readonly>
                                <input type="hidden" name="ss_no" id="ss_no" value="<?php echo getDefaultCategoryCodeByWarehouse('inv_scrap', 'ss_id', '03d', '001', $ssCode) ?>">
                            </div>
                        </div>
						
						
						
						
						   <div class="col-xs-3">
                            <div class="form-group">
                                <label>Partner Name</label>
                                <select class="form-control" id="partner_id" name="partner_id" readonly >
                                    <?php
                                    $projectsData = getTableDataByTableName('partner');
                                    ;
                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                            ?>
                                            <option value="<?php echo $data['partner_id']; ?>"><?php echo $data['name']; ?></option>
                                            <?php
                                        }
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
						
						
						
						
						
                        <div class="col-xs-2">
                            <div class="form-group">
                                <label>Project</label>
                                <select class="form-control" id="project_id" name="project_id" readonly >
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
                                <label>Warehouse</label>

                                <?php
                                $warehouse_id = $_SESSION['logged']['warehouse_id'];
                                $dataresult = getDataRowByTableAndId('inv_warehosueinfo', $warehouse_id);
                                ?>
                                <input type="text" class="form-control" readonly="readonly" value="<?php echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : ''); ?>">

                                <input type="hidden" name="warehouse_id" id="warehouse_id" class="form-control" readonly="readonly" value="<?php echo $_SESSION['logged']['warehouse_id']; ?>">

                            </div>

                            <!-- <div class="form-group">
    <label>Warehouse</label>
                                    
                            <?php
                            if ($_SESSION['logged']['user_type'] == 'whm') {
                                $warehouse_id = $_SESSION['logged']['warehouse_id'];
                                $dataresult = getDataRowByTableAndId('inv_warehosueinfo', $warehouse_id);
                                ?>
                                        <input type="text" class="form-control" readonly="readonly" value="<?php echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : ''); ?>">
                                        
                                        <input type="hidden" name="warehouse_id" id="warehouse_id" class="form-control" readonly="readonly" value="<?php echo $_SESSION['logged']['warehouse_id']; ?>">
<?php } else { ?>
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
<?php } ?>
</div> -->
                        </div>


                        <!------------test-------------
                        <div class="form-group">
    <label class="control-label col-sm-5" for="parent_code">Package:</label>
    <div class="col-sm-7">
        <select class="form-control" id="main_item_id" name="parent_item_id" onchange="getBuildingByPackage(this.value);">
            <option value="">Select</option>
                        <?php
                        $parentCats = getTableDataByTableName('packages', '', 'name');
                        if (isset($parentCats) && !empty($parentCats)) {
                            foreach ($parentCats as $pcat) {
                                ?>
                            <option value="<?php echo $pcat['id'] ?>"><?php echo $pcat['name'] ?></option>
                            <?php }
                        }
                        ?>
        </select>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-5" for="parent_code">Building:</label>
    <div class="col-sm-7">
        <select class="form-control" id="building_id" name="sub_item_id">
            <option value="">Select</option>
                        <?php
                        $parentCats = getTableDataByTableName('buildings', '', 'building_id');
                        if (isset($parentCats) && !empty($parentCats)) {
                            foreach ($parentCats as $pcat) {
                                ?>
                            <option value="<?php echo $pcat['id'] ?>"><?php echo $pcat['building_id'] ?></option>
    <?php }
}
?>
        </select>
    </div>
</div>
                        ------------test------------->



                    </div>
                    <div class="row" id="div1"  style="">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dynamic_field">
                                <thead>
                                <th width="25%">Material Name<span class="reqfield"> ***required</span></th>
                                <th width="10%">Material ID</th>
                                <th width="10%">Unit</th>
                                <th width="10%">Brand</th>
                              
								
								
                                <th width="10%">Qty<span class="reqfield"> ***required</span></th>
								<th width="15%">Unit Price</th>
                                <th width="15%">Amount</th>
								
								
                                <th width="5%"></th>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <select class="form-control material_select_2" id="material_name" name="material_name[]" required onchange="getItemCodeByParam(this.value, 'inv_material', 'material_id_code', 'material_id0', 'qty_unit');">
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
                                        <td><input type="text" name="material_id[]" id="material_id0" class="form-control" required readonly></td>
                                        <td>
                                            <select class="form-control" id="unit0" name="unit[]" required readonly>
                                                <option value="">Unit</option>
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
                                        <td>
                                            <select class="form-control" id="brand0" name="brand[]" readonly>
                                                <option value="">Brand</option>
                                                <?php
                                                $brandData = getmaterialbrand();
                                                if (isset($brandData) && !empty($brandData)) {
                                                    foreach ($brandData as $data) {
                                                        ?>
                                                        <option value="<?php echo $data['brand_name']; ?>"><?php echo $data['brand_name']; ?></option>
                                                        <?php
                                                    }
                                                }
                                                ?>
                                            </select>
                                        </td>
										
										
										
										
										
                                      
										
										
										
										
										
										<!-- Comments: text QTY and Unit Price and Total amount -->
										
                      <td><input type="text" name="quantity[]" id="quantity0" onkeyup="check_stock_quantity_validation(0)" class="form-control common_issue_quantity" required></td>
					  <td><input type="text" name="unit_price[]" id="unit_price0" onchange="sum(0)" class="form-control" required></td>
					  <td><input type="text" name="amount[]" id="sum0" class="form-control"></td>
									  
                          <td><button type="button" name="add" id="add" class="btn" style="background-color:#007BFF;color:#ffffff;">+</button></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="">
						<div class="col-sm-8">
							<div class="form-group">
                                <label>Remarks</label>
                                <textarea id="remarks" name="remarks" class="form-control" rows="6"></textarea>
                            </div>
						</div>
						<div class="col-sm-4">
							<table class="table table-bordered">
								<tr>
									<td>Total Amount</td>
									<td><input type="text" class="form-control" maxlength="10" name="total_amount" id="allsum" readonly /></td>
								</tr>
								<tr>
									<td>Paid Amount</td>
									<td><input type="text" class="form-control" name="paid_amount" id="paid" class="form-control"></td>
								</tr>
								<tr>
									<td>Due Amount</td>
									<td><input type="text" class="form-control" name="due_amount" id="due" class="form-control"></td>
								</tr>
							</table>
						</div>
                    </div>
					
					
				<!-- Comments: for scan image code >	
                <!--    <div class="row" style="">
                        <div class="col-xs-6">
                            <div class="form-group">
                                <input type="file" accept="image/*"  name="file" id="picture">
                                <p id="error1" style="display:none; color:#FF0000;">
                                    Invalid Image Format! Image Format Must Be JPG, JPEG, PNG or GIF.
                                </p>
                                <p id="error2" style="display:none; color:#FF0000;">
                                    Maximum File Size Limit is 500KB.
                                </p>
                                <script>
                                    var loadFile = function (event) {
                                        var output = document.getElementById('output');
                                        output.src = URL.createObjectURL(event.target.files[0]);
                                        output.onload = function () {
                                            URL.revokeObjectURL(output.src) // free memory
                                        }
                                    };
                                </script>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div style="border:1px solid gray;height:150px;width:150px;">
                                <img id="output" height="150px" width="150px"/>
                            </div>
                        </div>
                    </div> -->
					
					
					
					
                    <div class="row" style="">
                        <div class="col-xs-12">
                            
                        </div>
                        <div class="col-xs-12">
                            <div class="form-group">
                                <div class="modal-footer">
                                    <input type="submit" name="scrap_submit" id="scrap_submit" class="btn btn-block" style="background-color:#007BFF;color:#ffffff;" value="Save" />
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



<!-- Comments: + addd korar code  -->


<script>
    var i = 0;
    $(document).ready(function () {
        $('#add').click(function () {
            i++;
            $('#dynamic_field').append('<tr id="row' + i + '"><td><select class="form-control material_select_2" id="material_name' + i + '" name="material_name[]' + i + '" required onchange="getAppendItemCodeByParam(' + i + ",'inv_material'," + "'material_id_code'," + "'material_id'," + "'qty_unit'" + ')"><option value="">Select</option><?php
                                    $projectsData = get_product_with_category();
                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                            ?><option value="<?php echo $data['id']; ?>"><?php echo $data['material_name']; ?></option><?php
                                        }
                                    }
                                    ?></select></td><td><input type="text" name="material_id[]" id="material_id' + i + '" class="form-control" required readonly></td><td><select class="form-control select2" id="unit' + i + '" name="unit[]' + i + '" required onchange="getAppendItemCodeByParam(' + i + ",'inv_material'" + ",'material_id_code'" + ",'material_id''" + ",'qty_unit'" + ')"><option value="">Select</option><?php
                                    $projectsData = getTableDataByTableName('inv_item_unit', '', 'unit_name');
                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                            ?><option value="<?php echo $data['id']; ?>"><?php echo $data['unit_name']; ?></option><?php
                                        }
                                    }
                                    ?></select></td><td><select class="form-control select2" id="brand' + i + '" name="brand[]' + i + '"><option value="">Select</option><?php
                                    $projectsData = getmaterialbrand();
                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                            ?><option value="<?php echo $data['brand_name']; ?>"><?php echo $data['brand_name']; ?></option><?php
                                        }
                                    }
                                    ?></select></td><td><input type="text" name="quantity[]" id="quantity' + i + '" onkeyup="check_stock_quantity_validation(' + i + ')" class="form-control common_issue_quantity" required></td><td><input type="text" name="unit_price[]" id="unit_price' + i + '" onchange="sum(0)" class="form-control" required></td><td><input type="text" name="amount[]" id="sum' + i + '" class="form-control"></td><td><button type="button" name="remove" id="' + i + '" class="btn btn_remove" style="background-color:#f26522;color:#ffffff;">X</button></td></tr>');
									$(".material_select_2").select2();
									
									<!-- COMMENTS: QTY AND UNIT PRICE AND TOTAL AMOUNT -->
									
            $('#quantity' + i + ', #unit_price' + i).change(function () {
                 sum(i)
            });
        });

        $(document).on('click', '.btn_remove', function () {
            var button_id = $(this).attr("id");
            $('#row' + button_id + '').remove();
            sum_total();
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
	
	$(function () {
	  $("#allsum, #paid").keyup(function () {
		$("#due").val(+$("#allsum").val() - +$("#paid").val());
	  });
	});
</script>
<script>
    $(function () {
        $("#ss_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
</script>
<script>
    $('input[type="submit"]').prop("disabled", false);
    var a = 0;
//binds to onchange event of your input field
    $('#picture').bind('change', function () {
        if ($('input:submit').attr('disabled', false)) {
            $('input:submit').attr('disabled', true);
        }
        var ext = $('#picture').val().split('.').pop().toLowerCase();
        if ($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
            $('#error1').slideDown("slow");
            $('#error2').slideUp("slow");
            a = 0;
        } else {
            var picsize = (this.files[0].size);
            if (picsize > 500000) {
                $('#error2').slideDown("slow");
                a = 0;
            } else {
                a = 1;
                $('#error2').slideUp("slow");
            }
            $('#error1').slideUp("slow");
            if (a == 1) {
                $('input:submit').attr('disabled', false);
            }
        }
    });

</script>
<?php include 'footer.php' ?>