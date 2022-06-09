<?php include 'header.php' ?>
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="party_payment.php">Party Payment Entry Form</a>
        </li>
		
		<li class="breadcrumb-item">
            <a href="party_ledger.php">Party Ledger Report</a>
        </li>
        <li class="breadcrumb-item active">List</li>
    </ol>
    <!-- receive search start here -->
    <?php include 'search/allpartyaccountstatus_report_search.php'; ?>
    <!-- end receive search -->


</div>
<!-- /.container-fluid -->
<?php include 'footer.php' ?>