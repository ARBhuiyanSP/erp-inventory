<?php 
include 'header.php';

if (isset($_GET['id']) && $_GET['id'] != '') { 
	//echo $row['education'];
	$id=	$_GET['id'];
	
	
	$table 	= 'inv_partybalance';
	$sqledit = "SELECT * FROM $table WHERE `id`='$id'";
	$resultedit = $conn->query($sqledit);
	$rowedit = mysqli_fetch_array($resultedit);
	$button_name = 'Update';
	$button_post_name = 'partyclosing_update_submit';
}
else{
	$button_name = 'Save';
	$button_post_name = 'partyclosing_submit';
}

?>
<!-- Left Sidebar End -->
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
       
			
        </li>
		
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i> Party Closing Balance Form
		</div>
        <div class="card-body">
		
		
            <!--here your code will go-->
            <div class="form-group">
                <form action="" method="post" name="add_name" id="add_name" enctype="multipart/form-data">
                    <div class="row" id="div1" style="">
					
					
					                         <!--search and view data || auto increment-->
<div class="col-xs-1">
                            <div class="form-group">
                                <label>TRAN ID</label>
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
								<label for="id">Partner</label><span class="reqfield"> ***required</span>
								<select class="form-control" id="partner_id" name="partner_id" onchange="getPartyByPartner(this.value);" required >
									<option value="">Select</option>
									<?php
									$parentCats = getTableDataByTableName('partner', '', 'name');
									if (isset($parentCats) && !empty($parentCats)) {
										foreach ($parentCats as $pcat) {
											?>
 <option value="<?php echo $pcat['id'] ?>"<?php if (isset($rowedit['partner_id']) && $rowedit['partner_id'] == $pcat['id']) { echo "Selected"; }?>><?php echo $pcat['name'] ?></option>
										<?php }
									} ?>
								</select>
							</div>
</div>
						
						
						
<div class="col-xs-3">
							<div class="form-group">
								<label for="id">Party</label><span class="reqfield"> ***required</span>
								<select class="form-control" id="main_sub_item_id" name="partyname" onchange="getItemCodeByParam(this.value, 'party', 'party_id', 'party_id');">
									<option value="">Select</option>
									<?php
									$parentCats = getTableDataByTableName('party','','partyname');
									if (isset($parentCats) && !empty($parentCats)) {
										foreach ($parentCats as $pcat) {
											?>
											<option value="<?php echo $pcat['id'] ?>"<?php if (isset($rowedit['partyid']) && $rowedit['partyid'] == $pcat['party_id']) { echo "Selected"; }?>><?php echo $pcat['partyname'] ?></option>
										<?php }
									} ?>
								</select>
							</div>
</div>
						
<div class="col-xs-1">
                            <div class="form-group">
                                <label for="id">party ID</label>
                                <input type="text" name="party_id" value="<?php if (isset($rowedit['partyid']) && $rowedit['partyid'] != '') { echo $rowedit['partyid']; }?>" id="party_id" class="form-control" readonly required>
                            </div>
</div>
                       
						
						
			
						
						
						
<div class="col-xs-1">
                            <div class="form-group">
                                <label>Debit</label>
                                <input type="text" name="dramount" value="<?php if (isset($rowedit['dramount']) && $rowedit['dramount'] != '') { echo $rowedit['dramount']; }?>" id="dramount" class="form-control">
                            </div>
</div>
						
						

<div class="col-xs-1">
                            <div class="form-group">
                                <label>Credit</label>
                                <input type="text" name="cramount" value="<?php if (isset($rowedit['cramount']) && $rowedit['cramount'] != '') { echo $rowedit['cramount']; }?>" id="cramount" class="form-control">
                            </div>
</div>
								
						 
                                

                                <?php
                                $warehouse_id = $_SESSION['logged']['warehouse_id'];
                                $dataresult = getDataRowByTableAndId('inv_warehosueinfo', $warehouse_id);
                                ?>
                                <input type="hidden" class="form-control" readonly="readonly" value="<?php echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : ''); ?>">

                                <input type="hidden" name="warehouse_id" id="warehouse_id" class="form-control" readonly="readonly" value="<?php echo $_SESSION['logged']['warehouse_id']; ?>">

                          
							
							
						
						
						

					
					
						
				
<div class="col-xs-12">
                            <div class="form-group">

					<!-- name="edit_id"   call korchi party_payment_process.php -->		
 <input type="hidden" name="edit_id" value="<?php echo (isset($rowedit['id']) && !empty($rowedit['id']) ? $rowedit['id']: ""); ?>">
							  
							  
							  <!-- party_payment_submit        party_payment_process.php -->	
                    <input type="submit" name="partyclosing_submit" id="submit" class="btn btn-block" style="background-color:#007BFF;color:#ffffff;" value="<?php echo $button_name; ?>" />   
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