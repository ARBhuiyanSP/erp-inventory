<?php
include 'header.php';
if (isset($_GET['edit_id']) && !empty($_GET['edit_id'])) {
    $edit_id            = $_GET['edit_id'];
    $data               = getissueDataDetailsByIddamarage($edit_id);   // this function issue_process.php file ar vitor
    $damarageSaleData          = $data['receiveData'];
    $damarageSaleDetailsData   = $data['receiveDetailsData'];
}
?>
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Damarage Sale Edit</li>

        <li class="breadcrumb-item" style="text-align:right;">

            <?php
            $warehouse_id = $_SESSION['logged']['warehouse_id'];
            $dataresult =   getDataRowByTableAndId('inv_warehosueinfo', $warehouse_id);

            echo 'Warehouse: <b>' . (isset($dataresult) && !empty($dataresult) ? $dataresult->name : '') . '</b>'; ?>
        </li>
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>
            Damarage Sale Edit Form
        </div>
        <div class="card-body">
            <!--here your code will go-->
            <div class="form-group">
                <form action="" method="post" name="add_issue" id="add_issue">
                    <div class="row" id="div1" style="">
                        <div class="col-xs-2">
                            <div class="form-group">
                                <label>Date</label>
                                <input type="text" autocomplete="off" name="ds_date" id="ds_date" class="form-control datepicker" value="<?php echo date('Y-m-d', strtotime($damarageSaleData->ds_date)); ?>">
                            </div>
                        </div>
                        <div class="col-xs-2">
                            <div class="form-group">
                                <label>DS No</label>
                                <input type="text" name="ds_id" id="ds_id" class="form-control" readonly="readonly" value="<?php echo $damarageSaleData->ds_id; ?>">
                                <input type="hidden" name="ds_no" id="ds_no" value="<?php echo $damarageSaleData->ds_id; ?>">
                            </div>
                        </div>




                        <div class="col-xs-2">
                            <div class="form-group">
                                <label>Manual DS No</label>
                                <input type="text" name="memono" id="memono" class="form-control" value="<?php echo $damarageSaleData->memono; ?>">
                                <input type="hidden" name="memono" id="memono" value="<?php echo $damarageSaleData->memono; ?>">
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
                                      
                                            <option value="<?php echo $data['id']; ?>" <?php if (isset($damarageSaleData->partner_id) && $damarageSaleData->partner_id == $data['id']) {
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
                                           
                                            <option value="<?php echo $data['id']; ?>" <?php if (isset($damarageSaleData->party_id) && $damarageSaleData->party_id == $data['party_id']) {
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
                                <input type="text" name="party_id" id="party_id" class="form-control"  value="<?php echo (isset($damarageSaleData) && !empty($damarageSaleData) ? $damarageSaleData->party_id : ''); ?>">
                            </div>
                        </div>


                        <div class="col-xs-3">



                            <?php
                            $warehouse_id = $_SESSION['logged']['warehouse_id'];
                            $dataresult =   getDataRowByTableAndId('inv_warehosueinfo', $warehouse_id);
                            ?>
                            <input type="hidden" class="form-control" readonly="readonly" value="<?php echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : ''); ?>">

                            <input type="hidden" name="warehouse_id" id="warehouse_id" class="form-control" readonly="readonly" value="<?php echo $_SESSION['logged']['warehouse_id']; ?>">


                        </div>
                    </div>
                    <div class="row" id="div1" style="">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dynamic_field">
                                <thead>
                                    <th width="25%">Material Name </th>
                                    <th width="10%">Unit</th>
                                    <th width="10%">Qty </th>
                                    <th width="10%">Buy Price</th>
                                    <th width="10%">Buy Amount</th>
                                    <th width="10%">Sale Price</th>
                                    <th width="15%">Sale Amount</th>
                                    <th width="5%"></th>
                                </thead>

                                <tbody>
                                    <?php
                                    $productSerial = 0;
                                    if (isset($damarageSaleDetailsData) && !empty($damarageSaleDetailsData)) {
                                        foreach ($damarageSaleDetailsData as $key => $editDatas) {
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




                                                <!--  td mani holo grid column thakbay material id ami grid show korbo na so not use <td> but material id data table save hobay  -->

                                                <input type="hidden" name="material_id[]" id="material_id<?php echo $editDatas->id; ?>" class="form-control" value="<?php echo (isset($editDatas->material_id) && !empty($editDatas->material_id) ? $editDatas->material_id : ''); ?>" readonly>

                                                <!--  Qty -->
                                                <td>
                                                    <input type="text" name="quantity[]" id="quantity<?php echo $editDatas->id; ?>" onchange="check_stock_quantity_validation(<?php echo $editDatas->id; ?>)" onchange="sum(<?php echo $editDatas->id; ?>)" class="form-control" value="<?php echo (isset($editDatas->issue_qty) && !empty($editDatas->issue_qty) ? $editDatas->issue_qty : ''); ?>">
                                                </td>


                                                <!-- buy price -->
                                                <td>
                                                    <input type="text" name="cur_price[]" id="buy_price<?php echo $editDatas->id; ?>" onkeyup="buy_amount(<?php echo $editDatas->id; ?>)" onchange="sum(<?php echo $editDatas->id; ?>)" class="form-control" value="<?php echo (isset($editDatas->cur_price) && !empty($editDatas->cur_price) ? $editDatas->cur_price : ''); ?>">
                                                </td>



                                                <!-- Buy Amount -->
                                                <td>
                                                    <input type="text" name="cur_amount[]" id="buy_amount<?php echo $editDatas->id; ?>" onchange="sum(<?php echo $editDatas->id; ?>)" class="form-control sub_buy_amount" value="<?php echo (isset($editDatas->cur_price_amount) && !empty($editDatas->cur_price_amount) ? $editDatas->cur_price_amount : ''); ?>">
                                                </td>


                                                <!-- Sale Price -->
                                                <td>
                                                    <input type="text" name="unit_price[]" id="unit_price<?php echo $editDatas->id; ?>" onchange="sum(<?php echo $editDatas->id; ?>)" class="form-control" value="<?php echo (isset($editDatas->issue_price) && !empty($editDatas->issue_price) ? $editDatas->issue_price : ''); ?>">
                                                </td>

                                                <!-- Sale Amount -->

                                                <td>
                                                    <input type="text" name="amount[]" id="sum<?php echo $editDatas->id; ?>" onchange="sum(<?php echo $editDatas->id; ?>)" class="form-control sale_amount" value="<?php echo (isset($editDatas->amount) && !empty($editDatas->amount) ? $editDatas->amount : ''); ?>">
                                                </td>






                                                <?php if ($key == 0) { ?>
                                                    <td><button type="button" name="add" id="add" class="btn" style="background-color:#2e3192;color:#ffffff;">+</button></td>
                                                <?php } else { ?>
                                                    <td><button type="button" name="remove" id="<?php echo $editDatas->id; ?>" class="btn btn_remove" style="background-color:#f26522;color:#ffffff;">X</button></td>
                                                <?php } ?>
                                            </tr>
                                        <?php

                                        } //End of foreach


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
                                            <td><input type="text" name="material_id[]" id="material_id0" class="form-control" readonly></td>
                                            <td>
                                                <select class="form-control" id="unit0" name="unit[]" required readonly>
                                                    <option value="">Select Unit</option>
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


                                           <td><input type="text" name="quantity[]" id="quantity0" onchange="check_stock_quantity_validation(0)" class="form-control common_issue_quantity" required></td>
					  
                                        <td><input type="text" name="cur_price[]" onkeyup="buy_amount(0)" id="buy_price0" class="form-control" required></td>
                                        <td><input type="text" name="cur_amount[]" id="buy_amount0" class="form-control sub_buy_amount" required readonly ></td>
                                       
										<td><input type="text" name="unit_price[]" id="unit_price0" onkeyup="sum(0)" class="form-control" required></td>
										<td><input type="text" name="amount[]" id="sum0" class="form-control sub_sell_amount" readonly ></td>







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
                                 <textarea id="remarks" name="remarks" class="form-control"><?php
                                                                                    if (isset($damarageSaleData->remarks)) {
                                                                                        echo $damarageSaleData->remarks;
                                                                                    }
                                                                                    ?></textarea>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <table class="table table-bordered">
                                <tr>
                                    <td>Total Buy Amount</td>
                                    <td><input type="text" class="form-control" maxlength="10" name="total_cur" id="allcur" value="<?php echo $damarageSaleData->totalcur; ?>" readonly /></td>
                                </tr>
                                <tr>
                                    <td>Total Sale Amount</td>
                                    <td><input type="text" class="form-control" maxlength="10" name="total_amount" id="allsum" value="<?php echo $damarageSaleData->totalamount; ?>" readonly /></td>
                                </tr>


                              


                                <tr>
                                    <td>Paid Amount</td>
                                    <td><input type="text" class="form-control" name="paid_amount" id="paid" value="<?php echo $damarageSaleData->paidamount; ?>" /></td>
                                </tr>



                                <tr>
                                    <td>Due Amount</td>
                                    <td><input type="text" class="form-control" name="due_amount" id="due" value="<?php echo $damarageSaleData->Dueamount; ?>" readonly /></td>
                                </tr>


                                <tr>
                                    <td>Loss</td>
                                    <td><input type="text" class="form-control" name="profitamount" id="profitamount" value="<?php echo $damarageSaleData->profitamount; ?>" readonly /></td>
                                </tr>



                            </table>
                        </div>
                    </div>


            </div>


            <div class="row" style="">
                
                <div class="col-xs-12">
                    <div class="form-group">
                        <div class="modal-footer">
                            <input type="hidden" name="edit_id" value="<?php echo $damarageSaleData->id; ?>">
                            <input type="submit" name="damaragesale_update_submit" id="damaragesale_update_submit" class="btn btn-block" style="background-color:#f26522;color:#ffffff;" value="Update" />
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
                                    ?></select></td><input type="hidden" name="material_id[]" id="material_id' + i + '" class="form-control" required readonly><td><select class="form-control select2" id="unit' + i + '" name="unit[]' + i + '" required onchange="getAppendItemCodeByParam(' + i + ",'inv_material'" + ",'material_id_code'" + ",'material_id''" + ",'qty_unit'" + ')"><option value="">Select</option><?php
                                    $projectsData = getTableDataByTableName('inv_item_unit', '', 'unit_name');
                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
                                            ?><option value="<?php echo $data['id']; ?>"><?php echo $data['unit_name']; ?></option><?php
                                        }
                                    }
                                    ?></select></td><td><input type="text" name="quantity[]" id="quantity' + i + '" onchange="check_stock_quantity_validation(' + i + ')" class="form-control common_issue_quantity" required></td><td><input type="text" name="cur_price[]" id="buy_price' + i + '"  class="form-control"  onkeyup="buy_amount(' + i + ')"  ></td><td><input type="text" name="cur_amount[]" id="buy_amount' + i + '"  class="form-control sub_buy_amount" required readonly ></td><td><input type="text" name="unit_price[]" id="unit_price' + i + '" onkeyup="sum(' + i + ')" class="form-control" required></td><td><input type="text" name="amount[]" id="sum' + i + '" class="form-control" readonly ></td><td><button type="button" name="remove" id="' + i + '" class="btn btn_remove" style="background-color:#f26522;color:#ffffff;">X</button></td></tr>');
									$(".material_select_2").select2();
									
									<!-- COMMENTS: QTY AND UNIT PRICE AND TOTAL AMOUNT -->
			
						$('#cur_price' + i + ', #unit_price' + i).change(function () {
                buy_amount(i)
            });						
            $('#quantity' + i + ', #unit_price' + i).change(function () {
                 sum(i)
            });
        });

        $(document).on('click', '.btn_remove', function () {
            var button_id = $(this).attr("id");
            $('#row' + button_id + '').remove();
            calculate_total_buy_amount();
            sum_total();
        });
    });

    
	function buy_amount(i) {
        let myQty = document.getElementById('quantity' + i).value;
        let myBuyPrice = document.getElementById('buy_price' + i).value;
        let subBuyAmount = parseFloat(myQty * myBuyPrice);
        if (!isNaN(subBuyAmount)) {
            document.getElementById('buy_amount' + i).value = subBuyAmount.toFixed(2);
        }
        calculate_total_buy_amount();
    }
	
 
	function sum(i) {
        let quantity1 = document.getElementById('quantity' + i).value;
        let unit_price1 = document.getElementById('unit_price' + i).value;
        let result = parseFloat(quantity1 * unit_price1);
        if (!isNaN(result)) {
            document.getElementById('sum' + i).value = result;
        }
        sum_total();
    }
	function calculate_total_buy_amount() {
        let subBuyAmount     =   $(".sub_buy_amount");
        let subBuyTotal     =   0;

        for(let mySubValue = 0;  mySubValue < subBuyAmount.length; mySubValue++){
            subBuyTotal+= parseFloat($("#" + subBuyAmount[mySubValue].id).val());
            console.log('subBuyTotal' + subBuyTotal);
        }
        
        document.getElementById('allcur').value = subBuyTotal.toFixed(2);
                
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
        calculate_profit_amount();
    }

    function calculate_profit_amount() {
        let subBuyAmount     =   $("#allcur").val();
        let subSellTotal     =   $("#allsum").val();
        let profitTotal     =   parseFloat((subSellTotal - subBuyAmount));
		
		let profitTotalabs    =   Math.abs((profitTotal));

        
        
        document.getElementById('profitamount').value = profitTotalabs.toFixed(2);
    }


	$(function () {
	  $("#allsum, #paid").keyup(function () {
		$("#due").val(+$("#allsum").val() - +$("#paid").val());
	  });
	});
</script>
<script>
    $(function () {
        $("#issue_date").datepicker({
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