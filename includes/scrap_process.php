<?php
/*******************************************************************************
 * The following code will
 * Store Receive entry data.
 * There are 4 table to keet track on receive data. The are following:
 * 1. inv_receive (Store single row)      
 * 2. inv_receivedetail (Store Multiple row)
 * 3. inv_materialbalance (Store Multiple row)
 * 4. inv_supplierbalance (Store single row)
 
 
 issue_submit  = Scrap_submit
 
 issue_update_submit= SS_update_submit
 
 inv_issue =inv_scrap
 
 inv_issuedetail=inv_scrapdetail
 
 issue_id=ss_id
 
 issue_edit.php=scrap_edit.php
 
 
 issue_approve_submit =scrap_approve_submit
 
 * *****************************************************************************
 */  
if (isset($_POST['scrap_submit']) && !empty($_POST['scrap_submit'])) 
{
	
	
                                if ($_SESSION['logged']['user_type'] == 'whm') 
				{
                                    $warehouse_id = $_SESSION['logged']['warehouse_id'];
                                    $sql = "SELECT * FROM inv_warehosueinfo WHERE `id`='$warehouse_id'";
                                    $result = mysqli_query($conn, $sql);
                                    $row = mysqli_fetch_array($result);
                                    $short_name = $row['short_name'];
                                    $ssCode = 'SS-' . $short_name;
                } else 
								{
                                    $ssCode = 'SS-CW';
                                }
                                
	// check duplicate:
	$ss_id	= getDefaultCategoryCodeByWarehouse('inv_scrap', 'ss_id', '03d', '001', $ssCode);
    $table		= 'inv_scrap';
    $where		= "ss_id='$ss_id'";
    if(isset($_POST['ss_update_submit']) && !empty($_POST['ss_update_submit']))
	
	                    {
        $notWhere   =   "id!=".$_POST['ss_update_submit'];
        $duplicatedata = isDuplicateData($table, $where, $notWhere);
                        }
	
	else       {
        $duplicatedata = isDuplicateData($table, $where);
               }
	if ($duplicatedata) 
	                              {
		$status     =   'error';
		$_SESSION['warning']    =   "Operation faild. Duplicate data found..!";
                                  }
	else
	
	                                   {
		    
			for ($count = 0; $count < count($_POST['quantity']); $count++) 
			                           {
				
				/*
				 *  Insert Data Into inv_scrapdetail Table:
				*/       
				
				$ss_date         = $_POST['ss_date'];
				$ss_id           = $_POST['ss_id'];
				
				
				$party_id         = $_POST['party_id'];

				$project_id         = $_POST['project_id'];
				$warehouse_id   	= $_POST['warehouse_id'];
				$material_name      = $_POST['material_name'][$count];
				$material_id        = $_POST['material_id'][$count];
				$unit               = $_POST['unit'][$count];
				$brand            	= $_POST['brand'][$count];
				$quantity           = $_POST['quantity'][$count];
				
				$unit_price       = $_POST['unit_price'][$count];
				$amount           = $_POST['amount'][$count];
				
				
				
				$package_id   		= $_POST['package_id'][$count];
				$building_id   		= $_POST['building_id'][$count];
				$received_by		= $_POST['received_by'];     
				$receiver_phone		= $_POST['receiver_phone'];     
				$remarks            = $_POST['remarks'];   


				$total_amount       = $_POST['total_amount'];
				
				
				
				$paid_amount           = $_POST['paid_amount'];	
				$due_amount           = $_POST['due_amount'];
				$approval_status		= ''; 
				
				
				if (is_uploaded_file($_FILES['file']['tmp_name'])) 
				{
					$temp_file=$_FILES['file']['tmp_name'];
					$issue_image=time().$_FILES['file']['name'];
					$q = move_uploaded_file($temp_file,"images/".$issue_image);
				} 
        
				$query = "INSERT INTO `inv_scrapdetail` (`ss_id`,`ss_date`,`material_id`,`material_name`,`unit`,`issue_qty`,`issue_price`,`amount`,`part_no`,`project_id`,`warehouse_id`,`package_id`,`building_id`,`approval_status`) VALUES ('$ss_id','$ss_date','$material_id','$material_name','$unit','$quantity','$unit_price','$amount','$brand','$project_id','$warehouse_id','$package_id','$building_id','0')";
				$conn->query($query);
									   }
				
				/*
				 *  Insert Data Into inv_materialbalance Table:
				*/
				
			/*
			*  Insert Data Into inv_issue Table:
			*/
			$query2 = "INSERT INTO `inv_scrap` (`ss_id`,`ss_date`,`party_id`,`received_by`,`totalamount`,`paidamount`,`Dueamount`,`receiver_phone`,`remarks`,`project_id`,`warehouse_id`,`issue_image`,`created_at`) VALUES ('$ss_id','$ss_date','$party_id','$received_by','$total_amount','$paid_amount','$due_amount','$receiver_phone','$remarks','$project_id','$warehouse_id','$issue_image','$issue_date')";
			$result2 = $conn->query($query2);
			
			
			
			
			/*
			PARTNER BALACNCE TABLE HAVETO CREATE  discuss ma motors
			
			 $query3 = "INSERT INTO `inv_partybalance` (`pb_ref_id`,`warehouse_id`,`pb_date`,`pb_party_id`,`pb_dr_amount`,`pb_cr_amount`,`pb_remark`,`pb_partac_id`,`approval_status`) VALUES ('$issue_id','$warehouse_id','$issue_date','$party_id','$total_amount','$paid_amount','$remarks','$issue_id','$approval_status')";
    $result2 = $conn->query($query3);
	
	
	*/
	
	
			
			$_SESSION['success']    =   "scrap sale process have been successfully completed.";
			header("location: scrap_sale.php");
			exit();
			                                       }
	
                                                   }







































/*  talk with atiq 09-03-22

function getissueDataDetailsById($id){
    global $conn;
    $receieves      =   "";
    $receiveDetails =   "";
    
    // get receive data
    $sql1           = "SELECT * FROM inv_scrap where id=".$id;
    $result1        = $conn->query($sql1);

    if ($result1->num_rows > 0) {
        $receieves = $result1->fetch_object();
        // get receive details data
        $table                  =   'inv_scrapdetail where ss_id='."'$receieves->ss_id'";
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

*/


if(isset($_GET['process_type']) && $_GET['process_type'] == 'get_building_by_package'){
    include '../connection/connect.php';
    include '../helper/utilities.php';
    $package_id      =    $_POST['package_id'];
    $tableName      =    'buildings where package_id='.$package_id;
    $tableData      = getTableDataByTableName($tableName, '', 'building_id');
    if (isset($tableData) && !empty($tableData)) {
        echo "<option value=''>Please Select</option>";
        foreach ($tableData as $data) { ?>
            <option value="<?php echo $data['id']; ?>"><?php echo $data['building_id'].'('.$data['id'].')'; ?></option>
            <?php
        }
    }
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

if(isset($_POST['ss_update_submit']) && !empty($_POST['ss_update_submit'])){


    $edit_id            =   $_POST['edit_id'];
    $mrr_no             =   $_POST['issue_no'];
    
    // first delete all from inv_receivedetail; 
    $delsql    = "DELETE FROM `inv_scrapdetail` WHERE `ss_id`='$mrr_no'";
    $conn->query($delsql);
   /*
   // first delete all from inv_materialbalance; 
    $delsq2    = "DELETE FROM `inv_materialbalance` WHERE `mb_ref_id`='$mrr_no'";
    $conn->query($delsq2);
	*/
    
    for ($count = 0; $count < count($_POST['quantity']); $count++) {
        /*
         *  Insert Data Into inv_scrapdetail Table:
        */       
        
				$issue_date         = $_POST['issue_date'];
				$issue_id           = $_POST['issue_id'];
				$project_id         = $_POST['project_id'];
				$warehouse_id   	= $_POST['warehouse_id'];
				
				$material_name      = $_POST['material_name'][$count];
				$material_id        = $_POST['material_id'][$count];
				$unit               = $_POST['unit'][$count];
				$brand            	= $_POST['brand'][$count];
				$quantity           = $_POST['quantity'][$count];
				$package_id   		= $_POST['package_id'][$count];
				$building_id   		= $_POST['building_id'][$count];


				
				$received_by		= $_POST['received_by'];     
				$receiver_phone		= $_POST['receiver_phone'];     
				$remarks            = $_POST['remarks'];     
				
				
				if (is_uploaded_file($_FILES['file']['tmp_name'])) 
				{
					$temp_file=$_FILES['file']['tmp_name'];
					$issue_image=time().$_FILES['file']['name'];
					$q = move_uploaded_file($temp_file,"images/".$issue_image);
				} 
        
				$query = "INSERT INTO `inv_scrapdetail` (`ss_id`,`ss_date`,`material_id`,`material_name`,`unit`,`issue_qty`,`issue_price`,`part_no`,`project_id`,`warehouse_id`,`package_id`,`building_id`,`approval_status`) VALUES ('$issue_id','$issue_date','$material_id','$material_name','$unit','$quantity','0','$brand','$project_id','$warehouse_id','$package_id','$building_id','0')";
				$conn->query($query);
				
				/*
				 *  Insert Data Into inv_materialbalance Table:
				
				$mb_ref_id      = $issue_id;
				$mb_materialid  = $material_id;
				$mb_date        = (isset($issue_date) && !empty($issue_date) ? date('Y-m-d h:i:s', strtotime($issue_date)) : date('Y-m-d h:i:s'));
				$mbin_qty       = 0;
				$mbin_val       = 0;
				$mbout_qty      = $quantity;
				$mbout_val      = 0;
				$mbprice        = 0;
				$mbtype         = 'Issue';
				$mbserial       = '1.1';
				$mbunit_id      = $project_id;
				$mbserial_id    = 0;
				$jvno           = $issue_id;
				$part_no        = $brand;              
				
				$query_inmb = "INSERT INTO `inv_materialbalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbin_val`,`mbout_qty`,`mbout_val`,`mbprice`,`mbtype`,`mbserial`,`mbserial_id`,`mbunit_id`,`jvno`,`part_no`,`project_id`,`warehouse_id`) VALUES ('$mb_ref_id','$mb_materialid','$mb_date','$mbin_qty','$mbin_val','$mbout_qty','$mbout_val','$mbprice','$mbtype','$mbserial','$mbunit_id','$mbserial_id','$jvno','$part_no','$project_id','$warehouse_id')";
				$conn->query($query_inmb);
				
				*/
    }
    /*
        *  Update Data Into inv_receive Table:
    */
				$issue_date         = $_POST['issue_date'];
				$issue_id           = $_POST['issue_id'];
				$project_id         = $_POST['project_id'];
				$warehouse_id   	= $_POST['warehouse_id'];


				
				$received_by		= $_POST['received_by'];     
				$receiver_phone		= $_POST['receiver_phone'];     
				$remarks            = $_POST['remarks'];

    $query2    = "UPDATE inv_scrap SET ss_id='$ss_id',ss_date='$ss_date',received_by='$received_by',receiver_phone='$receiver_phone',remarks='$remarks',project_id='$project_id',warehouse_id='$warehouse_id',approval_status='0',issue_image='$issue_image' WHERE id=$edit_id";
    $result2 = $conn->query($query2);
    
    $_SESSION['success']    =   "scrap sale process have been successfully updated.";
    header("location: scrap_edit.php?edit_id=".$edit_id);
    exit();
}


if (isset($_POST['scrap_approve_submit']) && !empty($_POST['scrap_approve_submit'])) {
 
        /*
         *  Update Data Into inv_receive Table:
        */ 
       
        $ss_id				= $_POST['ss_id']; 
        $approval_status		= $_POST['approval_status'];       
        $approved_by            = $_SESSION['logged']['user_id'];       
        $approved_at            = $_POST['approved_at'];        
        $approval_remarks		= $_POST['approval_remarks'];       
               
        $query = "UPDATE `inv_scrap` SET `approval_status`='$approval_status',`approved_by`='$approved_by',`approved_at`='$approved_at',`approval_remarks`='$approval_remarks' WHERE `ss_id`='$ss_id'";
        $conn->query($query);
		
		
		/*
         *  Update Data Into inv_receivedetail Table:
        */      
        $query2 = "UPDATE `inv_scrapdetail` SET `approval_status`='$approval_status' WHERE `ss_id`='$ss_id'";
        $conn->query($query2);
		
		/*
         *  Update Data Into inv_materialbalance Table:
        */      
        
		
		/*
         *  Update Data Into inv_supplierbalance Table:
             
        $query3 = "UPDATE `inv_supplierbalance` SET `approval_status`='$approval_status' WHERE `sb_ref_id`='$issue_id'";
        $conn->query($query3);
		*/ 
		

    $_SESSION['success']    =   "scrap Approval process successfully completed.";
    header("location: issue-list.php");
    exit();
}

?>