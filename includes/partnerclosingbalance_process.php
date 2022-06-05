<?php
/*******************************************************************************
 * The following code two file
*/
              // partyclosing_submit        party_payment.php 
if (isset($_POST['partnerclosing_submit']) && !empty($_POST['partnerclosing_submit'])) {
	
        $tranid	        	= 'OP';
		$trandate			= $_POST['trandate'];
		$partner_id 		= $_POST['partner_id'];
	    $expensedesc		= 'OP';
		$trantype		    = 'OP';
		$amountdeposit		= $_POST['amountdeposit'];
		$amountwithdraw		= $_POST['amountwithdraw'];
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
		

                                           // UPDATE partnerpayment    
       $query3 = "UPDATE partnerpayment SET tranid='$tranid',trandate='$trandate',partner_id='$partner_id',expensedesc='$expensedesc',trantype='$trantype',	amountdeposit='$amountdeposit',amountwithdraw='$amountwithdraw',warehouse_id='$warehouse_id' WHERE tranid='$tranid'";
            $result3 = $conn->query($query3);

		$_SESSION['success']    =   "Partner payment Update process have been successfully completed.";
		header("location: partnerclosing_Balance.php");
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
					$duplicate_sql 		= "SELECT * from partnerpayment WHERE tranid= 'OP' AND partner_id = '$partner_id'";
					$duplicate_result	= mysqli_query($conn, $duplicate_sql);
                    if($duplicate_result->num_rows > 0){
					$_SESSION['error']    =   "This Partner Id opening balance data already have been saved";
					header("location: partnerclosing_Balance.php");
					exit();}
							
		                      //INSERT  partnerpayment 
 $query5 = "INSERT INTO `partnerpayment`(`tranid`,`trandate`,`partner_id`,`expensedesc`,`trantype`,`amountdeposit`,`amountwithdraw`,`warehouse_id`) VALUES ('OP','$trandate','$partner_id','$expensedesc','$trantype','$amountdeposit','$amountwithdraw','$warehouse_id')";
           $result2 = $conn->query($query5);
		$_SESSION['success']    =   "Partner OPENING BALANCE process have been successfully completed.";
		header("location: partnerclosing_Balance.php");
		exit();
	}			
}
?>