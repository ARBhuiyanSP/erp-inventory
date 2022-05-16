<?php
include 'header.php';
if (isset($_GET['edit_id']) && !empty($_GET['edit_id'])) {
    $edit_id = $_GET['edit_id'];
    $data = getscrapDataDetailsById($edit_id);
    $receiveData = $data['receiveData'];
    $receiveDetailsData = $data['receiveDetailsData'];
}
?>
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
                                <label>MRR Date</label>
                                <input type="text" autocomplete="off" name="ss_date" id="ss_date" class="form-control datepicker" value="<?php echo date('Y-m-d', strtotime($receiveData->ss_date)); ?>">
                            </div>
                        </div>
						
                        <div class="col-xs-2">
                            <div class="form-group">
                                <label>MRR No</label>
                                <input type="text" name="ss_id" id="ss_id" class="form-control" readonly="readonly" value="<?php echo $receiveData->ss_id; ?>">
                                <input type="hidden" name="ss_no" id="ss_no" value="<?php echo $receiveData->ss_id; ?>">
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
											<option value="<?php echo $data['id']; ?>" <?php if (isset($receiveData->project_id) && $receiveData->project_id == $data['code']) {
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
                                    
									<?php
                                    $productSerial = 0;
                                    if (isset($receiveDetailsData) && !empty($receiveDetailsData)) {
                                        foreach ($receiveDetailsData as $key => $editDatas) {
                                            $productSerial++;
                                            ?>
                                            <tr id="row<?php echo $key; ?>">
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
                                                <td>
                                                    <select class="form-control" id="unit<?php echo $key; ?>" name="unit[]" required>
                                                        <option value="">Select</option>
                                                        <?php
                                                        $projectsData = getTableDataByTableName('inv_item_unit', '', 'unit_name');
                                                        if (isset($projectsData) && !empty($projectsData)) {
                                                            foreach ($projectsData as $data) {
                                                                ?>
                                                                <option value="<?php echo $data['id']; ?>"<?php if (isset($editDatas->unit_id) && $editDatas->unit_id == $data['id']) {
                                                    echo 'selected';
                                                } ?>><?php echo $data['unit_name']; ?></option>
                <?php
            }
        }
        ?>
   </select>
                                                </td>
                                                <td><input type="text" name="part_no[]" id="part_no<?php echo $key; ?>" class="form-control" value="<?php echo (isset($editDatas->part_no) && !empty($editDatas->part_no) ? $editDatas->part_no : ''); ?>"></td>
												
                                                <td><input type="text" name="quantity[]" id="quantity<?php echo $key; ?>" onchange="sum(<?php echo $key; ?>)" class="form-control" value="<?php echo (isset($editDatas->issue_qty) && !empty($editDatas->issue_qty) ? $editDatas->issue_qty : ''); ?>"></td>
												
												
                                                <td><input type="text" name="unit_price[]" id="unit_price<?php echo $key; ?>" onchange="sum(<?php echo $key; ?>)" class="form-control" value="<?php echo (isset($editDatas->issue_price) && !empty($editDatas->issue_price) ? $editDatas->issue_price : ''); ?>"></td>
												
                                                <td><input type="text" name="totalamount[]" id="sum<?php echo $key; ?>" class="form-control" value="<?php echo (isset($editDatas->amount) && !empty($editDatas->amount) ? $editDatas->amount : ''); ?>"></td>
												
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
                                            <td><input type="text" name="part_no[]" id="part_no" class="form-control"></td>
											
                                            <td><input type="text" name="quantity[]" id="quantity0" onchange="sum(0)" class="form-control"></td>
                                            <td><input type="text" name="unit_price[]" id="unit_price0" onchange="sum(0)" class="form-control"></td>
                                            <td><input type="text" name="amount[]" id="sum0" class="form-control"></td>
                                            <td><button type="button" name="add" id="add" class="btn" style="background-color:#2e3192;color:#ffffff;">+</button></td>
                                        </tr>
<?php } ?>
									
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
<td><input type="text" class="form-control" maxlength="10" name="total_amount" id="allsum" value="<?php echo $receiveData->totalamount; ?>" readonly /></td>
								</tr>
								<tr>
									<td>Paid Amount</td>
<td><input type="text" class="form-control" name="paid_amount" id="paid" value="<?php echo $receiveData->paidamount; ?>"  /></td>
								</tr>
								<tr>
									<td>Due Amount</td>
<td><input type="text" class="form-control" name="due_amount" id="due" value="<?php echo $receiveData->Dueamount; ?>" readonly /></td>
								</tr>
							</table>
						</div>
                    </div>
					
					
			
					
					
					
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
            $('#dynamic_field').append('<tr id="row' + i + '"><td><select class="form-control select2" id="material_name' + i + '" name="material_name[]' + i + '" required onchange="getAppendItemCodeByParam(' + i + ",'inv_material'," + "'material_id_code'," + "'material_id'," + "'qty_unit'" + ')"><option value="">Select</option><?php
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