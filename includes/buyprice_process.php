<?php
/*******************************************************************************
 * The following code will
 * Update Opening Stock Balance.
 * There are 2 table to keet track on receive data. The are following:
 * 1. inv_material (Update Multiple row)      
 * 2. inv_materialbalance (Update Multiple row)
 * *****************************************************************************
 */

if (isset($_POST['op_submit']) && !empty($_POST['op_submit'])) {
    for ($count = 0; $count < count($_POST['material_id_code']); $count++) {
        
        /*
         *  Update Qty Into inv_material Table:
        */ 
		
        
		$op_date                = $_POST['op_date'];
        $material_id_code		= $_POST['material_id_code'][$count]; 
		
       $cur_price			= $_POST['cur_price'][$count];   
        /*  $op_balance_val		    = $_POST['op_balance_val'][$count]; */          
        /* $mbprice				= $op_balance_qty *  $op_balance_val;*/
               
        $query = "UPDATE `inv_material` SET `cur_price`='$cur_price'  WHERE `material_id_code`='$material_id_code'";
        $conn->query($query); 
		
				
    }
	
    
}



if (isset($_POST['op_edit']) && !empty($_POST['op_edit'])) {
    for ($count = 0; $count < count($_POST['material_id_code']); $count++) {
        
        /*
         *  Update Qty Into inv_material Table:                                 and `last_receive`='$op_date'
        */ 
		
        $op_date                = $_POST['op_date'];
        $material_id_code		= $_POST['material_id_code'][$count]; 
		
       $cur_price			= $_POST['cur_price'][$count]; 
               
       $query = "UPDATE `inv_material` SET `cur_price`='$cur_price'   WHERE `material_id_code`='$material_id_code'";
        $conn->query($query); 
		/*
        *  Update Qty Into inv_materialbalance Table:
        */
		
		
				
    }
	
    
}



?>