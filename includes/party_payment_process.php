<?php
/*******************************************************************************
 * The following code two file
 party_payment.php
 party_payment_process.php

 */
              // party_payment_submit        party_payment.php 
if (isset($_POST['party_payment_submit']) && !empty($_POST['party_payment_submit'])) {
	
	
        $voucherid	        = $_POST['voucherid'];
		$voucherdate		= $_POST['voucherdate'];
		$partner_id 		= $_POST['partner_id'];
		$party_id		    = $_POST['party_id'];
		$paymenttype		= $_POST['paymenttype'];
			
		$amount		        = $_POST['amount'];
	    $remarks		    = $_POST['remarks'];
		$warehouse_id   	= $_POST['warehouse_id'];
		$receivermode   	= $_POST['receivermode'];
	
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

		    $query2    = "UPDATE party_payment SET voucherid='$voucherid',voucherdate='$voucherdate',warehouse_id='$warehouse_id',partner_id='$partner_id',partyid='$party_id',paymenttype='$paymenttype',amount='$amount',remarks='$remarks',receivermode='$receivermode' WHERE id=$edit_id";
            $result2 = $conn->query($query2);
		
 
                                           // UPDATE inv_partybalance    //pb_dr_amount=0
       $query3 = "UPDATE inv_partybalance SET warehouse_id='$warehouse_id',pb_date='$voucherdate',partner_id='$partner_id',pb_party_id='$party_id',pb_dr_amount='0',pb_cr_amount='$amount',pb_remark='$remarks',pb_partac_id='$voucherid',receivermode='$receivermode' WHERE pb_ref_id='$voucherid'";
            $result3 = $conn->query($query3);
		

        
		$_SESSION['success']    =   "Party payment Update process have been successfully completed.";
		header("location: party_payment.php");
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
								
								//INSERT  party_payment 
               
        $query = "INSERT INTO `party_payment` (`voucherid`,`voucherdate`,`warehouse_id`,`partner_id`,`partyid`,`paymenttype`,`amount`,`remarks`,`receivermode`) VALUES ('$voucherid','$voucherdate','$warehouse_id',$partner_id,'$party_id','$paymenttype','$amount','$remarks','$receivermode')";
        $conn->query($query);
		
		
		
		                      //INSERT  inv_partybalance 
$query5 = "INSERT INTO `inv_partybalance` (`pb_ref_id`,`warehouse_id`,`pb_date`,`partner_id`,`pb_party_id`,`pb_dr_amount`,`pb_cr_amount`,`pb_remark`,`pb_partac_id`,`receivermode`) VALUES ('$voucherid',$warehouse_id,'$voucherdate','$partner_id','$party_id','0','$amount','$remarks','$voucherid','$receivermode')";
           $result2 = $conn->query($query5);
	
	
	
        
		$_SESSION['success']    =   "Party payment Entry process have been successfully completed.";
		header("location: party_payment.php");
		exit();
	}			
}
?>