<?php
/*******************************************************************************

 * *****************************************************************************
 */
if (isset($_POST['adjmanual_submit']) && !empty($_POST['adjmanual_submit'])) {
   
        
       
        $project_id				= $_POST['project_id'];
        $warehouse_id			= $_POST['warehouse_id'];
		$trandate                = $_POST['trandate'];
        $material_id			= $_POST['material_id'];  
        $mbin_qty				= $_POST['mbin_qty']; 
  
      
               
       
		

		 

		$query_inmb = "INSERT INTO `inv_materialbalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbin_val`,`mbout_qty`,`mbout_val`,`mbprice`,`mbtype`,`project_id`,`warehouse_id`) VALUES ('ADJIN','$material_id','$trandate','$mbin_qty','0','0','0','0','ADJIN','$project_id','$warehouse_id')";
		$conn->query($query_inmb);
				
    }
	



?>