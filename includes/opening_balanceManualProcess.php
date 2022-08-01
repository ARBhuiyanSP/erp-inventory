<?php
/*******************************************************************************

 * *****************************************************************************
 */
if (isset($_POST['opmanual_submit']) && !empty($_POST['opmanual_submit'])) {
   
        
       
        $project_id				= $_POST['project_id'];
        $warehouse_id			= $_POST['warehouse_id'];
		$op_date                = $_POST['op_date'];
        $material_id			= $_POST['material_id'];  
        $op_balance_qty			= $_POST['op_balance_qty']; 
        $mbprice				= $_POST['op_rate']; 
        $op_balance_val		    = $op_balance_qty * $mbprice; 
               
        $query = "UPDATE `inv_material` SET `op_balance_qty`='$op_balance_qty',`op_balance_val`='$op_balance_val' WHERE `material_id_code`='$material_id'";
        $conn->query($query); 
		
		
		
		 $delsq4    = "DELETE FROM `inv_materialbalance` WHERE `mb_ref_id`='OP' and `mb_materialid`='$material_id' and `warehouse_id`='$warehouse_id'";
		 $conn->query($delsq4);
		 

		$query_inmb = "INSERT INTO `inv_materialbalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbin_val`,`mbout_qty`,`mbout_val`,`mbprice`,`mbtype`,`project_id`,`warehouse_id`) VALUES ('OP','$material_id','$op_date','$op_balance_qty','$op_balance_val','0','0','$mbprice','OP','$project_id','$warehouse_id')";
		$conn->query($query_inmb);
				
    }
	



?>