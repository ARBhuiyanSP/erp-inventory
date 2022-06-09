<?php
/*******************************************************************************
*/
if (isset($_POST['partnerpayment_submit']) && !empty($_POST['partnerpayment_submit'])) {
	
        $tranid	        	= $_POST['tranid'];
		$trandate			= $_POST['trandate'];
		$partner_id 		= $_POST['partner_id'];
		$expensedesc		= $_POST['expensedesc'];
		$amount		    	= $_POST['amount'];
	    $warehouse_id   	= $_POST['warehouse_id'];
		

	                       if(isset($_POST['edit_id']) && !empty($_POST['edit_id'])){
		
		                        $edit_id            =   $_POST['edit_id']; 
		
		
	
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

		                                            $trantype = $_POST['trantype'];
		
		                                             if($trantype == "Deposit"){

		   
          $query3 = "UPDATE partnerpayment SET `trandate`='$trandate',`partner_id`='$partner_id',`expensedesc`='$expensedesc',`trantype`='$trantype',`amountdeposit`='$amount',`amountwithdraw`=0,`warehouse_id`='$warehouse_id'WHERE id=$edit_id";
          $conn->query($query3);
		
		
		                                           }elseif ($trantype == "payment/withdraw"){
		

		
		   
          $query3 = "UPDATE partnerpayment SET `trandate`='$trandate',`partner_id`='$partner_id',`expensedesc`='$expensedesc',`trantype`='$trantype',`amountdeposit`=0,`amountwithdraw`='$amount',`warehouse_id`='$warehouse_id'WHERE id=$edit_id";
          $conn->query($query3); 
         $conn->query($query);
		 }
	
        
		$_SESSION['success']    =   "Partner payment Entry process have been successfully completed.";
		header("location: partnerpayment.php");
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

		                                           $trantype = $_POST['trantype'];
		
		                                             if($trantype == "Deposit"){

		   
          $query = "INSERT INTO `partnerpayment` (`tranid`,`trandate`,`partner_id`,`expensedesc`,`trantype`,`amountdeposit`,`amountwithdraw`,`warehouse_id`) VALUES ('$tranid','$trandate','$partner_id','$expensedesc','$trantype','$amount','0','$warehouse_id')";
          $conn->query($query);
		
		
		                                           }elseif ($trantype == "payment/withdraw"){
		
		   
         $query = "INSERT INTO `partnerpayment` (`tranid`,`trandate`,`partner_id`,`expensedesc`,`trantype`,`amountdeposit`,`amountwithdraw`,`warehouse_id`) VALUES ('$tranid','$trandate','$partner_id','$expensedesc','$trantype','0','$amount','$warehouse_id')"; 
         $conn->query($query);
		 }
	
        
		$_SESSION['success']    =   "Partner payment Entry process have been successfully completed.";
		header("location: partnerpayment.php");
		exit();		
												
												
}
}
?>