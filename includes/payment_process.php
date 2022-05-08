<?php
/*******************************************************************************
 * The following code will
 * Insert Project Info at projects table
 */
if (isset($_POST['payment_submit']) && !empty($_POST['payment_submit'])) {

        $sp_photo= '';
        /*
         *  Insert Data Into inv_receivedetail Table:
        */ 
        $voucherid	        = $_POST['voucherid'];
		$voucherdate		= $_POST['voucherdate'];
		$supplierid		    = $_POST['supplierid'];
		$paymenttype		= $_POST['paymenttype'];
		$amount		        = $_POST['amount'];
		$receivermode		= $_POST['receivermode'];
		
	    $remarks		    = $_POST['remarks'];

		if (is_uploaded_file($_FILES['sn_prt_image']['tmp_name'])) 
		{
			$temp_file=$_FILES['sn_prt_image']['tmp_name'];
			$sp_photo=time().$_FILES['sn_prt_image']['name'];
			$q = move_uploaded_file($temp_file,"images/".$sp_photo);
		}

		
               
         $query = "INSERT INTO `supplier_payment` (`voucherid`,`voucherdate`,`supplierid`,`paymenttype`,`amount`,`receivermode`,`remarks`,`sp_photo`) VALUES ('$voucherid','$voucherdate','$supplierid','$paymenttype','$amount','$receivermode','$remarks','$sp_photo')";
        $conn->query($query);
		
		
		
		
		  $query3 = "INSERT INTO `inv_supplierbalance` (`sb_ref_id`,`sb_date`,`sb_supplier_id`,`sb_dr_amount`,`sb_cr_amount`,`receivermode`,`paymenttype`,`sb_remark`,`sb_partac_id`) VALUES ('$voucherid','$voucherdate','$supplierid','$amount','0','$receivermode','$paymenttype','$remarks','$voucherid')";
          $result2 = $conn->query($query3);
	
	
	
        
		$_SESSION['success']    =   "supplier payment Entry process have been successfully completed.";
		header("location: payment_entry.php");
		exit();
}


?>