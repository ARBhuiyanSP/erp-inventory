<?php include 'header.php' ?>
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="#">Party Ledger Report</a>
        </li>
		<li class="breadcrumb-item">
            <a href="allpartyaccountstatus_report.php">All Party Balance Report</a>
			
        </li>
		
		<li class="breadcrumb-item">
            <a href="allpartyaccountstatuspartnerandpartywise_report.php">Partner and  Party wise Balance Report</a>
			
        </li>
		
		
        <li class="breadcrumb-item active">List</li>
    </ol>
    <!-- receive search start here -->
    <?php include 'search/party_ledger_report_search.php'; ?>
    <!-- end receive search -->


</div>
<!-- /.container-fluid -->
<?php include 'footer.php' ?>