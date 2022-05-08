<?php
/*******************************************************************************
 * The following code will
 * Insert Project Info at projects table
 */
if (isset($_POST['transport_submit']) && !empty($_POST['transport_submit'])) {
	
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
		
		   
         $query = "INSERT INTO `transport` (`tranid`,`trandate`,`partner_id`,`party_id`,`trantype`,`amount`,`remarks`,`warehouse_id`) VALUES ('$tranid','$trandate','$partner_id','$party_id','$trantype','$amount','$remarks','$warehouse_id')";
        $conn->query($query);
		
		
	
	
        
		$_SESSION['success']    =   "Transport payment Entry process have been successfully completed.";
		header("location: transport.php");
		exit();
}


?>