<?php
/*******************************************************************************
 * The following code will
 * *****************************************************************************
 */
if (isset($_POST['op_submit']) && !empty($_POST['op_submit'])) {
    for ($count = 0; $count < count($_POST['party_id']); $count++) {
        
        /* Update opbal  party Table:*/ 
		$op_date        = $_POST['op_date'];
        $party_id		= $_POST['party_id'][$count]; 
		$opbal			= $_POST['opbal'][$count];   
           
        /* $mbprice				= $op_balance_qty *  $op_balance_val;*/
               
        $query = "UPDATE `party` SET `opbal`='$opbal'  WHERE `party_id`='$party_id'";
        $conn->query($query); 
		
    } 
}

if (isset($_POST['op_edit']) && !empty($_POST['op_edit'])) {
    for ($count = 0; $count < count($_POST['party_id']); $count++) {

        $op_date        = $_POST['op_date'];
        $party_id		= $_POST['party_id'][$count]; 
		$opbal			= $_POST['opbal'][$count]; 
               
       $query = "UPDATE `party` SET `opbal`='$opbal'   WHERE `party_id`='$party_id'";
        $conn->query($query); 		
    }  
}

?>