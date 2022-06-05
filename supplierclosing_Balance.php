<?php 
include 'header.php';



if (isset($_GET['id']) && $_GET['id'] != '') { 
	//echo $row['education'];
	$id=	$_GET['id'];
	
	
	$table 	= 'inv_supplierbalance';
	$sqledit = "SELECT * FROM $table WHERE `id`='$id'";
	$resultedit = $conn->query($sqledit);
	$rowedit = mysqli_fetch_array($resultedit);
	$button_name = 'Update';
	$button_post_name = 'spplierclosingbalance_update_submit';
}
else{
	$button_name = 'Save';
	$button_post_name = 'spplierclosingbalance_submit';
}



?>
<!-- Left Sidebar End -->
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="supplier_ledger.php">Report</a>
			
								
        </li>
        <li class="breadcrumb-item active"> Supplier Opening balance Entry Form</li>
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i> Supplier Opening Balance Form
		</div>
        <div class="card-body">
            <!--here your code will go-->
            <div class="form-group">
                <form action="" method="post" name="add_name" id="add_name" enctype="multipart/form-data">
                    <div class="row" id="div1" style="">
                     
						
						
						<div class="col-xs-2">
                            <div class="form-group">
                                <label>Voucher ID</label>
								<?php
								
									if(isset($rowedit['voucherid']) && !empty($rowedit['voucherid'])){
										$voucherid 	=$rowedit['voucherid'];
									}else{
										$voucherid 	='OP';
									}
                                   ?>
                                <input type="text" name="voucherid" id="voucherid" value="<?php echo $voucherid; ?>" class="form-control" readonly="readonly">
                            </div>
</div>



						
<div class="col-xs-2">
                            <div class="form-group">
                                <label for="id">Voucher Date</label>
                                <input type="text" autocomplete="off" name="voucherdate" id="voucherdate" value="<?php if (isset($rowedit['voucherdate']) && $rowedit['voucherdate'] != '') { echo $rowedit['voucherdate']; }?>" class="form-control datepicker" value="<?php echo date('Y-m-d'); ?>">
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
           <option value="<?php echo $data['id'] ?>"<?php if (isset($rowedit['supplierid']) && $rowedit['supplierid'] == $data['code']) { echo "Selected"; }?>><?php echo $data['name'] ?></option>
										<?php }
									} ?>
                                </select>
                            </div>
                        </div>
						
					
						
						

                        <div class="col-xs-2">
                            <div class="form-group">
                                <label for="id">Supplier ID</label>
                                <input type="text" name="supplierid" value="<?php if (isset($rowedit['supplierid']) && $rowedit['supplierid'] != '') { echo $rowedit['supplierid']; }?>" id="supplier_id" class="form-control" required readonly>
                            </div>
                        </div>
						
						
					
						
						
						
						
                                <?php
                                $warehouse_id = $_SESSION['logged']['warehouse_id'];
                                $dataresult = getDataRowByTableAndId('inv_warehosueinfo', $warehouse_id);
                                ?>
                                <input type="hidden" class="form-control" readonly="readonly" value="<?php echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : ''); ?>">

                                <input type="hidden" name="warehouse_id" id="warehouse_id" class="form-control" readonly="readonly" value="<?php echo $_SESSION['logged']['warehouse_id']; ?>">
								
								
								
						
						<div class="col-xs-2">
                            <div class="form-group">
                                <label>Debit Amount</label>
                                <input type="text" name="dramount" value="<?php if (isset($rowedit['dramount']) && $rowedit['dramount'] != '') { echo $rowedit['dramount']; }?>" id="dramount" class="form-control">
                            </div>
                        </div>
						
		
						<div class="col-xs-2">
                            <div class="form-group">
                                <label>Credit Amount</label>
                                <input type="text" name="cramount" value="<?php if (isset($rowedit['cramount']) && $rowedit['cramount'] != '') { echo $rowedit['cramount']; }?>" id="cramount" class="form-control">
                            </div>
                        </div>		
						
						
					
						
				
						<div class="col-xs-12">
                            <div class="form-group">
							
							
											<!-- name="edit_id"   call korchi payment_process.php -->		
 <input type="hidden" name="edit_id" value="<?php echo (isset($rowedit['id']) && !empty($rowedit['id']) ? $rowedit['id']: ""); ?>">
 
 
                                <input type="submit" name="supplieropening_submit" id="submit" class="btn btn-block" style="background-color:#007BFF;color:#ffffff;" value="Save" />   
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