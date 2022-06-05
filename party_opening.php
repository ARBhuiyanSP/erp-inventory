<?php include 'header.php';
include 'includes/partyopening_process.php'; ?>
<style>
.comment {

display:none;

}
.table th, .table td {
	padding:3px;
}
</style>
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Overview</li>
    </ol>
    <!-- DataTables Example -->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>
            Party Closing Balance entry </div>
        <div class="card-body">
           
		   
                        
						
							
			 <!--	cur_price     =buyPrice  /mbin_qty
                    last_receive  =mb_date / op_date    -->			
						
						
<div>
    <form name="add_name" action="" method="post" id="paryclosingbal_form" onsubmit="showFormIsProcessing('paryclosingbal_form');">
        
		
		
	 <!--	Date start   -->		
<div class="col-xs-4" style="background-color:#007BFF;color:#fff;">
			<div class="form-group">
				<label>Closing Balance Entry Date</label>
				<?php 
							$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
							$sqlop			=	"SELECT * FROM party";
							$resultop		=	mysqli_query($conn, $sqlop);
							$rowop			=	mysqli_fetch_array($resultop);
							$op_date 		= 	$rowop['op_date'];
							if($op_date)
							{
								//$op_date 		= 	$rowop['op_date'];
								//$validation		=	'readonly';
								//$op_id			=	'';
								$op_date 		= 	date('Y-m-d');
								$validation		=	'';
								$op_id			=	'op_date';
							}else{
								$op_date 		= 	date('Y-m-d');
								$validation		=	'';
								$op_id			=	'op_date';
							}
				?>
				<input type="text" autocomplete="off" name="op_date" id="<?php echo $op_id; ?>" class="form-control datepicker" value="<?php echo $op_date; ?>" <?php echo $validation; ?>>
			</div>
</div><!--	Date End   -->




<table class="table table-condensed table-hover table-bordered">
				<thead>
					<tr style="background-color:#007BFF;color:#fff;">
						<th width="10%">Partner</th>
					    <th width="10%">Party ID</th>
						<th width="35%">Party Name</th>
						<th width="10%">Opening Balance</th>
					
					</tr>
	</thead>
			<tbody>
					<?php
						
						$sql	=	"SELECT * FROM party  GROUP BY `partner_id`";
						$result = mysqli_query($conn, $sql);
						while($row=mysqli_fetch_array($result))
						{
					?>
						
						
						
						<tr style="background-color:#b6d7fa;">
							<td>
								<?php 
								$dataresult =   getDataRowByTableAndId('partner', $row['partner_id']);
								echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : '');
								?>
							</td>
							<td colspan="6"></td>
						</tr>
						
						
						
						
						<?php 
							$partner_id = $row['partner_id'];
							$sqlall	=	"SELECT * FROM party WHERE `partner_id` = '$partner_id' GROUP BY `partner_id`;";
							$resultall = mysqli_query($conn, $sqlall);
							while($rowall=mysqli_fetch_array($resultall))
							{ ?>
						
						
						<?php 
							$partner_id = $rowall['partner_id'];
							$sqlmat	=	"SELECT * FROM party WHERE `partner_id` = '$partner_id' GROUP BY `party_id`;";
							$resultmat = mysqli_query($conn, $sqlmat);
							while($rowmat=mysqli_fetch_array($resultmat))
							{ ?>
						
						<tr>
							<td></td>
							
							<td><input class="form-control" name="party_id[]" id="party_id" type="text" value="<?php echo $rowmat['party_id']; ?>" readonly /></td>
							<td><input class="form-control" name="partyname[]" id="partyname" type="text" value="<?php echo $rowmat['partyname']; ?>" readonly /></td>
							<?php
							$party_id	=	$rowmat['party_id'];
							$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
							$sqlop			=	"SELECT * FROM party WHERE `party_id` = '$party_id';";
							$resultop		=	mysqli_query($conn, $sqlop);
							$rowop			=	mysqli_fetch_array($resultop);
							$rowcount 		=	mysqli_num_rows($resultop);
							
							if($rowcount > 0){
								$opbal 		= $rowop['opbal'];
								
								$submit_name	= 'op_edit';
								if($opbal > 0){
									//$validation 	= 'readonly';
									$validation 	= '';
									//$submit			= 'disabled';
									$submit			= '';
								}else{
									$validation 	= '';
									$submit			= '';
								}
							}else{
								$opbal		= 0;
							
								$validation 	= '';
								$submit			= '';
								$submit_name	= 'op_submit';
							}
							?>
							
							<td><input class="form-control" name="opbal[]" id="opbal" type="text" value="<?php echo $opbal; ?>" <?php echo $validation; ?> /></td>
							
						</tr>
						<?php } 
						
							} 
						} 
						?>
					</tbody>
			</table>
					<?php $project_id	= $_SESSION['logged']['project_id']; ?>
					<input type="hidden" name="project_id" value="<?php echo $project_id; ?>">
					<?php $warehouse_id	= $_SESSION['logged']['warehouse_id']; ?>
					<input type="hidden" name="warehouse_id" value="<?php echo $warehouse_id; ?>">
			<div class="col-xs-12">
				<div class="form-group">
					<input type="submit" name="<?php echo $submit_name; ?>" id="submit" class="btn btn-block btn-info" style="" value="SAVE DATA" <?php echo $submit; ?>/>    
				</div>
			</div>
    </form>
</div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->
<?php include 'footer.php' ?>
<script>
    $(function () {
        $("#op_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
</script>