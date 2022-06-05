<?php
/*******************************************************************************
 * The following code will
 * Insert Project Info at projects table
 */
if (isset($_POST['party_submit']) && !empty($_POST['party_submit'])) {

        $party_id	= $_POST['party_id'];
        $partyname	= $_POST['partyname'];    
        $partner_id		= $_POST['partner_id']; 
        $serial		= $_POST['serial'];	


	                    if(isset($_POST['edit_id']) && !empty($_POST['edit_id'])){
		
		                         $edit_id            =   $_POST['edit_id']; 

		
		
		    $query2    = "UPDATE party SET party_id='$party_id',partyname='$partyname',partner_id='$partner_id' WHERE id=$edit_id";
            $result2 = $conn->query($query2);
			
	
		$_SESSION['success']    =   "party update process have been successfully completed.";
		header("location: party_entry.php");
		exit();
		
		                                           }else{
	
	

        $query = "INSERT INTO `party` (`party_id`,`partyname`,`partner_id`,`serial`) VALUES ('$party_id','$partyname','$partner_id','$serial')";
        $conn->query($query);
	
	
        
		$_SESSION['success']    =   "Party Entry process have been successfully completed.";
		header("location: party_entry.php");
		exit();
		
		
}



}

?>