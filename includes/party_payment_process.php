<?php
/*******************************************************************************
 * The following code will
 * Insert Project Info at projects table
 */
if (isset($_POST['party_payment_submit']) && !empty($_POST['party_payment_submit'])) {

        
        /*
         *  Insert Data Into inv_receivedetail Table:
        */ 
        $voucherid	        = $_POST['voucherid'];
		$voucherdate		= $_POST['voucherdate'];
		$party_id		    = $_POST['party_id'];
		$paymenttype		= $_POST['paymenttype'];
		$amount		        = $_POST['amount'];
	    $remarks		    = $_POST['remarks'];

		if (is_uploaded_file($_FILES['sn_prt_image']['tmp_name'])) 
		{
			$temp_file=$_FILES['sn_prt_image']['tmp_name'];
			$sp_photo=time().$_FILES['sn_prt_image']['name'];
			$q = move_uploaded_file($temp_file,"images/".$sp_photo);
		}

		
               
        $query = "INSERT INTO `party_payment` (`voucherid`,`voucherdate`,`partyid`,`paymenttype`,`amount`,`remarks`,`sp_photo`) VALUES ('$voucherid','$voucherdate','$party_id','$paymenttype','$amount','$remarks','$sp_photo')";
        $conn->query($query);
		
		
		
		
		  $query3 = "INSERT INTO `inv_partybalance` (`pb_ref_id`,`pb_date`,`pb_party_id`,`pb_dr_amount`,`pb_cr_amount`,`pb_remark`,`pb_partac_id`) VALUES ('$voucherid','$voucherdate','$party_id','0','$amount','$remarks','$voucherid')";
          $result2 = $conn->query($query3);
	
	
	
        
		$_SESSION['success']    =   "Party payment Entry process have been successfully completed.";
		header("location: party_payment.php");
		exit();
}


?>