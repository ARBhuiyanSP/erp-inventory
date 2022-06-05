<?php
/*******************************************************************************
 * The following code two file
 party_payment.php
 party_payment_process.php

 */
              // transport_submit        transport.php 
if (isset($_POST['transport_submit']) && !empty($_POST['transport_submit'])) {
	
	
       /*
         *  Insert Data Into transport Table:
        */ 
        $tranid	        	= $_POST['tranid'];
		$trandate			= $_POST['trandate'];
		$partner_id 		= $_POST['partner_id'];
		$party_id			= 'A';
		$trantype			= $_POST['trantype'];
		$amount		        = $_POST['amount'];
	    $remarks		    = $_POST['remarks'];
		$warehouse_id   	= $_POST['warehouse_id'];
	
	if(isset($_POST['edit_id']) && !empty($_POST['edit_id'])){
		
		$edit_id            =   $_POST['edit_id']; //name="edit_id"  party_payment.php file
		
		
		
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
		
		
		                                   // UPDATE party_payment

		    $query2    = "UPDATE transport SET tranid='$tranid',trandate='$trandate',partner_id='$partner_id',party_id='$party_id',trantype='$trantype',amount='$amount',remarks='$remarks',warehouse_id='$warehouse_id' WHERE id=$edit_id";
            $result2 = $conn->query($query2);
		
 

        
		$_SESSION['success']    =   "Transport payment Update process have been successfully completed.";
		header("location: transport.php");
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
								
  $query = "INSERT INTO `transport` (`tranid`,`trandate`,`partner_id`,`party_id`,`trantype`,`amount`,`remarks`,`warehouse_id`) VALUES ('$tranid','$trandate','$partner_id','$party_id','$trantype','$amount','$remarks','$warehouse_id')";
        $conn->query($query);
		
		
	
	
        
		$_SESSION['success']    =   "Transport payment Entry process have been successfully completed.";
		header("location: transport.php");
		exit();
	}			
}
?>