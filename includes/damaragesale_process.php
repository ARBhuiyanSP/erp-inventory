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
if (isset($_POST['damaragesale_submit']) && !empty($_POST['damaragesale_submit'])) 

{
	
                                if ($_SESSION['logged']['user_type'] == 'whm') {
                                    $warehouse_id = $_SESSION['logged']['warehouse_id'];
                                    $sql = "SELECT * FROM inv_warehosueinfo WHERE `id`='$warehouse_id'";
                                    $result = mysqli_query($conn, $sql);
                                    $row = mysqli_fetch_array($result);
                                    $short_name = $row['short_name'];
                                    $dsCode = 'DS-' . $short_name;
                                } else {
                                    $dsCode = 'DS-CW';
                                }
                                
	// check duplicate:
	$issue_id	= getDefaultCategoryCodeByWarehouse('Inv_damaragesale', 'ds_id', '03d', '001', $dsCode);
    $table		= 'Inv_damaragesale';
    $where		= "ds_id='$ds_id'";
    if(isset($_POST['damaragesale_update_submit']) && !empty($_POST['damaragesale_update_submit'])){
        $notWhere   =   "id!=".$_POST['damaragesale_update_submit'];
        $duplicatedata = isDuplicateData($table, $where, $notWhere);
    }else{
        $duplicatedata = isDuplicateData($table, $where);
    }
	if ($duplicatedata) {
		$status     =   'error';
		$_SESSION['warning']    =   "Operation faild. Duplicate data found..!";
    }else{
		    
			
			for ($count = 0; $count < count($_POST['quantity']); $count++) {
				
				/*
				 *  Insert Data Into inv_issuedetail Table:
				*/       
				
				
				$ds_id           = $_POST['ds_id'];
				$ds_date         = $_POST['ds_date'];
				
				$party_id         = $_POST['party_id'];
				$memono         = $_POST['memono'];
				
				$project_id         = $_POST['project_id'];
				$warehouse_id   	= $_POST['warehouse_id'];
				$material_name      = $_POST['material_name'][$count];
				$material_id        = $_POST['material_id'][$count];
				$unit               = $_POST['unit'][$count];
				//$brand            	= $_POST['brand'][$count];
				$quantity           = $_POST['quantity'][$count];
				
				$unit_price       = $_POST['unit_price'][$count];
				$amount           = $_POST['amount'][$count];
				$cur_price			= $_POST['cur_price'][$count];
				$cur_price_amount			= $_POST['cur_amount'][$count];
				$partner_id 		= $_POST['partner_id'];
                $party_id   		= $_POST['party_id'];
		        $received_by		= $_POST['received_by'];     
				$receiver_phone		= $_POST['receiver_phone'];     
				$remarks            = $_POST['remarks'];   
                $total_amount       = $_POST['total_amount'];
				$paid_amount           = $_POST['paid_amount'];	
				$due_amount           = $_POST['due_amount'];
				$profitamount          = $_POST['profitamount'];
				$parent_item_id         = $_POST['parent_item_id'];
				
				
				
				
				$approval_status		= ''; 
				
				
				if (is_uploaded_file($_FILES['file']['tmp_name'])) 
				{
					$temp_file=$_FILES['file']['tmp_name'];
					$issue_image=time().$_FILES['file']['name'];
					$q = move_uploaded_file($temp_file,"images/".$issue_image);
				} 
        
		
		
		        /*
				 *  Insert Data Into Inv_damaragedetailsale Table:
				*/
				
				
				
				 $query = "INSERT INTO `Inv_damaragedetailsale` (`ds_id`,`ds_date`,`memono`,`material_id`,`material_name`,`unit`,`cur_price`,`cur_price_amount`,`issue_qty`,`issue_price`,`amount`,`part_no`,`project_id`,`warehouse_id`,`partner_id`,`party_id`,`approval_status`) VALUES ('$ds_id','$ds_date','$memono','$material_id','$material_name','$unit','$cur_price','$cur_price_amount','$quantity','$unit_price','$amount','$brand','$project_id','$warehouse_id','$partner_id','$party_id','0')";
				$conn->query($query);
				
				
				
				
				
				
			}
			/*
			*  Insert Data Into Inv_damaragesale Table:
			*/
			$total_cur = $_POST['total_cur'];
			$total_amount = $_POST['total_amount'];
			$profitamount = $_POST['profitamount'];
			
			$var_profit	= $profitamount  / 2;
			
			
			$query2 = "INSERT INTO `Inv_damaragesale` (`ds_id`,`ds_date`,`memono`,`party_id`,`partner_id`,`received_by`,`totalcur`,`totalamount`,`paidamount`,`Dueamount`,`profitamount`,`receiver_phone`,`remarks`,`project_id`,`warehouse_id`,`issue_image`,`created_at`) VALUES ('$issue_id','$ds_date','$memono','$party_id','$partner_id','$received_by','$total_cur','$total_amount','$paid_amount','$due_amount','$profitamount','$receiver_phone','$remarks','$project_id','$warehouse_id','$issue_image','$issue_date')";
			$result2 = $conn->query($query2);
			
		
				
			
		
	
			
			$_SESSION['success']    =   "Damarage sale process have been successfully completed.";
			header("location: damarage_sale.php");
			exit();
			}
	
}

function getissueDataDetailsByIddamarage($id){
    global $conn;
    $receieves      =   "";
    $receiveDetails =   "";
    
    // get receive data
    $sql1           = "SELECT * FROM Inv_damaragesale where id=".$id;
    $result1        = $conn->query($sql1);

    if ($result1->num_rows > 0) {
        $receieves = $result1->fetch_object();
        // get receive details data
        $table                  =   'Inv_damaragedetailsale where ds_id='."'$receieves->ds_id'";
        $order                  =   'DESC';
        $column                 =   'issue_qty';
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

if(isset($_POST['damaragesale_update_submit']) && !empty($_POST['damaragesale_update_submit'])){


    $edit_id            =   $_POST['edit_id'];
    $ds_id             =   $_POST['ds_id'];
    
    // first delete all from inv_receivedetail; 
    $delsql    = "DELETE FROM `Inv_damaragedetailsale` WHERE `ds_id`='$ds_id'";
    $conn->query($delsql);
   
    	for ($count = 0; $count < count($_POST['quantity']); $count++) {
				
				/*
				 *  Insert Data Into inv_issuedetail Table:
				*/       
				
				
				$ds_id           = $_POST['ds_id'];
				$ds_date         = $_POST['ds_date'];
				
				$party_id         = $_POST['party_id'];
				$memono         = $_POST['memono'];
				
				$project_id         = $_POST['project_id'];
				$warehouse_id   	= $_POST['warehouse_id'];
				$material_name      = $_POST['material_name'][$count];
				$material_id        = $_POST['material_id'][$count];
				$unit               = $_POST['unit'][$count];
				//$brand            	= $_POST['brand'][$count];
				$quantity           = $_POST['quantity'][$count];
				
				$unit_price       = $_POST['unit_price'][$count];
				$amount           = $_POST['amount'][$count];
				$cur_price			= $_POST['cur_price'][$count];
				$cur_price_amount	= $_POST['cur_amount'][$count];
				$partner_id 		= $_POST['partner_id'];
                $party_id   		= $_POST['party_id'];
		        $received_by		= $_POST['received_by'];     
				$receiver_phone		= $_POST['receiver_phone'];     
				$remarks            = $_POST['remarks'];   
                $total_amount       = $_POST['total_amount'];
				$paid_amount           = $_POST['paid_amount'];	
				$due_amount           = $_POST['due_amount'];
				$profitamount          = $_POST['profitamount'];
				$parent_item_id         = $_POST['parent_item_id'];
				$approval_status		= ''; 
				
			
				if (is_uploaded_file($_FILES['file']['tmp_name'])) 
				{
					$temp_file=$_FILES['file']['tmp_name'];
					$issue_image=time().$_FILES['file']['name'];
					$q = move_uploaded_file($temp_file,"images/".$issue_image);
				} 
        
		        /*
				 *  Insert Data Into Inv_damaragedetailsale Table:
				*/
				
				
				 $query = "INSERT INTO `Inv_damaragedetailsale` (`ds_id`,`ds_date`,`memono`,`material_id`,`material_name`,`unit`,`cur_price`,`cur_price_amount`,`issue_qty`,`issue_price`,`amount`,`part_no`,`project_id`,`warehouse_id`,`partner_id`,`party_id`,`approval_status`) VALUES ('$ds_id','$ds_date','$memono','$material_id','$material_name','$unit','$cur_price','$cur_price_amount','$quantity','$unit_price','$amount','$brand','$project_id','$warehouse_id','$partner_id','$party_id','0')";
				$conn->query($query);
			
			}
			/*
			*  Insert Data Into Inv_damaragesale Table:
			*/
			$total_cur = $_POST['total_cur'];
			$total_amount = $_POST['total_amount'];
			$profitamount = $_POST['profitamount'];
	

     $query2    = "UPDATE Inv_damaragesale SET ds_id='$ds_id',ds_date='$ds_date',memono='$memono',party_id='$party_id',partner_id='$partner_id',received_by='$received_by',totalcur='$total_cur',totalamount='$total_amount',paidamount='$paid_amount',Dueamount='$due_amount',profitamount='$profitamount',receiver_phone='$receiver_phone',remarks='$remarks',project_id='$project_id',warehouse_id='$warehouse_id',issue_image='$issue_image',created_at='$issue_date' WHERE id=$edit_id";
    $result2 = $conn->query($query2);
    
    $_SESSION['success']    =   "Damarage Sales process have been successfully updated.";
    header("location: damarage_edit.php?edit_id=".$edit_id);
    exit();
}


if (isset($_POST['issue_approve_submit']) && !empty($_POST['issue_approve_submit'])) {
 
        /*
         *  Update Data Into inv_receive Table:
        */ 
       
        $issue_id				= $_POST['issue_id']; 
        $approval_status		= $_POST['approval_status'];       
        $approved_by            = $_SESSION['logged']['user_id'];       
        $approved_at            = $_POST['approved_at'];        
        $approval_remarks		= $_POST['approval_remarks'];       
               
        $query = "UPDATE `inv_issue` SET `approval_status`='$approval_status',`approved_by`='$approved_by',`approved_at`='$approved_at',`approval_remarks`='$approval_remarks' WHERE `issue_id`='$issue_id'";
        $conn->query($query);
		
		
		/*
         *  Update Data Into inv_receivedetail Table:
        */      
        $query2 = "UPDATE `inv_issuedetail` SET `approval_status`='$approval_status' WHERE `issue_id`='$issue_id'";
        $conn->query($query2);
		
		/*
         *  Update Data Into inv_materialbalance Table:
        */      
        $query3 = "UPDATE `inv_materialbalance` SET `approval_status`='$approval_status' WHERE `mb_ref_id`='$issue_id'";
        $conn->query($query3);
		
		/*
         *  Update Data Into inv_supplierbalance Table:
        */      
        $query3 = "UPDATE `inv_supplierbalance` SET `approval_status`='$approval_status' WHERE `sb_ref_id`='$issue_id'";
        $conn->query($query3);
		
		

    $_SESSION['success']    =   "ISSUE Approval process successfully completed.";
    header("location: issue-list.php");
    exit();
}

?>