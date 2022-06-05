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
if (isset($_POST['damage_submit']) && !empty($_POST['damage_submit'])) {
  
    for ($count = 0; $count < count($_POST['quantity']); $count++) {
        
        /*
         *  Insert Data Into inv_damagedetail Table:
        */       
        
        $damage_date		= $_POST['damage_date'];
        $damage_id			= $_POST['damage_id'];
        $material_name      = $_POST['material_name'][$count];
        $material_id        = $_POST['material_id'][$count];
        $unit               = $_POST['unit'][$count];
        $part_no            = $_POST['part_no'][$count];
        $quantity           = $_POST['quantity'][$count];
        $unit_price         = $_POST['unit_price'][$count];
        $project_id         = $_POST['project_id'];
        $remarks            = $_POST['remarks'];     
        $warehouse_id		= $_SESSION['logged']['warehouse_id'];
        $partner_id 		= $_POST['partner_id'];
        $party_id   		= $_POST['party_id'];
		
		
		
        
        $query = "INSERT INTO `inv_damagedetail` (`damage_id`,`damage_date`,`material_id`,`material_name`,`unit`,`return_qty`,`return_price`,`part_no`,`project_id`,`warehouse_id`) VALUES ('$damage_id','$damage_date','$material_id','$material_name','$unit','$quantity','$unit_price','$part_no','$project_id','$warehouse_id')";
        $conn->query($query);
        
       
         /*  Insert Data Into inv_damagebalance Table: talk with ma motors*/
       
        $mb_ref_id      = $damage_id;
        $mb_materialid  = $material_id;
        $mb_date        = (isset($damage_date) && !empty($damage_date) ? date('Y-m-d h:i:s', strtotime($damage_date)) : date('Y-m-d h:i:s'));
        $mbin_qty       = $quantity;
        $mbin_val       = 0;
        $mbout_qty      = 0;
        $mbout_val      = 0;
        $mbprice        = 0;
        $mbtype         = 'REPLACE RECEIVE';
        $mbunit_id      = $project_id;
                    
        
        $query_inmb = "INSERT INTO `inv_damagebalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbout_qty`,`mbtype`,`mbunit_id`,`warehouse_id`,`partner_id`,`party_id`,`remarks`,`created_at`,`unit`) VALUES ('$mb_ref_id','$mb_materialid','$mb_date','$mbin_qty','$mbout_qty','$mbtype','$mbunit_id','$warehouse_id','$partner_id','$party_id','$remarks','$mb_date','$unit')";
        $conn->query($query_inmb);
    }
    /*
    *  Insert Data Into inv_damage Table:
    */

    
    $query2 		= "INSERT INTO `inv_damage` (`damage_id`,`damage_date`,`remarks`,`project_id`,`warehouse_id`,`partner_id`,`party_id`) VALUES ('$damage_id','$damage_date','$remarks','$project_id','$warehouse_id','$partner_id','$party_id')";
    $result2 = $conn->query($query2);
    
    $_SESSION['success']    =   "Damage Data process have been successfully completed.";
    header("location: damage_entry.php");
    exit();
}





function getReplaceRecDataDetailsById($id){
    global $conn;
    $receieves      =   "";
    $receiveDetails =   "";
    
    // get receive data
    $sql1           = "SELECT * FROM inv_damage where id=".$id;
    $result1        = $conn->query($sql1);

    if ($result1->num_rows > 0) {
        $receieves = $result1->fetch_object();
        // get receive details data
        $table                  =   'Inv_damagedetail where damage_id='."'$receieves->damage_id'";
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

if(isset($_POST['damage_update_submit']) && !empty($_POST['damage_update_submit'])){


    $edit_id               =   $_POST['edit_id'];  
    $damage_id             =   $_POST['damage_id'];
    
    // first delete all from Inv_damagedetail; 
    $delsql    = "DELETE FROM `Inv_damagedetail` WHERE `damage_id`='$damage_id'";
    $conn->query($delsql);
    // first delete all from Inv_damagebalance; 
    $delsq2    = "DELETE FROM `Inv_damagebalance` WHERE `mb_ref_id`='$damage_id'";
    $conn->query($delsq2);
	
	
	
	
    
       for ($count = 0; $count < count($_POST['quantity']); $count++) {
        
        /*
         *  Insert Data Into inv_damagedetail Table:
        */       
        
        $damage_date		= $_POST['damage_date'];
        $damage_id			= $_POST['damage_id'];
        $material_name      = $_POST['material_name'][$count];
        $material_id        = $_POST['material_id'][$count];
        $unit               = $_POST['unit'][$count];
        $part_no            = $_POST['part_no'][$count];
        $quantity           = $_POST['quantity'][$count];
        $unit_price         = $_POST['unit_price'][$count];
        $project_id         = $_POST['project_id'];
        $remarks            = $_POST['remarks'];     
        $warehouse_id		=	$_SESSION['logged']['warehouse_id'];
        $partner_id 		= $_POST['partner_id'];
        $party_id   		= $_POST['party_id'];
		
		
		
        
        $query = "INSERT INTO `inv_damagedetail` (`damage_id`,`damage_date`,`material_id`,`material_name`,`unit`,`return_qty`,`return_price`,`part_no`,`project_id`,`warehouse_id`) VALUES ('$damage_id','$damage_date','$material_id','$material_name','$unit','$quantity','$unit_price','$part_no','$project_id','$warehouse_id')";
        $conn->query($query);
        
       
         /*  Insert Data Into inv_damagebalance Table: talk with ma motors*/
       
        $mb_ref_id      = $damage_id;
        $mb_materialid  = $material_id;
        $mb_date        = (isset($damage_date) && !empty($damage_date) ? date('Y-m-d h:i:s', strtotime($damage_date)) : date('Y-m-d h:i:s'));
        $mbin_qty       = $quantity;
        $mbin_val       = 0;
        $mbout_qty      = 0;
        $mbout_val      = 0;
        $mbprice        = 0;
        $mbtype         = 'REPLACE RECEIVE';
        $mbunit_id      = $project_id;
                    
        
        $query_inmb = "INSERT INTO `inv_damagebalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbout_qty`,`mbtype`,`mbunit_id`,`warehouse_id`,`partner_id`,`party_id`,`remarks`,`created_at`,`unit`) VALUES ('$mb_ref_id','$mb_materialid','$mb_date','$mbin_qty','$mbout_qty','$mbtype','$mbunit_id','$warehouse_id','$partner_id','$party_id','$remarks','$mb_date','$unit')";
        $conn->query($query_inmb);
	   }
    

	
      /*  *  Update Data Into inv_damage Table: */
   
		
				

    $query2    = "UPDATE inv_damage SET damage_id='$damage_id',damage_date='$damage_date',remarks='$remarks',project_id='$project_id',warehouse_id='$warehouse_id',partner_id='$partner_id',party_id='$party_id' WHERE id=$edit_id";
    $result2 = $conn->query($query2);
	
	
    
    $_SESSION['success']    =   "Replace Receive update process have been successfully updated.";
    header("location: replacereceive_edit.php?edit_id=".$edit_id);
    exit();
}

?>