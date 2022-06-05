<?php
/*******************************************************************************
 * The following code two file
 party_payment.php
 party_payment_process.php

 */
              // partyclosing_submit        party_payment.php 
if (isset($_POST['partyclosing_submit']) && !empty($_POST['partyclosing_submit'])) {
	
	
        $voucherid	        = 'OP';
		$voucherdate		= $_POST['voucherdate'];
		$partner_id 		= $_POST['partner_id'];
		$party_id		    = $_POST['party_id'];
		$paymenttype		= 'OP';
			
		$dramount		        = $_POST['dramount'];
		$cramount		        = $_POST['cramount'];
	    $remarks		    = 'OP';
		$warehouse_id   	= $_POST['warehouse_id'];
		$receivermode   	= 'OP';
	
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

 
                                           // UPDATE inv_partybalance    //pb_dr_amount=0
       $query3 = "UPDATE inv_partybalance SET warehouse_id='$warehouse_id',pb_date='$voucherdate',partner_id='$partner_id',pb_party_id='$party_id',pb_dr_amount='$dramount',pb_cr_amount='$cramount',pb_remark='$remarks',pb_partac_id='$voucherid',receivermode='$receivermode' WHERE pb_ref_id='$voucherid'";
            $result3 = $conn->query($query3);
		

        
		$_SESSION['success']    =   "Party payment Update process have been successfully completed.";
		header("location: partyclosing_Balance.php");
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
					$duplicate_sql 		= "SELECT * from inv_partybalance WHERE pb_ref_id= 'OP' AND pb_party_id = '$party_id'";
					$duplicate_result	= mysqli_query($conn, $duplicate_sql);
                    if($duplicate_result->num_rows > 0){
					$_SESSION['error']    =   "Data have been already existed with this Party Id;";
					header("location: partyclosing_Balance.php");
					exit();}
								
								
								
		
		                      //INSERT  inv_partybalance 
 $query5 = "INSERT INTO `inv_partybalance` (`pb_ref_id`,`warehouse_id`,`pb_date`,`partner_id`,`pb_party_id`,`pb_dr_amount`,`pb_cr_amount`,`pb_remark`,`pb_partac_id`,`receivermode`) VALUES ('OP',$warehouse_id,'$voucherdate','$partner_id','$party_id','$dramount','$cramount','OP','$voucherid','OP')";
           $result2 = $conn->query($query5);
	
	
	
        
		$_SESSION['success']    =   "Party OPENING BALANCE process have been successfully completed.";
		header("location: partyclosing_Balance.php");
		exit();
	}			
}
?>