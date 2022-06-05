<?php
/*******************************************************************************
 * The following code will
 * Store Return entry data.
 * There are 4 table to keet track on receive data. The are following:
 * 1. inv_return (Store single row)      
 * 2. inv_returndetail (Store Multiple row)
 * 3. inv_materialbalance (Store Multiple row)
 * *****************************************************************************
 */
if (isset($_POST['Replacereceivefromsupplier_submit']) && !empty($_POST['Replacereceivefromsupplier_submit'])) {
  
    for ($count = 0; $count < count($_POST['quantity']); $count++) {
        
        /*
         *  Insert Data Into inv_replacerecivesupplierdetails Table:
        */       
        
        $rrs_date		= $_POST['rrs_date'];
        $rrs_id			= $_POST['rrs_id'];
        $material_name      = $_POST['material_name'][$count];
        $material_id        = $_POST['material_id'][$count];
        $unit               = $_POST['unit'][$count];
        $part_no            = $_POST['part_no'][$count];
        $quantity           = $_POST['quantity'][$count];
        $unit_price         = 1;
  
        $project_id         = $_POST['project_id'];
        $remarks            = $_POST['remarks'];     
     
        $warehouse_id		=	$_SESSION['logged']['warehouse_id'];
		
        $supplier_id 		= $_POST['supplier_id'];
      
		
		
		
            /*  Insert Data Into inv_replacerecivesupplierdetails */
			
        $query = "INSERT INTO `inv_replacerecivesupplierdetails` (`rrs_id`,`rrs_date`,`material_id`,`material_name`,`unit`,`return_qty`,`return_price`,`part_no`,`project_id`,`warehouse_id`) VALUES ('$rrs_id','$rrs_date','$material_id','$material_name','$unit','$quantity','$unit_price','$part_no','$project_id','$warehouse_id')";
        $conn->query($query);
        
       
         /*  Insert Data Into inv_replacesupplierbalance */
       
        $mb_ref_id      = $rrs_id;
        $mb_materialid  = $material_id;
        $mb_date        = (isset($rrs_date) && !empty($rrs_date) ? date('Y-m-d h:i:s', strtotime($rrs_date)) : date('Y-m-d h:i:s'));
        $mbin_qty       = $quantity;
        $mbin_val       = 0;
        $mbout_qty      = 0;
        $mbout_val      = 0;
        $mbprice        = 0;
        $mbtype         = 'REPLACE RECEIVE';
        $mbunit_id      = $project_id;
                    
        
        $query_inmb = "INSERT INTO `inv_replacesupplierbalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbout_qty`,`mbtype`,`mbunit_id`,`warehouse_id`,`supplier_id`,`party_id`,`remarks`,`created_at`) VALUES ('$mb_ref_id','$mb_materialid','$mb_date','$mbin_qty','$mbout_qty','$mbtype','$mbunit_id','$warehouse_id','$supplier_id','$party_id','$remarks','$mb_date')";
        $conn->query($query_inmb);
    }
    /*
    *  Insert Data Into inv_replacerecivesupplier Table:
    */
    
    $damage_date	= $_POST['damage_date'];
    $buyer_id       = $_POST['project_id'];
    $posted_to_gl   = 0;
    $remarks        = $_POST['remarks'];
    $return_type	= 'return';
    $return_unit_id	= 'return';
    $chk_year_end   = 0;
    $no_of_material = $no_of_material;
    $issue_total    = $receive_total;
    $indent_no      = '1';
    $receiver_name  = $_POST['receiver_name'];
    
    $query2 		= "INSERT INTO `inv_replacerecivesupplier` (`rrs_id`,`rrs_date`,`remarks`,`project_id`,`warehouse_id`,`supplier_id`,`party_id`) VALUES ('$rrs_id','$rrs_date','$remarks','$project_id','$warehouse_id','$supplier_id','$party_id')";
    $result2 = $conn->query($query2);
    
    $_SESSION['success']    =   "Replace recive supplier Data process have been successfully completed.";
    header("location: replaceReceiveFromSupplier.php");
    exit();
}





function getReplaceRecSupplierDataDetailsById($id){
    global $conn;
    $receieves      =   "";
    $receiveDetails =   "";
    
    // get receive data
    $sql1           = "SELECT * FROM inv_replacerecivesupplier where id=".$id;
    $result1        = $conn->query($sql1);

    if ($result1->num_rows > 0) {
        $receieves = $result1->fetch_object();
        // get receive details data
        $table                  =   'Inv_replacerecivesupplierdetails where rrs_id='."'$receieves->rrs_id'";
        $order                  =   'DESC';
        $column                 =   'return_qty';
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


/*******************************************************************************
 * The following code will
 * Update Receive entry data.
 * There are 4 table to keet track on receive data. The are following:
 * 1. inv_receive (Update single row)      
 * 2. inv_receivedetail (First Delete all rows then Store Multiple row)
 * 3. inv_materialbalance (First Delete all rows then Store Multiple row)
 * 4. inv_supplierbalance (Update single row)
 * *****************************************************************************
 */

if(isset($_POST['replaceReceiveToSupplier_update_submit']) && !empty($_POST['replaceReceiveToSupplier_update_submit'])){
     $edit_id            =   $_POST['edit_id'];
    $rrs_id             =   $_POST['rrs_id'];
    

	
	  // first delete all from inv_replacerecivesupplierdetails; 
    $delsql    = "DELETE FROM inv_replacerecivesupplierdetails WHERE 	rrs_id='$rrs_id'";
    $conn->query($delsql);
	
	
	
    // first delete all from inv_replacesupplierbalance; 
    $delsq2    = "DELETE FROM inv_replacesupplierbalance WHERE mb_ref_id='$rrs_id'";
    $conn->query($delsq2);
    
    
    for ($count = 0; $count < count($_POST['quantity']); $count++) {
        
        /*
         *  Insert Data Into inv_replaceOUTsupplierdetails Table:
        */       
        
        $rrs_date		= $_POST['rrs_date'];
        $rrs_id			= $_POST['rrs_id'];
		
        $material_name      = $_POST['material_name'][$count];
        $material_id        = $_POST['material_id'][$count];
        $unit               = $_POST['unit'][$count];
        $part_no            = $_POST['part_no'][$count];
        $quantity           = $_POST['quantity'][$count];
    
        $unit_price         = 1;
        $project_id         = $_POST['project_id'];
        $remarks            = $_POST['remarks'];     
        $warehouse_id		=	$_SESSION['logged']['warehouse_id'];
	    $supplier_id 		= $_POST['supplier_id'];
		
		
		
		  /*
    *  Insert Data Into inv_replaceOUTsupplier Table:
    */
   
    

	
	
    
            /*  Insert Data Into inv_replacerecivesupplierdetails Table: talk with ma motors*/
			
        $query = "INSERT INTO `inv_replacerecivesupplierdetails` (`rrs_id`,`rrs_date`,`material_id`,`material_name`,`unit`,`return_qty`,`return_price`,`part_no`,`project_id`,`warehouse_id`) VALUES ('$rrs_id','$rrs_date','$material_id','$material_name','$unit','$quantity','$unit_price','$part_no','$project_id','$warehouse_id')";
        $conn->query($query);
        
       
         /*  Insert Data Into inv_replacesupplierbalance Table: talk with ma motors*/
       
        $mb_ref_id      = $rrs_id;
        $mb_materialid  = $material_id;
        $mb_date        = (isset($rrs_date) && !empty($rrs_date) ? date('Y-m-d h:i:s', strtotime($rrs_date)) : date('Y-m-d h:i:s'));
        $mbin_qty       = 0;
        $mbin_val       = 0;
        $mbout_qty      = $quantity;
        $mbtype         = 'REPLACE RECEIVE';
        $mbunit_id      = $project_id;
                    
        
        $query_inmb = "INSERT INTO `inv_replacesupplierbalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbout_qty`,`mbtype`,`mbunit_id`,`warehouse_id`,`supplier_id`,`party_id`,`remarks`,`created_at`) VALUES ('$mb_ref_id','$mb_materialid','$mb_date','$mbin_qty','$mbout_qty','$mbtype','$mbunit_id','$warehouse_id','$supplier_id','$party_id','$remarks','$mb_date')";
        $conn->query($query_inmb);
    }
	
	
   $query2    = "UPDATE inv_replacerecivesupplier SET rrs_id='$rrs_id',rrs_date='$rrs_date',remarks='$remarks',project_id='$project_id',warehouse_id='$warehouse_id',supplier_id='$supplier_id' WHERE id=$edit_id"; //WHERE id=$edit_id"; first coloumn
    $result2 = $conn->query($query2);
	
	
  
    
    $_SESSION['success']    =   "Supplier Replace Receive Data process have been successfully completed.";
    header("location: replacereceivefromsupplier_edit.php?edit_id=$edit_id");//edit_id=$edit_id"
    exit();
}

?>