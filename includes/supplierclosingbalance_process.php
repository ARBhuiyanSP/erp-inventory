<?php
/*******************************************************************************
 * The following code will
 * Insert Project Info at projects table
 */
if (isset($_POST['supplieropening_submit']) && !empty($_POST['supplieropening_submit'])) {

        $sp_photo= '';
        /*
         *  Insert Data Into inv_receivedetail Table:
        */ 
        $voucherid	        = 'OP';
		$voucherdate		= $_POST['voucherdate'];
		$supplierid		    = $_POST['supplierid'];
		$paymenttype		= 'OP';
		$dramount		        = $_POST['dramount'];
		$cramount		        = $_POST['cramount'];
		$receivermode		= 'OP';
		$warehouse_id		= $_POST['warehouse_id'];
	    $remarks		    = 'OP';
		
		
		if(isset($_POST['edit_id']) && !empty($_POST['edit_id'])){
		$edit_id            =   $_POST['edit_id']; //name="edit_id"  

	
        $query3 = "UPDATE inv_supplierbalance SET warehouse_id='$warehouse_id',sb_date='$voucherdate',sb_supplier_id='$supplierid',sb_dr_amount='$amount',sb_cr_amount='0',receivermode='$receivermode',paymenttype='$paymenttype',sb_remark='$remarks',sb_partac_id='$voucherid' WHERE sb_ref_id='$voucherid'";
	   
            $result3 = $conn->query($query3);
		
		$_SESSION['success']    =   "supplier Opening Balance updated completed.";
		header("location: supplierclosing_Balance.php");
		exit();
		
		
		                                               }else{
	
	
	
	 if ($_SESSION['logged']['user_type'] == 'whm') {
                                    $warehouse_id = $_SESSION['logged']['warehouse_id'];
                                    $sql = "SELECT * FROM inv_warehosueinfo WHERE `id`='$warehouse_id'";
                                    $result = mysqli_query($conn, $sql);
                                    $row = mysqli_fetch_array($result);
									
                                
								}else {
									$sql = "SELECT * FROM inv_warehosueinfo";
                                    $result = mysqli_query($conn, $sql);
                                    $row = mysqli_fetch_array($result);
								}
				 

	// duplicate data check
					$duplicate_sql 		= "SELECT * from inv_supplierbalance WHERE sb_ref_id= 'OP' AND sb_supplier_id = '$supplierid'";
					$duplicate_result	= mysqli_query($conn, $duplicate_sql);
                    if($duplicate_result->num_rows > 0){
					$_SESSION['error']    =   "Data have been already existed with this Party Id;";
					header("location: supplierclosing_Balance.php");
					exit();}				 
								     
    
		
	
	$query5 = "INSERT INTO `inv_supplierbalance` (`sb_ref_id`,`warehouse_id`,`sb_date`,`sb_supplier_id`,`sb_dr_amount`,`sb_cr_amount`,`receivermode`,`paymenttype`,`sb_remark`,`sb_partac_id`) VALUES ('$voucherid','$warehouse_id','$voucherdate','$supplierid','$dramount','$cramount','$receivermode','$paymenttype','$remarks','$voucherid')";
     $result2 = $conn->query($query5);
	 
	
	
        
		$_SESSION['success']    =   "supplier Opening Balance have been entry successfully completed.";
		header("location: supplierclosing_Balance.php");
		exit();
	}			
}
?>