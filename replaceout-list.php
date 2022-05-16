<?php 
include 'header.php';

 ?>
<link href="css/dataTables.bootstrap4.min.css" rel="stylesheet">

<div class="container-fluid">
    <!-- DataTables Example -->
    <div class="card mb-4">
        <div class="card-header">
            <i class="fas fa-table"></i>
            Replace Receive List</div>
        <div class="card-body">
            <table id="example" class="table table-striped table-bordered" style="width:100%">
				<thead>
					<tr>
						<th>Replace Out ID</th>
						<th>Date</th>
						<th>Partner</th>
						<th>Party</th>
						<th>warehouse</th>
					    <th>Action</th>
					</tr>
				</thead>
				<tbody>
					<?php
					if($_SESSION['logged']['user_type'] == 'whm') {
						$item_details = getTableDataByTableNameWid('inv_damageout', '', 'id');
					}else{
						$item_details = getTableDataByTableName('inv_damageout', '', 'id');
					}
					if (isset($item_details) && !empty($item_details)) {
						foreach ($item_details as $item) {
							if($item['approval_status'] == 0){
							?>
							<tr style="background-color: #FFC107;max-height:10px;">
							<?php  }else{ ?>
							<tr style="background-color: #218838;max-height:10px;">
							<?php  }?>
								<td><?php echo $item['damageout_id']; ?></td>
								<td><?php echo $item['damageout_date']; ?></td>
								
							
								
								<td>
									<?php 
									$dataresult =   getDataRowByTableAndId('partner', $item['partner_id']);
									echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : '');
									?>
								</td>
								
								<td>
									<?php 
									$dataresult =   getDataRowByTableAndId1('party', $item['party_id']);
									echo (isset($dataresult) && !empty($dataresult) ? $dataresult->partyname : '');
									?>
								</td>
								
								
								<td>
									<?php 
									$dataresult =   getDataRowByTableAndId('inv_warehosueinfo', $item['warehouse_id']);
									echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : '');
									?>
								</td>
								<td>
									<span><a class="action-icons c-approve" href="replacereceive-view.php?no=<?php echo $item['damageout_id']; ?>" title="View"><i class="fas fa-eye text-success"></i></a></span>
									
									
									
									<span><a class="action-icons c-delete" href="replaceout_edit.php?edit_id=<?php echo $item['id']; ?>" title="edit"><i class="fa fa-edit text-info mborder"></i></a></span> 
									
									
									
									<?php if($_SESSION['logged']['user_type'] == 'superAdmin') {?>
										<span><a class="action-icons c-delete" href="replacereceive_approve.php?issue=<?php echo $item['damageout_id']; ?>" title="approve"><i class="fa fa-check text-info mborder"></i></a></span>
										<?php } ?>
							<span><a class="action-icons c-delete" href="#" title="delete"><i class="fa fa-trash text-danger"></i></a></span>
								</td>
							</tr>
							<?php
						}
					}else{ ?>
						  <tr>
							  <td colspan="7">
									<div class="alert alert-info" role="alert">
										Sorry, no data found!
									</div>
								</td>
							</tr>  
					<?php } ?>
				</tbody>
			</table>
        </div>
    </div>

</div>
<!-- /.container-fluid -->
<?php include 'footer.php' ?>
<script>
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>