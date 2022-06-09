<?php
/*******************************************************************************
 * The following code will
 * Insert Project Info at projects table
 */
if (isset($_POST['partner_submit']) && !empty($_POST['partner_submit'])) {

        
        /*
         *  Insert Data Into inv_receivedetail Table:
        */ 
        $partner_id		= $_POST['partner_id'];
        $name			= $_POST['name'];
       
               
     
	                    if(isset($_POST['edit_id']) && !empty($_POST['edit_id'])){
		
		                         $edit_id            =   $_POST['edit_id']; 

		
		
		    $query2    = "UPDATE partner SET name='$name' WHERE id=$edit_id";
            $result2 = $conn->query($query2);
			
			
			
		$_SESSION['success']    =   "partner Entry process have been successfully completed.";
		header("location: partner_entry.php");
		exit();
		
		
		
		 }else{
			 
			 
			 
		 $query = "INSERT INTO `partner` (`partner_id`,`name`) VALUES ('$partner_id','$name')";
        $conn->query($query);
        
		$_SESSION['success']    =   "partner Entry process have been successfully completed.";
		header("location: partner_entry.php");
		exit();

					 
}
}


?>