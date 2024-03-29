<?php
/*******************************************************************************
 * The following code will
 * Store Receive entry data.
 * There are 4 table to keet track on receive data. The are following:
 * 1. inv_receive (Store single row)      
 * 2. inv_receivedetail (Store Multiple row)
 * 3. inv_materialbalance (Store Multiple row)
 * 4. inv_supplierbalance (Store single row)
 * *****************************************************************************
 */
if (isset($_POST['transfer_submit']) && !empty($_POST['transfer_submit'])) {
	
	// check duplicate:
	$transfer_id		= $_POST['transfer_id'];
    $table		= 'inv_transfermaster';
    $where		= "transfer_id='$transfer_id'";
    if(isset($_POST['transfer_update_submit']) && !empty($_POST['transfer_update_submit'])){
        $notWhere   =   "id!=".$_POST['transfer_update_submit'];
        $duplicatedata = isDuplicateData($table, $where, $notWhere);
    }else{
        $duplicatedata = isDuplicateData($table, $where);
    }
	if ($duplicatedata) {
		$status     =   'error';
		$_SESSION['warning']    =   "Operation faild. Duplicate data found..!";
    }else{
		    $no_of_material     =   0;// check 8/6/22:
    for ($count = 0; $count < count($_POST['quantity']); $count++) {
        
        /*
         *  Insert Data Into inv_transferdetail Table:
        */ 
        $transfer_date           = $_POST['transfer_date'];
		
        $transfer_id             = $transfer_id;
		
        $from_warehouse      	 = $_POST['from_warehouse'];
        $to_warehouse         = $_POST['to_warehouse'];
		


        $material_name      = $_POST['material_name'][$count];
        $material_id        = $_POST['material_id'][$count];
        $unit               = $_POST['unit'][$count];
        $quantity           = $_POST['quantity'][$count];
        $no_of_material     = $no_of_material+$quantity;
		
        $remarks            = $_POST['remarks'];        
               
        $query = "INSERT INTO `inv_tranferdetail` (`transfer_id`,`material_id`,`material_name`,`transfer_qty`,`unit`,`type`,`inwarehouse`,`outwarehouse`) VALUES ('$transfer_id','$material_id','$material_name','$quantity','$unit','1','$to_warehouse','$from_warehouse')";
        $conn->query($query);
        
        /*
         *  Insert Data Into inv_materialbalance Table:
        */
        $mb_ref_id      = $transfer_id;
        $mb_materialid  = $material_id;
        $mb_date        = (isset($transfer_date) && !empty($transfer_date) ? date('Y-m-d h:i:s', strtotime($transfer_date)) : date('Y-m-d h:i:s'));
        $mbfrom_in_qty       = 0;
        $mbfrom_out_qty      = $quantity;
        $mbfrom_type         = 'Transfer Out';
        $mbserial       = '1.1';
        $mbunit_id      = 2;
        $mbserial_id    = 0;
		$mbin_val		=0;
		$mbprice		=0;
        $jvno           = $transfer_id;       
        
        $query_outmb = "INSERT INTO `inv_materialbalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbin_val`,`mbout_qty`,`mbout_val`,`mbprice`,`mbtype`,`mbserial`,`mbserial_id`,`mbunit_id`,`jvno`, `warehouse_id`,`created_at`) VALUES ('$mb_ref_id','$mb_materialid','$mb_date','$mbfrom_in_qty','$mbin_val','$mbfrom_out_qty','$mbout_val','$mbprice','$mbfrom_type','$mbserial','$mbunit_id','$mbserial_id','$jvno','$from_warehouse','$mb_date')";
        $conn->query($query_outmb);
		
		
		$mbin_in_qty       	= $quantity;
        $mbin_out_qty      	= 0;
        $mbfrom_type		= 'Transfer In';
        $query_inmb = "INSERT INTO `inv_materialbalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbin_val`,`mbout_qty`,`mbout_val`,`mbprice`,`mbtype`,`mbserial`,`mbserial_id`,`mbunit_id`,`jvno`, `warehouse_id`) VALUES ('$mb_ref_id','$mb_materialid','$mb_date','$mbin_in_qty','$mbin_val','$mbin_out_qty','$mbout_val','$mbprice','$mbfrom_type','$mbserial','$mbunit_id','$mbserial_id','$jvno','$to_warehouse')";
        $conn->query($query_inmb);
    }
    /*
    *  Insert Data Into inv_transfermaster Table:
    */
    $query2 = "INSERT INTO `inv_transfermaster` (`transfer_id`,`transfer_date`,`from_warehouse`,`to_warehouse`,`remarks`) VALUES ('$transfer_id','$transfer_date','$from_warehouse','$to_warehouse','$remarks')";
    $result2 = $conn->query($query2);    
  
    
    $_SESSION['success']    =   "warehouse transfer process have been successfully completed.";
    header("location: warehousetransfer_entry.php");
    exit();
	}

}
//this function call send refer warehousetransfer_edit.php file ar vitor

function getwarehousetransferDataDetailsById($id){
    global $conn;
    $receieves      =   "";
    $receiveDetails =   "";
    
    // get receive data
    $sql1           = "SELECT * FROM inv_transfermaster where id=".$id;
    $result1        = $conn->query($sql1);

    if ($result1->num_rows > 0) {
        $receieves = $result1->fetch_object();
        // get receive details data
        $table                  =   'inv_tranferdetail where transfer_id='."'$receieves->transfer_id'";
        $order                  =   'DESC';
        $column                 =   'transfer_qty';
        $dataType               =   'obj';
        $receiveDetailsData     = getTableDataByTableName($table, $order, $column, $dataType);
        if(isset($receiveDetailsData) && !empty($receiveDetailsData)){
            $receiveDetails     =   $receiveDetailsData;
        }
    }
    $feedbackData   =   [
        'receiveData'           =>  $receieves,
        'receiveDetailsData'    =>  $receiveDetails
    ];
    
    return $feedbackData;
}












if(isset($_POST['transfer_update_submit']) && !empty($_POST['transfer_update_submit'])){


    $edit_id            =   $_POST['edit_id'];     //warehousetransfer_edit.php file thekay name="edit_id" 
    $transfer_id        =   $_POST['transfer_id']; //


    
    // first delete all from inv_tranferdetail; 
    $delsql    = "DELETE FROM `inv_tranferdetail` WHERE `transfer_id`='$transfer_id'";
    $conn->query($delsql);
    // first delete all from inv_materialbalance; 
    $delsq2    = "DELETE FROM `inv_materialbalance` WHERE `mb_ref_id`='$transfer_id'";
    $conn->query($delsq2);
	

    for ($count = 0; $count < count($_POST['quantity']); $count++) {
        
  /*    Insert Data Into inv_transferdetail Table: */
               
        
        $transfer_date      = $_POST['transfer_date'];
        $transfer_id        = $_POST['transfer_id'];
        $from_warehouse     = $_POST['from_warehouse'];
        $to_warehouse       = $_POST['to_warehouse'];
	    $material_name      = $_POST['material_name'][$count];
        $material_id        = $_POST['material_id'][$count];
        $unit               = $_POST['unit'][$count];
        $quantity           = $_POST['quantity'][$count];
       
		$remarks            = $_POST['remarks'];  
				
				
     $query = "INSERT INTO `inv_tranferdetail` (`transfer_id`,`material_id`,`material_name`,`transfer_qty`,`unit`,`type`,`inwarehouse`,`outwarehouse`) VALUES ('$transfer_id','$material_id','$material_name','$quantity','$unit','1','$to_warehouse','$from_warehouse')";
        $conn->query($query);
 
 /*   Insert Data Into inv_materialbalance Table: */
				
        $mb_ref_id      = $transfer_id;
        $mb_materialid  = $material_id;
        $mb_date        = (isset($transfer_date) && !empty($transfer_date) ? date('Y-m-d h:i:s', strtotime($transfer_date)) : date('Y-m-d h:i:s'));
        $mbfrom_in_qty       = 0;
        $mbfrom_out_qty      = $quantity;
        $mbfrom_type         = 'Transfer Out';
        $mbserial       = '1.1';
        $mbunit_id      = 2;
        $mbserial_id    = 0;
		$mbin_val		=0;
		$mbprice		=0;
        $jvno           = $transfer_id;       
        
        $query_outmb = "INSERT INTO `inv_materialbalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbin_val`,`mbout_qty`,`mbout_val`,`mbprice`,`mbtype`,`mbserial`,`mbserial_id`,`mbunit_id`,`jvno`, `warehouse_id`,`created_at`) VALUES ('$mb_ref_id','$mb_materialid','$mb_date','$mbfrom_in_qty','$mbin_val','$mbfrom_out_qty','$mbout_val','$mbprice','$mbfrom_type','$mbserial','$mbunit_id','$mbserial_id','$jvno','$from_warehouse','$mb_date')";
        $conn->query($query_outmb);
		
		
		$mbin_in_qty       	= $quantity;
        $mbin_out_qty      	= 0;
        $mbfrom_type		= 'Transfer In';
		
        $query_inmb = "INSERT INTO `inv_materialbalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbin_val`,`mbout_qty`,`mbout_val`,`mbprice`,`mbtype`,`mbserial`,`mbserial_id`,`mbunit_id`,`jvno`, `warehouse_id`) VALUES ('$mb_ref_id','$mb_materialid','$mb_date','$mbin_in_qty','$mbin_val','$mbin_out_qty','$mbout_val','$mbprice','$mbfrom_type','$mbserial','$mbunit_id','$mbserial_id','$jvno','$to_warehouse')";
        $conn->query($query_inmb);
    }
    

      /*    Update Data Into inv_transfermaster Table: */
    $query2    = "UPDATE inv_transfermaster SET transfer_id='$transfer_id',transfer_date='$transfer_date',from_warehouse='$from_warehouse',to_warehouse='$to_warehouse',remarks='$remarks' WHERE id=$edit_id";
    $result2 = $conn->query($query2);
	

    $_SESSION['success']    =   "warehouse transfer process have been successfully updated.";
    header("location: warehousetransfer_edit.php?edit_id=".$edit_id);
    exit();
}


?>