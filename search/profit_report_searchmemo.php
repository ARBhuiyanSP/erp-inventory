
							
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
		<button class="btn btn-success linktext"> Individual Material sales Report</button>
		
	
		
		
		<button class="btn btn-info linktext" onclick="window.location.href='profit_report.php';"> Partner wise Profit Report</button>
		<button class="btn btn-info linktext" onclick="window.location.href='sales_report.php';"> Date wise Sales  Report</button>
		
		<button class="btn btn-info linktext" onclick="window.location.href='salesdetail_report.php';"> Date wise Sales Detail Report</button>
		
		
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
                                    <label for="id">From Memo</label>
                                    <input type="text" class="form-control" id="memono1" value="<?php if(isset($_GET['memono1'])){ echo $_GET['memono1']; } ?>" name="memono1"  >
                                </div>
                            </td>
							<td>
                                <div class="form-group">
                                    <label for="id">To Memo</label>
                                    <input type="text" class="form-control" id="memono2" value="<?php if(isset($_GET['memono2'])){ echo $_GET['memono2']; } ?>" name="memono2"  >
                                </div>
                            </td>
							
							<td>
                                <div class="form-group">
                                    <label for="id">.</label>
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
	
	$memono1		=	$_GET['memono1'];
	$memono2		=	$_GET['memono2'];
	$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
	$partner_id	=	$_GET['id'];
	
	
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
							From <span class="dtext"><?php echo ($memono1);?></span> To  <span class="dtext"><?php echo ($memono2);?> </span><br>
						</p>
					</center>
				</div>
			</div>
				<table id="" class="table table-bordered table-striped ">
					<thead>
						<tr>
							<th>Bill No</th>
							<th>Bill date</th>
							<th><p style="color:red">Memo No</p></th>
							<th>Partner ID</th>
							<th>total amount</th>
							<th>Profit amount</th>
							<th>Profit Share amount</th>
						</tr>
					</thead>
					<tbody>
					
					
					
					
					
					<?php
					
						$totalshareamount = 0;
						if($_SESSION['logged']['user_type'] !== 'whm'){
	$sql	=	"SELECT * FROM `inv_profitshare` WHERE `partnerid` = '$partner_id' AND `memono` BETWEEN '$memono1' AND '$memono2'";
						}else{
	$sql	=	"SELECT * FROM `inv_profitshare` WHERE `warehouse_id` = '$warehouse_id' AND `partnerid` = '$partner_id' AND `memono` BETWEEN '$memono1' AND '$memono2'";
						}
						$result = mysqli_query($conn, $sql);

						while($row=mysqli_fetch_array($result))
						{
							$totalshareamount += $row['profitpatneramount'];
							
							
							
							
							
										
					?>
					
					
					
					
				<tr>
							<td><?php echo $row['billno']; ?></td>
							
							
							
							<td><?php echo $row['billdate']; ?></td>
							
							<td><p style="color:red"><?php echo $row['memono']; ?></p></td>
							
							<td>
							<?php 
											$dataresult =   getDataRowByTableAndId('partner', $row['partnerid']);
											echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : '');
							?></td>
							
							
							
							
							
							
							
							<td style="text-align:right;"><?php echo number_format((float)$row['totalamount'], 2, '.', ''); ?></td>
							<td style="text-align:right;"><?php echo number_format((float)$row['profitamount'], 2, '.', ''); ?></td>
							<td style="text-align:right;"><?php echo number_format((float)$row['profitpatneramount'], 2, '.', ''); ?></td>
				</tr>
						<?php
							}?>
							
							
							
						<tr>
							<td colspan="6" class="grand_total" style="text-align:right;">Grand Total:</td>
							<td style="text-align:right;">
								<?php echo number_format((float)$totalshareamount, 2, '.', '');
								?>
							</td>
						</tr>
						
						
						
						
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


