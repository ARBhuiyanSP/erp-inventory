<?php
/*******************************************************************************
 * The following code will
 * Insert Project Info at projects table
 */
if (isset($_POST['party_payment_submit']) && !empty($_POST['party_payment_submit'])) {
	
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
         *  Insert Data Into inv_receivedetail Table:
        */ 
        $voucherid	        = $_POST['voucherid'];
		$voucherdate		= $_POST['voucherdate'];
		
		$partner_id 		= $_POST['partner_id'];
		
		$party_id		    = $_POST['party_id'];
		$paymenttype		= $_POST['paymenttype'];
		$amount		        = $_POST['amount'];
	    $remarks		    = $_POST['remarks'];
		$warehouse_id   	= $_POST['warehouse_id'];
		$receivermode   	= $_POST['receivermode'];
		
		
		

		
		
               
         $query = "INSERT INTO `party_payment` (`voucherid`,`voucherdate`,`warehouse_id`,`partner_id`,`partyid`,`paymenttype`,`amount`,`remarks`,`receivermode`) VALUES ('$voucherid','$voucherdate','$warehouse_id',$partner_id,'$party_id','$paymenttype','$amount','$remarks','$receivermode')";
        $conn->query($query);
		
		
		
		
		  $query3 = "INSERT INTO `inv_partybalance` (`pb_ref_id`,`warehouse_id`,`pb_date`,`partner_id`,`pb_party_id`,`pb_dr_amount`,`pb_cr_amount`,`pb_remark`,`pb_partac_id`,`receivermode`) VALUES ('$voucherid',$warehouse_id,'$voucherdate','$partner_id','$party_id','0','$amount','$remarks','$voucherid','$receivermode')";
          $result2 = $conn->query($query3);
	
	
	
        
		$_SESSION['success']    =   "Party payment Entry process have been successfully completed.";
		header("location: party_payment.php");
		exit();
}


?>