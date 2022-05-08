
							
<style>
.dtext{
	text-decoration:underline;
}
.linktext{
	font-size:12px;
}
</style>
<div class="card mb-3">
    <div class="card-header">

		

		
		<button class="btn btn-info linktext" onclick="window.location.href='salesdetail_report.php';"> Date wise Partner Net Profit Report</button>
		
		
	</div>
		
    <div class="card-body">
        <form class="form-horizontal" action="" id="warehouse_stock_search_form" method="GET">
            <div class="table-responsive">          
                <table class="table table-borderless search-table">
                    <tbody>
                        <tr> 
							<td>
                          
                            <div class="form-group">
                                <label>Partner Name</label>
                                <select class="form-control" id="id" name="id" readonly >
                                    <?php
                                    $projectsData = getTableDataByTableName('partner');
                                    ;
                                    if (isset($projectsData) && !empty($projectsData)) {
                                        foreach ($projectsData as $data) {
											if($_GET['id'] == $data['id']){
													$selected	= 'selected';
													}else{
													$selected	= '';
													}
                                            ?>
                                            <option value="<?php echo $data['id']; ?>"  <?php echo $selected; ?>><?php echo $data['name']; ?></option>
                                            <?php
                                        }
                                    }
                                    ?>
                                </select>
                            </div>
                       
						
						
                            </td>
							<td>
                                <div class="form-group">
                                    <label for="todate">From Date</label>
                                    <input type="text" class="form-control" id="from_date" value="<?php if(isset($_GET['from_date'])){ echo $_GET['from_date']; } ?>" name="from_date" autocomplete="off" required >
                                </div>
                            </td>
							<td>
                                <div class="form-group">
                                    <label for="todate">To Date</label>
                                    <input type="text" class="form-control" id="to_date" name="to_date" value="<?php if(isset($_GET['to_date'])){ echo $_GET['to_date']; } ?>" autocomplete="off" required >
                                </div>
                            </td>
							
							<td>
                                <div class="form-group">
                                    <label for="todate">.</label>
									<button type="submit" name="submit" class="form-control btn btn-primary">Search</button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </form>
    </div>
</div>
<?php
if(isset($_GET['submit'])){
	
	$from_date		=	$_GET['from_date'];
	$to_date		=	$_GET['to_date'];
	$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
	$partner_id	=	$_GET['id'];
	
	
	
	
	
										$sqlunit	=	"SELECT * FROM `partner` WHERE `id` = '$partner_id' ";
										$resultunit = mysqli_query($conn, $sqlunit);
										$rowunit=mysqli_fetch_array($resultunit);
										$varpartner	= $rowunit['name'];
	
	
?>
<center>
	
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10" id="printableArea">
			<div class="row">
				<div class="col-sm-12">	
					<center>
						<p>
							<img src="images/Saif_Engineering_Logo_165X72.png" height="100px;"/><br>
							<span>Sales Profit Share Report</span><br>
							Partner Name:<span><b><?php echo $varpartner; ?></b></span><br>
							From <span class="dtext"><?php echo date("jS F Y", strtotime($from_date));?></span> To  <span class="dtext"><?php echo date("jS F Y", strtotime($to_date));?> </span><br>
						</p>
					</center>
				</div>
			</div>
				<table id="" class="table table-bordered table-striped ">
					<thead>
						<tr>
						
							
							<th>Total Sales</th>
						    <th>Total Profit</th>
							<th>Profit  Share</th>
							<th>Damarage Loss Share</th>
							<th>Actual Profit</th>
							<th>Car Rent</th>
							
							<th>Net Profit</th>
							<th>Balance</th>
						</tr>
					</thead>
					<tbody>
					
					
					
					
					
					<?php
					
					$totalamount4=0; // totalamount4 row4 variable Partner Payment
					$dprofitamount =0;
						
						if($_SESSION['logged']['user_type'] !== 'whm'){
							$sql	=	"SELECT sum(totalamount) as `totalamount`,sum(profitamount) as `profitamount`,sum(profitpatneramount) as `profitpatneramount`  FROM `inv_profitshare` WHERE `partnerid` = '$partner_id' AND `billdate` BETWEEN '$from_date' AND '$to_date' group by partnerid;";
							
							//Damarage Loss Share
							$sql2	=	"SELECT sum(profitamount) as `profitamount` FROM `inv_damaragesale` where `partner_id` = '$partner_id' AND `ds_date` BETWEEN '$from_date' AND '$to_date' group by partner_id;";
							
							//transport	
							 $sql3	=	"SELECT sum(amount) as `amount` FROM `transport` where  `partner_id` = '$partner_id' AND `trandate` BETWEEN '$from_date' AND '$to_date' group by partner_id;"; 
							 
							 
							 			//Partner Payment				
  $sql4	=	"SELECT * FROM `partnerpayment` where `warehouse_id` = '$warehouse_id' and `partner_id` = '$partner_id' AND `trandate` BETWEEN '$from_date' AND '$to_date'";

							
							
						}else{
							$sql	=	"SELECT sum(totalamount) as `totalamount`,sum(profitamount) as `profitamount`,sum(profitpatneramount) as `profitpatneramount` FROM `inv_profitshare` WHERE `warehouse_id` = '$warehouse_id' AND `partnerid` = '$partner_id' AND `billdate` BETWEEN '$from_date' AND '$to_date' group by partnerid;";
							
							
							//Damarage Loss Share
							$sql2	=	"SELECT sum(profitamount) as `profitamount` FROM `inv_damaragesale` where `warehouse_id` = '$warehouse_id' and `partner_id` = '$partner_id' AND `ds_date` BETWEEN '$from_date' AND '$to_date' group by partner_id;";
								
								
			//transport				
$sql3	=	"SELECT sum(amount) as `amount` FROM `transport` where `warehouse_id` = '$warehouse_id' and `partner_id` = '$partner_id' AND `trandate` BETWEEN '$from_date' AND '$to_date' group by partner_id;";



			//Partner Payment				
$sql4	=	"SELECT * FROM `partnerpayment` where `warehouse_id` = '$warehouse_id' and `partner_id` = '$partner_id' AND `trandate` BETWEEN '$from_date' AND '$to_date'";


								
						};
							
						//transport	
							$result3 = mysqli_query($conn, $sql3);
							$row3=mysqli_fetch_array($result3);
							$transportvar 	=	 $row3['amount'];
							$result = mysqli_query($conn, $sql);
						
						
						//Damarage Loss Share
						 $result2 = mysqli_query($conn, $sql2);
						 while($row2=mysqli_fetch_array($result2))
						{
						 $dprofitamount 	=	 $row2['profitamount']/2;
						};
						
						
						
						

						while($row=mysqli_fetch_array($result))
						{
								
					    ?>
					
					
					
					
				<tr>
							
							<td style="text-align:right;"><?php echo number_format((float)$row['totalamount'], 2, '.', ''); ?></td>
							<td style="text-align:right;"><?php echo number_format((float)$row['profitamount'], 2, '.', ''); ?></td>
							<td style="text-align:right;"><?php echo number_format((float)$row['profitpatneramount'], 2, '.', ''); ?></td>
							<td style="text-align:right;"><?php echo number_format((float)$dprofitamount, 2, '.', ''); ?></td>
							
							
							<td style="text-align:right;">
								<?php $actualprofit =  $row['profitpatneramount']-$dprofitamount; echo number_format((float)$actualprofit, 2, '.', '');?>
							</td>
							
							<td style="text-align:right;"><?php echo number_format((float)$transportvar, 2, '.', ''); ?></td>
							
							<td style="text-align:right;">
								<?php $netprofit =  $actualprofit-$transportvar; echo number_format((float)$netprofit, 2, '.', '');?>
							</td>
							
				</tr>
				
				
				
				
				
					<?php 
					//Partner Payment
					
					$result4 = mysqli_query($conn, $sql4);
                        while($row4=mysqli_fetch_array($result4))
						{ 
					
					            $amount = $row4['amount'];
								$totalamount4 += $row4['amount'];
					?>
				     		
						<tr>
                            <td colspan="6" style="text-align:right;"><?php echo $row4['expensedesc']; ?></td>
					        <td style="text-align:right;"><?php echo number_format((float)$row4['amount'], 2, '.', ''); ?></td>
							
							
							<td style="text-align:right;">
								<?php $netbalance =  $netprofit-$totalamount4; echo number_format((float)$netbalance, 2, '.', '');?>
							</td>
				     	</tr>	
						 
							
						
						<?php
						  }
						  }
						?>
							
							
							
							
					
							
							
							
							
						
						
						<?php 
							$rowcount=mysqli_num_rows($result);
							if($rowcount < 1) { ?>
								<tr><td colspan="6"><center>No Data Found</center></td></tr>
							<?php } ?>   
							
							
							
					</tbody>
				</table>
				<center><div class="row">
					<div class="col-sm-6"></br></br>--------------------</br>Receiver Signature</div>
					<div class="col-sm-6"></br></br>--------------------</br>Authorised Signature</div>
				</div></center></br>
				<div class="row">
					<div class="col-sm-12" style="border:1px solid gray;border-radius:5px;padding:10px;color:#f26522;">
						<center><h5>Notice***</br><span style="font-size:14px;color:#000000;">Please Check Everything Before Signature</span></h5></center>
						
					</div>
				</div>
			</div>			
		</div>
		<center><button class="btn btn-default" onclick="printDiv('printableArea')"><i class="fa fa-print" aria-hidden="true" style="    font-size: 17px;"> Print</i></button></center>
		<div class="col-md-1"></div>
</center>
						<?php }?>



<script>
function printDiv(divName) {
	 var printContents = document.getElementById(divName).innerHTML;
	 var originalContents = document.body.innerHTML;

	 document.body.innerHTML = printContents;

	 window.print();

	 document.body.innerHTML = originalContents;
}
</script>
<script>
    $(function () {
        $("#from_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
</script>
<script>
    $(function () {
        $("#to_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
</script>


