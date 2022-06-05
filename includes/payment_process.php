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
		$warehouse_id		= $_POST['warehouse_id'];
	    $remarks		    = $_POST['remarks'];
		
		
			if(isset($_POST['edit_id']) && !empty($_POST['edit_id'])){
		
		$edit_id            =   $_POST['edit_id']; //name="edit_id"  party_payment.php file

		if (is_uploaded_file($_FILES['sn_prt_image']['tmp_name'])) 
		{
			$temp_file=$_FILES['sn_prt_image']['tmp_name'];
			$sp_photo=time().$_FILES['sn_prt_image']['name'];
			$q = move_uploaded_file($temp_file,"images/".$sp_photo);
		}

		
         
		
		    $query2    = "UPDATE supplier_payment SET voucherdate='$voucherdate',supplierid='$supplierid',paymenttype='$paymenttype',amount='$amount',receivermode='$receivermode',remarks='$remarks' WHERE id=$edit_id";
            $result2 = $conn->query($query2);
		
		
		// UPDATE inv_supplierbalance    //pb_dr_amount=0
        $query3 = "UPDATE inv_supplierbalance SET warehouse_id='$warehouse_id',sb_date='$voucherdate',sb_supplier_id='$supplierid',sb_dr_amount='$amount',sb_cr_amount='0',receivermode='$receivermode',paymenttype='$paymenttype',sb_remark='$remarks',sb_partac_id='$voucherid' WHERE sb_ref_id='$voucherid'";
	   
            $result3 = $conn->query($query3);
		
		 
	
	
	
        
		$_SESSION['success']    =   "supplier payment Entry process have been successfully completed.";
		header("location: payment_entry.php");
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
				 // UPDATE supplier_payment    //pb_dr_amount=0				
								     
        $query = "INSERT INTO `supplier_payment` (`voucherid`,`voucherdate`,`supplierid`,`paymenttype`,`amount`,`receivermode`,`remarks`,`sp_photo`) VALUES ('$voucherid','$voucherdate','$supplierid','$paymenttype','$amount','$receivermode','$remarks','$sp_photo')";
        
		$conn->query($query);
		
		
	
	 $query5 = "INSERT INTO `inv_supplierbalance` (`sb_ref_id`,`warehouse_id`,`sb_date`,`sb_supplier_id`,`sb_dr_amount`,`sb_cr_amount`,`receivermode`,`paymenttype`,`sb_remark`,`sb_partac_id`) VALUES ('$voucherid','$warehouse_id','$voucherdate','$supplierid','$amount','0','$receivermode','$paymenttype','$remarks','$voucherid')";
     $result2 = $conn->query($query5);
	 
	
	
        
		$_SESSION['success']    =   "Party payment Entry process have been successfully completed.";
		header("location: payment_entry.php");
		exit();
	}			
}
?>