
<style>
.dtext{
	text-decoration:underline;
}
</style>
<div class="card mb-3">
    <div class="card-header">
        <i class="fas fa-search"></i>
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
							
							
							
							
							
							
							
							
							
							<td style="width:15%">
                                <div class="form-group">
                                    <label for="todate">.</label>
									<button type="submit" name="submitpartneraccounts" class="form-control btn btn-primary">Partner Accounts</button>
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
if(isset($_GET['submitpartneraccounts'])){
	$from_date		=	$_GET['from_date'];
	$to_date		=	$_GET['to_date'];
	
	$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
	$partner_id	=	$_GET['id'];
	
										$sqlunit	=	"SELECT * FROM `partner` WHERE `id` = '$partner_id' ";
										$resultunit = mysqli_query($conn, $sqlunit);
										$rowunit=mysqli_fetch_array($resultunit);
										$partnername	= $rowunit['name'];
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
							<span>partner Accounts Report</span><br>
							<span><b>partner Name:<?php echo $partnername; ?></span></b><br>
							From <span class="dtext"><?php echo date("jS F Y", strtotime($from_date));?></span> </span><br>
						</p>
					</center>
				</div>
			</div>
				<table id="" class="table table-bordered">
					<thead>
						<tr>
							<th>Tran Date</th>
							<th>Tran no</th>
							<th>Tran Type</th>
							  
							  
							<th>Amount Deposit</th>
							<th>Amount withdraw</th>
							<th>Due Balance</th>
						  
							<th>Description</th>
							
							
						</tr>
					</thead>
					<tbody>
						
						
						<?php
							
							
						$sql	=	"SELECT * FROM `partnerpayment` WHERE `partner_id`='$partner_id' AND `trandate` BETWEEN '$from_date' AND '$to_date' order by `trandate` asc;";
							$result = mysqli_query($conn, $sql);
							$totaldeposit = 0;
							$totalwithdraw = 0;
							while($row=mysqli_fetch_array($result))
							{
								
								//colour row code start
								$ref_letter 	=	substr($row['trantype'], 0, 1);
								
								if($ref_letter == "D"){
									$bg_color 	= "#F0FFFF";
								}else if($ref_letter == "p"){
									$bg_color 	= "#FFE4C4";
								}else{
									$bg_color 	= "#E9ECEF";
								}
								//colour row code end
								
								$deposit = $row['amountdeposit'];
								$totaldeposit += $row['amountdeposit'];
								
								$withdraw = $row['amountwithdraw'];
								$totalwithdraw += $row['amountwithdraw'];
									
								$balance =  $totaldeposit - $totalwithdraw;
						?>
						<tr style="background-color:<?php echo $bg_color; ?>">
							<td><?php echo date("jS F Y", strtotime($row['trandate']));?></td>
							<td><?php echo $row['tranid']; ?></td>
								<td><?php echo $row['trantype']; ?></td>
							
							<td><?php echo $row['amountdeposit']; ?></td>
							<td><?php echo $row['amountwithdraw']; ?></td>
							
							<?php 
							$adate			=	$row['trandate'];
							/* $sqlcredit 		=	"SELECT SUM(`sb_cr_amount`) AS tcredit FROM `inv_supplierbalance` WHERE `sb_supplier_id` = '$supplier_id' AND `warehouse_id`='$warehouse_id' AND `sb_date` < '$adate'"; */
							
							
							$sqlcredit 		=	"SELECT SUM(`amountwithdraw`) AS tcredit FROM `partnerpayment` WHERE `partner_id` = '$partner_id' AND `trandate` < '$adate'";
							$resultcredit 	= 	mysqli_query($conn, $sqlcredit);
							$rowcredit 		=	mysqli_fetch_object($resultcredit);
							$creditamount	=	$rowcredit->tcredit;
							?>
							<td><?php echo $balance; ?></td>
						    <td><?php echo $row['expensedesc']; ?></td>
							
					
							
						</tr>
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

<?php } ?>
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


