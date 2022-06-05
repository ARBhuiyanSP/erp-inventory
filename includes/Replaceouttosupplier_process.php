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
if (isset($_POST['Replaceouttosupplier_submit']) && !empty($_POST['Replaceouttosupplier_submit'])) {
 

    for ($count = 0; $count < count($_POST['quantity']); $count++) {
        
        /*
         *  Insert Data Into inv_damageoutdetail Table:
        */       
        
        $ros_date		= $_POST['ros_date'];
        $ros_id			= $_POST['ros_id'];
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
    
            /*  Insert Data Into inv_replaceOUTsupplierdetails Table: talk with ma motors*/
			
        $query = "INSERT INTO `inv_replaceOUTsupplierdetails` (`ros_id`,`ros_date`,`material_id`,`material_name`,`unit`,`return_qty`,`return_price`,`part_no`,`project_id`,`warehouse_id`) VALUES ('$ros_id','$ros_date','$material_id','$material_name','$unit','$quantity','$unit_price','$part_no','$project_id','$warehouse_id')";
        $conn->query($query);
        
       
         /*  Insert Data Into inv_replacesupplierbalance Table: talk with ma motors*/
       
        $mb_ref_id      = $ros_id;
        $mb_materialid  = $material_id;
        $mb_date        = (isset($ros_date) && !empty($ros_date) ? date('Y-m-d h:i:s', strtotime($ros_date)) : date('Y-m-d h:i:s'));
        $mbin_qty       = 0;
        $mbin_val       = 0;
        $mbout_qty      = $quantity;
        $mbtype         = 'REPLACE OUT';
        $mbunit_id      = $project_id;
                    
        
        $query_inmb = "INSERT INTO `inv_replacesupplierbalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbout_qty`,`mbtype`,`mbunit_id`,`warehouse_id`,`supplier_id`,`party_id`,`remarks`,`created_at`) VALUES ('$mb_ref_id','$mb_materialid','$mb_date','$mbin_qty','$mbout_qty','$mbtype','$mbunit_id','$warehouse_id','$supplier_id','$party_id','$remarks','$mb_date')";
        $conn->query($query_inmb);
    }
    /*
    *  Insert Data Into inv_replaceOUTsupplier Table:
    */
   
    
    $query2 		= "INSERT INTO `inv_replaceOUTsupplier` (`ros_id`,`ros_date`,`remarks`,`project_id`,`warehouse_id`,`supplier_id`,`party_id`) VALUES ('$ros_id','$ros_date','$remarks','$project_id','$warehouse_id','$supplier_id','$party_id')";
    $result2 = $conn->query($query2);
    
    $_SESSION['success']    =   "Supplier Replace Out Data process have been successfully completed.";
    header("location: replaceOutToSupplier.php");
    exit();
}




function getReplacesupplierOUTDataDetailsById($id){
    global $conn;
    $receieves      =   "";
    $receiveDetails =   "";
    
	
    // get receive data
	
	
	
    $sql1           = "SELECT * FROM inv_replaceOUTsupplier where id=".$id;
    $result1        = $conn->query($sql1);

    if ($result1->num_rows > 0) {
        $receieves = $result1->fetch_object();
		
		
        // get receive details data
		
		
        $table                  =   'inv_replaceOUTsupplierdetails where ros_id='."'$receieves->ros_id'";
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

if(isset($_POST['replaceOutToSupplier_update_submit']) && !empty($_POST['replaceOutToSupplier_update_submit'])){
   
    $edit_id            =   $_POST['edit_id'];
    $ros_id             =   $_POST['ros_id'];
    

	
	  // first delete all from inv_replaceOUTsupplierdetails; 
    $delsql    = "DELETE FROM inv_replaceOUTsupplierdetails WHERE 	ros_id='$ros_id'";
    $conn->query($delsql);
	
	
	
    // first delete all from inv_replacesupplierbalance; 
    $delsq2    = "DELETE FROM inv_replacesupplierbalance WHERE mb_ref_id='$ros_id'";
    $conn->query($delsq2);
    
    
    for ($count = 0; $count < count($_POST['quantity']); $count++) {
        
        /*
         *  Insert Data Into inv_replaceOUTsupplierdetails Table:
        */       
        
        $ros_date		= $_POST['ros_date'];
        $ros_id			= $_POST['ros_id'];
		
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
   
    

	
	
    
            /*  Insert Data Into inv_replaceOUTsupplierdetails Table: talk with ma motors*/
			
        $query = "INSERT INTO `inv_replaceOUTsupplierdetails` (`ros_id`,`ros_date`,`material_id`,`material_name`,`unit`,`return_qty`,`return_price`,`part_no`,`project_id`,`warehouse_id`) VALUES ('$ros_id','$ros_date','$material_id','$material_name','$unit','$quantity','$unit_price','$part_no','$project_id','$warehouse_id')";
        $conn->query($query);
        
       
         /*  Insert Data Into inv_replacesupplierbalance Table: talk with ma motors*/
       
        $mb_ref_id      = $ros_id;
        $mb_materialid  = $material_id;
        $mb_date        = (isset($ros_date) && !empty($ros_date) ? date('Y-m-d h:i:s', strtotime($ros_date)) : date('Y-m-d h:i:s'));
        $mbin_qty       = 0;
        $mbin_val       = 0;
        $mbout_qty      = $quantity;
        $mbtype         = 'REPLACE OUT';
        $mbunit_id      = $project_id;
                    
        
        $query_inmb = "INSERT INTO `inv_replacesupplierbalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbout_qty`,`mbtype`,`mbunit_id`,`warehouse_id`,`supplier_id`,`party_id`,`remarks`,`created_at`) VALUES ('$mb_ref_id','$mb_materialid','$mb_date','$mbin_qty','$mbout_qty','$mbtype','$mbunit_id','$warehouse_id','$supplier_id','$party_id','$remarks','$mb_date')";
        $conn->query($query_inmb);
    }
	
	
   $query2    = "UPDATE inv_replaceOUTsupplier SET ros_id='$ros_id',ros_date='$ros_date',remarks='$remarks',project_id='$project_id',warehouse_id='$warehouse_id',supplier_id='$supplier_id' WHERE id=$edit_id"; //WHERE id=$edit_id"; first coloumn
    $result2 = $conn->query($query2);
	
	
  
    
    $_SESSION['success']    =   "Supplier Replace Out Data process have been successfully completed.";
    header("location: replaceOutToSupplier_edit.php?edit_id=$edit_id");//edit_id=$edit_id"
    exit();
}

?>