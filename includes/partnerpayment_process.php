<?php
/*******************************************************************************
 * The following code will
 * Insert Project Info at projects table
 */
if (isset($_POST['partnerpayment_submit']) && !empty($_POST['partnerpayment_submit'])) {
	
	//$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
	
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
								

        
        /*
         *  Insert Data Into partnerpayment Table:			
        */ 
		$trantype		        = $_POST['trantype'];
		
		
		
		                                             if($trantype == "Deposit"){
			
			
        $tranid	        	= $_POST['tranid'];
		$trandate			= $_POST['trandate'];
		$partner_id 		= $_POST['partner_id'];
		$expensedesc		= $_POST['expensedesc'];
		$amount		    	= $_POST['amount'];
	    $warehouse_id   	= $_POST['warehouse_id'];
		
		   
          $query = "INSERT INTO `partnerpayment` (`tranid`,`trandate`,`partner_id`,`expensedesc`,`trantype`,`amountdeposit`,`amountwithdraw`,`warehouse_id`) VALUES ('$tranid','$trandate','$partner_id','$expensedesc','$trantype','$amount','0','$warehouse_id')";
          $conn->query($query);
		
		
		                                           }elseif ($trantype == "payment/withdraw"){
		
	    $tranid	        	= $_POST['tranid'];
		$trandate			= $_POST['trandate'];
		$partner_id 		= $_POST['partner_id'];
		$expensedesc		= $_POST['expensedesc'];
	    $trantype		        = $_POST['trantype'];
		$amount		    = $_POST['amount'];
	    $warehouse_id   	= $_POST['warehouse_id'];
		
		   
         $query = "INSERT INTO `partnerpayment` (`tranid`,`trandate`,`partner_id`,`expensedesc`,`trantype`,`amountdeposit`,`amountwithdraw`,`warehouse_id`) VALUES ('$tranid','$trandate','$partner_id','$expensedesc','$trantype','0','$amount','$warehouse_id')"; 
         $conn->query($query);
		 }
	
        
		$_SESSION['success']    =   "Partner payment Entry process have been successfully completed.";
		header("location: partnerpayment.php");
		exit();
}


?>