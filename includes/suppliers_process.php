<?php
/*******************************************************************************
 * The following code will
 * Insert Project Info at projects table
 */
if (isset($_POST['suppliers_submit']) && !empty($_POST['suppliers_submit'])) {

        
        /*
         *  Insert Data Into suppliers Table:
        */ 
        $supplier_id			= $_POST['supplier_id'];
        $supplier_name			= $_POST['supplier_name'];
        $supplier_address		= $_POST['supplier_address'];
        $contact_person			= $_POST['contact_person'];     
        $supplier_phone			= $_POST['supplier_phone'];    //phone 
        $supplier_op_balance	= $_POST['supplier_op_balance'];  //mobile   
        $supplier_type			= $_POST['supplier_type'];     
        $material_type			= $_POST['material_type'];
        $date					= date('Y-m-d');     
        $remarks				= 'NA';    


							if(isset($_POST['edit_id']) && !empty($_POST['edit_id'])){
		
		                         $edit_id            =   $_POST['edit_id']; 
								 
               
     $query2    = "UPDATE suppliers SET name='$supplier_name',address='$supplier_address',contact_person='$contact_person',supplier_phone='$supplier_phone',supplier_op_balance='$supplier_op_balance' WHERE id=$edit_id";
            $result2 = $conn->query($query2);
			
		
	
        
		$_SESSION['success']    =   "Supplier has been update successfully.";
		header("location: supplier_entry.php");
		exit();


		                                           }else{
	


  $query = "INSERT INTO `suppliers` (`code`,`name`,`address`,`contact_person`,`supplier_phone`,`supplier_op_balance`,`supplier_type`,`material_type`) VALUES ('$supplier_id','$supplier_name','$supplier_address','$contact_person','$supplier_phone','$supplier_op_balance','$supplier_type','$material_type')";
        $conn->query($query);
		
    
    $_SESSION['success']    =   "Supplier process have been successfully saved.";
    header("location: supplier_entry.php");
    exit();
}
}

?>