<?php
/*******************************************************************************

 */
if (isset($_POST['unit_submit']) && !empty($_POST['unit_submit'])) {

        
        /*
         *  Insert Data Into inv_receivedetail Table:
        */ 
        $unit_name		= $_POST['unit_name'];  


  if(isset($_POST['edit_id']) && !empty($_POST['edit_id'])){
		
		                         $edit_id            =   $_POST['edit_id']; 

								 
               
        $query = "update `inv_item_unit` set unit_name='$unit_name' WHERE id=$edit_id";
        $conn->query($query);
        
		$_SESSION['success']    =   "Unit Entry update process have been successfully completed.";
		header("location: unit_entry.php");
		exit();
		
			 }else{
			 
		
		  $query = "INSERT INTO `inv_item_unit` (`unit_name`) VALUES ('$unit_name')";
        $conn->query($query);
        
		$_SESSION['success']    =   "Unit Entry process have been successfully completed.";
		header("location: unit_entry.php");
		exit();
		
}


}

?>