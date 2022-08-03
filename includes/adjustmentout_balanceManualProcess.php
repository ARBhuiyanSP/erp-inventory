<?php
/*******************************************************************************

 * *****************************************************************************
 */
if (isset($_POST['adjmanualout_submit']) && !empty($_POST['adjmanualout_submit'])) {
   
        
       
        $project_id				= $_POST['project_id'];
        $warehouse_id			= $_POST['warehouse_id'];
		$trandate                = $_POST['trandate'];
        $material_id			= $_POST['material_id'];  
        $mbout_qty				= $_POST['mbout_qty']; 
  
      
               
		$query_inmb = "INSERT INTO `inv_materialbalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbin_val`,`mbout_qty`,`mbout_val`,`mbprice`,`mbtype`,`project_id`,`warehouse_id`) VALUES ('ADJOUT','$material_id','$trandate','0','0','$mbout_qty','0','0','ADJOUT','$project_id','$warehouse_id')";
		$conn->query($query_inmb);
				
    }
	



?>