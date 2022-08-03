<?php 
include 'header.php';


 ?>

<!-- Left Sidebar End -->
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
              <a href="stock_report.php">Stock Report</a>
			
        </li>
		
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>  Stock Report
		</div>
        <div class="card-body">
		
		
            <!--here your code will go-->
            <div class="form-group">
                <form action="" method="post" name="add_name" id="add_name" enctype="multipart/form-data">
                    <div class="row" id="div1" style="">
					
					
					                         <!--search and view data || auto increment-->

						
						
						
<div class="col-xs-2">
                            <div class="form-group">
                                <label for="id">Tran Date</label>
                                <input type="text" autocomplete="off" name="trandate" id="trandate"  class="form-control datepicker" value="<?php echo date('Y-m-d'); ?>">
                            </div>
</div>
						
						
						
<div class="col-xs-3">
							<div class="form-group">
								<label for="id">material</label><span class="reqfield"> ***required</span>
								   <select class="form-control material_select_2" id="material_name" name="material_name" required onchange="getItemCodeByParam(this.value, 'inv_material', 'material_id_code', 'material_id0', 'qty_unit');">
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
							</div>
</div>
						

<div class="col-xs-2">
                            <div class="form-group">
                                <b><label>ID</label></b>
                                <input type="text" name="material_id" id="material_id0" class="form-control" required readonly>
                            </div>
</div>
						


<div class="col-xs-2">
                            <div class="form-group">
                                <b><label>Adjust In(+) Qty</label></b>
                                <input type="text" name="mbin_qty"  id="mbin_qty" class="form-control">
                            </div>
</div>
						
			

						
						


								
						 
					<?php $project_id	= $_SESSION['logged']['project_id']; ?>
					<input type="hidden" name="project_id" value="<?php echo $project_id; ?>">
					
					<?php $warehouse_id	= $_SESSION['logged']['warehouse_id']; ?>
					<input type="hidden" name="warehouse_id" value="<?php echo $warehouse_id; ?>">


					
						
				
<div class="col-xs-12">
                            <div class="form-group">

					 
							  
							  <!-- opmanual_submit        opening_balanceManualprocess.php -->	
                  <input type="submit" name="adjmanual_submit" id="submit" class="btn btn-block" style="background-color:#007BFF;color:#ffffff;" value="Save" />   
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
	$("#trandate").datepicker({
			inline: true,
			dateFormat:"yy-mm-dd",
			yearRange:"-50:+10",
			changeYear: true,
			changeMonth: true
	});
});
</script>

<?php include 'footer.php' ?>