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
if (isset($_POST['damageout_submit']) && !empty($_POST['damageout_submit'])) {
    $receive_total      =   0;
    $no_of_material     =   0;
    for ($count = 0; $count < count($_POST['quantity']); $count++) {
        
        /*
         *  Insert Data Into inv_damageoutdetail Table:
        */       
        
        $damageout_date		= $_POST['damageout_date'];
        $damageout_id			= $_POST['damageout_id'];
        $material_name      = $_POST['material_name'][$count];
        $material_id        = $_POST['material_id'][$count];
        $unit               = $_POST['unit'][$count];
        $part_no            = $_POST['part_no'][$count];
        $quantity           = $_POST['quantity'][$count];
        $no_of_material     = $no_of_material+$quantity;
        $unit_price         = $_POST['unit_price'][$count];
        $totalamount        = $_POST['totalamount'][$count];
        $receive_total      = $receive_total+$totalamount;
        $project_id         = $_POST['project_id'];
        $remarks            = $_POST['remarks'];     
        $expense_acct_id    =   '0';
        $cost_center        =   '0';
        
        $sales_pricer       =   '0';
        $total_sales        =   '0';
        $sales_profit       =   '0';
        $sales_margin       =   '0';
        $id_serial_id       =   '0';  
        $warehouse_id		=	$_SESSION['logged']['warehouse_id'];
    
	
	
	
	
	    $partner_id 		= $_POST['partner_id'];
        $party_id   		= $_POST['party_id'];
		
		
		
        
        $query = "INSERT INTO `inv_damageoutdetail` (`damageout_id`,`damageout_date`,`material_id`,`material_name`,`unit`,`return_qty`,`return_price`,`part_no`,`project_id`,`warehouse_id`) VALUES ('$damageout_id','$damageout_date','$material_id','$material_name','$unit','$quantity','$unit_price','$part_no','$project_id','$warehouse_id')";
        $conn->query($query);
        
       
         /*  Insert Data Into inv_damageoutbalance Table: talk with ma motors*/
       
        $mb_ref_id      = $damageout_id;
        $mb_materialid  = $material_id;
        $mb_date        = (isset($damageout_date) && !empty($damageout_date) ? date('Y-m-d h:i:s', strtotime($damageout_date)) : date('Y-m-d h:i:s'));
        $mbin_qty       = 0;
        $mbin_val       = 0;
        $mbout_qty      = $quantity;
        $mbout_val      = 0;
        $mbprice        = 0;
        $mbtype         = 'REPLACE OUT';
        $mbunit_id      = $project_id;
                    
        
        $query_inmb = "INSERT INTO `inv_damagebalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbout_qty`,`mbtype`,`mbunit_id`,`warehouse_id`,`partner_id`,`party_id`,`created_at`) VALUES ('$mb_ref_id','$mb_materialid','$mb_date','$mbin_qty','$mbout_qty','$mbtype','$mbunit_id','$warehouse_id','$partner_id','$party_id','$mb_date')";
        $conn->query($query_inmb);
    }
    /*
    *  Insert Data Into inv_damage Table:
    */
    
    $damageout_date	= $_POST['damageout_date'];
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
    
    $query2 		= "INSERT INTO `inv_damageout` (`damageout_id`,`damageout_date`,`remarks`,`project_id`,`warehouse_id`,`partner_id`,`party_id`) VALUES ('$damageout_id','$damageout_date','$remarks','$project_id','$warehouse_id','$partner_id','$party_id')";
    $result2 = $conn->query($query2);
    
    $_SESSION['success']    =   "Damage Data process have been successfully completed.";
    header("location: damageout_entry.php");
    exit();
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

if(isset($_POST['issue_update_submit']) && !empty($_POST['issue_update_submit'])){
    $receive_total      =   0;
    $no_of_material     =   0;
    $edit_id            =   $_POST['edit_id'];
    $mrr_no             =   $_POST['issue_no'];
    
    // first delete all from inv_receivedetail; 
    $delsql    = "DELETE FROM inv_issuedetail WHERE issue_id='$mrr_no'";
    $conn->query($delsql);
    // first delete all from inv_materialbalance; 
    $delsq2    = "DELETE FROM inv_materialbalance WHERE mb_ref_id='$mrr_no'";
    $conn->query($delsq2);
    
    for ($count = 0; $count < count($_POST['quantity']); $count++) {
        /*
         *  Insert Data Into inv_issuedetail Table:
        */       
        
        $issue_date         = $_POST['issue_date'];
        $issue_id           = $_POST['issue_no'];
        $material_name      = $_POST['material_name'][$count];
        $material_id        = $_POST['material_id'][$count];
        $unit               = $_POST['unit'][$count];
        $part_no            = $_POST['part_no'][$count];
        $quantity           = $_POST['quantity'][$count];
        $no_of_material     = $no_of_material+$quantity;
        $unit_price         = $_POST['unit_price'][$count];
        $totalamount        = $_POST['totalamount'][$count];
        $receive_total      = $receive_total+$totalamount;
        $project_id         = $_POST['project_id'];
        $remarks            = $_POST['remarks'];     
        $expense_acct_id    =   '0';
        $cost_center        =   '0';
        
        $sales_pricer       =   '0';
        $total_sales        =   '0';
        $sales_profit       =   '0';
        $sales_margin       =   '0';
        $id_serial_id       =   '0';// 
        
        $query = "INSERT INTO `inv_issuedetail` (`issue_id`,`material_id`,`unit_id`,`expense_acct_id`,`cost_center`,`issue_qty`,`issue_price`,`sl_no`,`total_issue`,`sales_price`,`total_sales`,`sales_profit`,`sales_margin`,`id_serial_id`,`part_no`) VALUES ('$issue_id','$material_id','$unit','$expense_acct_id','$cost_center','$quantity','$unit_price','1','$totalamount','$sales_pricer','$total_sales','$sales_profit','$sales_margin','$id_serial_id','$part_no')";
        $conn->query($query);
        
        /*
         *  Insert Data Into inv_materialbalance Table:
        */
        $mb_ref_id      = $return_id;
        $mb_materialid  = $material_id;
        $mb_date        = (isset($issue_date) && !empty($issue_date) ? date('Y-m-d h:i:s', strtotime($issue_date)) : date('Y-m-d h:i:s'));
        $mbin_qty       = $quantity;
        $mbin_val       = $totalamount;
        $mbout_qty      = 0;
        $mbout_val      = 0;
        $mbprice        = $unit_price;
        $mbtype         = 'Return';
        $mbserial       = '1.1';
        $mbunit_id      = $project_id;
        $mbserial_id    = 0;
        $jvno           = $return_id;
        $part_no        = $part_no;        
        
        $query_inmb = "INSERT INTO `inv_materialbalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbin_val`,`mbout_qty`,`mbout_val`,`mbprice`,`mbtype`,`mbserial`,`mbserial_id`,`mbunit_id`,`jvno`,`part_no`) VALUES ('$mb_ref_id','$mb_materialid','$mb_date','$mbin_qty','$mbin_val','$mbout_qty','$mbout_val','$mbprice','$mbtype','$mbserial','$mbunit_id','$mbserial_id','$jvno','$part_no')";
        $conn->query($query_inmb);
    }
    /*
        *  Update Data Into inv_receive Table:
    */
    $issue_date     = $_POST['issue_date'];
    $buyer_id       = $_POST['project_id'];
    $posted_to_gl   = 0;
    $remarks        = $_POST['remarks'];
    $issue_type     = 'issue';
    $issue_unit_id  = 'issue';
    $chk_year_end   = 0;
    $no_of_material = $no_of_material;
    $issue_total    = $receive_total;
    $indent_no      = '1';
    $receiver_name  = $_POST['receiver_name'];
    $query2    = "UPDATE inv_issue SET issue_id='$issue_id',issue_date='$issue_date',buyer_id='$buyer_id',posted_to_gl='$posted_to_gl',remarks='$remarks',issue_type='$issue_type',remarks='$remarks',issue_unit_id='$issue_unit_id',chk_year_end='$chk_year_end',no_of_material='$no_of_material',issue_total='$issue_total',indent_no='$indent_no',receiver_name='$receiver_name' WHERE id=$edit_id";
    $result2 = $conn->query($query2);
    
    $_SESSION['success']    =   "Issue process have been successfully updated.";
    header("location: issue_edit.php?edit_id=".$edit_id);
    exit();
}

?>