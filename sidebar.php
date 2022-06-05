<style>
.sidebar{
	background-color:#e9ecef;
}
.sidebar .nav-item .nav-link span {
	color: #444;
	font-size:14px;
}
.sidebar .nav-item .nav-link{
	border:1px solid rgba(0, 0, 0, 0.125);
	margin-top:2px;
	margin-bottom:2px;
	color: #007bff;
	padding-left: 20px;
    padding-top: 5px;
}
.sidebar ul li {
	border-bottom: 1px solid #444;
}
.bg-dark {
    background-color: #007bff !important;
}
.form-control {
    border:1px solid #000000;
}

.reqr{
	font-size:10px;
	color:red;
	font-weight:bold;
	font-style:italic;
}
.scroll-area{
  width:100%;
  height:100%;
  float:left;
  overflow-y:scroll;
}
</style>
<ul class="sidebar navbar-nav scroll-area" style="height:100px;">
	
	                                        <?php if($_SESSION['logged']['user_type'] == 'whm') {?>
											
											
					<li class="nav-item" style="background-color:#007BFF;">
					<span class="nav-link" href="#">
					<i class="fa fa-bars" aria-hidden="true" style="color: #FFF;"></i>
					<span style="color: #FFF;">Settings</span></span>
					</li>
					
					
	<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-cog" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Master Setup</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
           
            
			
           
			
			 <a class="dropdown-item" href="opening_balance.php">
                <i class="fa fa-bullseye" aria-hidden="true" style="color: #007BFF;"></i>
                <span class="sub_menu_text_design"> Material OP Stock</span>
            </a>

			
			<a class="dropdown-item" href="buyprice.php">
                <i class="fa fa-bullseye" aria-hidden="true" style="color: #007BFF;"></i>
                <span class="sub_menu_text_design">Price set</span>
            </a>
			
			
			
			
            
        </div>
    </li>
	
				<li class="nav-item" style="background-color:#007BFF;">
				<span class="nav-link" href="#">
				<i class="fa fa-users" aria-hidden="true" style="color: #FFF;"></i>
				<span style="color: #FFF;">User Page</span></span>
				</li>
	
	
	
	
	
	
	<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-truck" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Material Receive</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="receive_entry.php"><i class="fa fa-plus" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Receive Entry</span></a>
            <a class="dropdown-item" href="receive-list.php"><i class="fa fa-list" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Receive List</span></a>
        </div>
    </li>
	<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-server" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Material SALE</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="issue_entry.php"><i class="fa fa-plus" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Material SALE</span></a>
            <a class="dropdown-item" href="issue-list.php"><i class="fa fa-list" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Issue List</span></a>
        </div>
    </li>
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-text-width " aria-hidden="true" style="color: #007BFF;"></i>
            <span>Warehouse Transfer</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="warehousetransfer_entry.php"><i class="fa fa-plus" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Warehouse Transfer</span></a>
            <a class="dropdown-item" href="transfer-list.php"><i class="fa fa-list" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">W.Transfer List</span></a>
        </div>
    </li>
	
	
	
	










	




							<li class="nav-item" style="background-color:#007BFF;">
							<span class="nav-link" href="#">
							<i class="fa fa-bars" aria-hidden="true" style="color: #FFF;"></i>
							<span style="color: #FFF;">Reports</span></span>
							</li>

	
	<li class="nav-item">
        <a class="nav-link" href="materialinfo_report.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Material List</span></a>
    </li>

	<li class="nav-item">
        <a class="nav-link" href="stock_report.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Stock Reports</span></a>
    </li>
	

	
	<li class="nav-item">
        <a class="nav-link" href="movement_report.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Movement Reports</span></a>
    </li>



	
	
	<li class="nav-item">
        <a class="nav-link" href="receive_report.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Receive details</span></a>
    </li>
	
	<li class="nav-item">
        <a class="nav-link" href="warhousetransfer_report.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Transfer details</span></a>
    </li>

	<li class="nav-item">
        <a class="nav-link" href="inventory_sheet.php"> 
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Inventory Sheet</span></a>
    </li>
	
	

	

	
						




	                               <?php } else if  ($_SESSION['logged']['user_type'] == 'admin') { ?>
	
	




					<li class="nav-item" style="background-color:#007BFF;">
					<span class="nav-link" href="#">
					<i class="fa fa-bars" aria-hidden="true" style="color: #FFF;"></i>
					<span style="color: #FFF;">Settings</span></span>
					</li>
					
					
	<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-cog" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Master Setup</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="material.php">
                <i class="fa fa-bullseye" aria-hidden="true" style="color: #007BFF;"></i>
                <span class="sub_menu_text_design"> Material</span>
            </a>
            <a class="dropdown-item" href="unit_entry.php">
                <i class="fa fa-bullseye" aria-hidden="true" style="color: #007BFF;"></i>
                <span class="sub_menu_text_design"> UOM</span>
            </a>
            <a class="dropdown-item" href="supplier_entry.php">
                <i class="fa fa-bullseye" aria-hidden="true" style="color: #007BFF;"></i>
                <span class="sub_menu_text_design"> Supplier Add</span>
            </a>
			<a class="dropdown-item" href="supplier_info.php">
                <i class="fa fa-bullseye" aria-hidden="true" style="color: #007BFF;"></i>
                <span class="sub_menu_text_design"> Supplier Report</span>
            </a>
            <a class="dropdown-item" href="project_entry.php">
                <i class="fa fa-bullseye" aria-hidden="true" style="color: #007BFF;"></i>
                <span class="sub_menu_text_design"> Projects</span>
            </a>
            <a class="dropdown-item" href="partner_entry.php">
                <i class="fa fa-bullseye" aria-hidden="true" style="color: #007BFF;"></i>
                <span class="sub_menu_text_design"> Partner</span>
            </a>
			
            <a class="dropdown-item" href="Party_entry.php">
                <i class="fa fa-bullseye" aria-hidden="true" style="color: #007BFF;"></i>
                <span class="sub_menu_text_design"> Party</span>
            </a>
            <a class="dropdown-item" href="warehouse_entry.php">
                <i class="fa fa-bullseye" aria-hidden="true" style="color: #007BFF;"></i>
                <span class="sub_menu_text_design"> Warehouse</span>
            </a>
			
			 <a class="dropdown-item" href="opening_balance.php">
                <i class="fa fa-bullseye" aria-hidden="true" style="color: #007BFF;"></i>
                <span class="sub_menu_text_design"> Material OP Stock</span>
            </a>
			
			<a class="dropdown-item" href="partyclosing_Balance.php">
                <i class="fa fa-bullseye" aria-hidden="true" style="color: #007BFF;"></i>
                <span class="sub_menu_text_design"> Party OP Bal</span>
            </a>
			
		    <a class="dropdown-item" href="supplierclosing_Balance.php">
                <i class="fa fa-bullseye" aria-hidden="true" style="color: #007BFF;"></i>
                <span class="sub_menu_text_design"> Supplier OP Bal</span>
            </a>
			
		   <a class="dropdown-item" href="partnerclosing_Balance.php">
                <i class="fa fa-bullseye" aria-hidden="true" style="color: #007BFF;"></i>
                <span class="sub_menu_text_design"> Partner OP Bal</span>
            </a>
			
			
			
			
			<a class="dropdown-item" href="buyprice.php">
                <i class="fa fa-bullseye" aria-hidden="true" style="color: #007BFF;"></i>
                <span class="sub_menu_text_design">Price set</span>
            </a>
			
			
			
			
            
        </div>
    </li>
	
				<li class="nav-item" style="background-color:#007BFF;">
				<span class="nav-link" href="#">
				<i class="fa fa-users" aria-hidden="true" style="color: #FFF;"></i>
				<span style="color: #FFF;">User Page</span></span>
				</li>
	
	
	
	
	
	
	<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-truck" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Material Receive</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="receive_entry.php"><i class="fa fa-plus" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Receive Entry</span></a>
            <a class="dropdown-item" href="receive-list.php"><i class="fa fa-list" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Receive List</span></a>
        </div>
    </li>
	<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-server" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Material SALE</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="issue_entry.php"><i class="fa fa-plus" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Material SALE</span></a>
            <a class="dropdown-item" href="issue-list.php"><i class="fa fa-list" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Issue List</span></a>
        </div>
    </li>
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-text-width " aria-hidden="true" style="color: #007BFF;"></i>
            <span>Warehouse Transfer</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="warehousetransfer_entry.php"><i class="fa fa-plus" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Warehouse Transfer</span></a>
            <a class="dropdown-item" href="transfer-list.php"><i class="fa fa-list" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">W.Transfer List</span></a>
        </div>
    </li>
	
	
	
	
	  <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-text-width " aria-hidden="true" style="color: #007BFF;"></i>
            <span>Scrap Sale</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="scrap_sale.php"><i class="fa fa-plus" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Scrap Sale</span></a>
            <a class="dropdown-item" href="scrap-list.php"><i class="fa fa-list" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Scrap Sale List</span></a>
        </div>
    </li>

		  <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-text-width " aria-hidden="true" style="color: #007BFF;"></i>
            <span>Damarage Sale</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="damarage_sale.php"><i class="fa fa-plus" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Damarage Sale</span></a>
            <a class="dropdown-item" href="damarage-list.php"><i class="fa fa-list" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Damarage Sale List</span></a>
        </div>
    </li>

<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-text-width " aria-hidden="true" style="color: #007BFF;"></i>
            <span>Replace Receive</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="damage_entry.php"><i class="fa fa-plus" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Replace Receive</span></a>
            <a class="dropdown-item" href="replacereceive-list.php"><i class="fa fa-list" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Replace Receive List</span></a>
        </div>
</li>



<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-text-width " aria-hidden="true" style="color: #007BFF;"></i>
            <span>Replace Out</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="damageout_entry.php"><i class="fa fa-plus" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Replace Out</span></a>
            <a class="dropdown-item" href="replaceout-list.php"><i class="fa fa-list" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Replace Out List</span></a>
        </div>
</li>



	 <li class="nav-item">
        <a class="nav-link" href="payment_entry.php">
            <i class="fa fa-money-bill" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Supplier Payment</span></a>
</li>
	
	
	 <li class="nav-item">
        <a class="nav-link" href="party_payment.php">
            <i class="fa fa-money-bill" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Party Payment</span></a>
    </li>
	
	
    <li class="nav-item">
        <a class="nav-link" href="transport.php">
            <i class="fa fa-money-bill" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Transport Cost</span></a>
    </li>
	
    <li class="nav-item">
        <a class="nav-link" href="partnerpayment.php">
            <i class="fa fa-money-bill" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Partner Accounts</span></a>
    </li>	
	

<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-text-width " aria-hidden="true" style="color: #007BFF;"></i>
            <span>Replace Out To Supplier</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="replaceOutToSupplier.php"><i class="fa fa-plus" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Replace Out To Supplier</span></a>
            <a class="dropdown-item" href="replaceOutToSupplier-list.php"><i class="fa fa-list" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Replace Out from supplier List</span></a>
        </div>
</li>


<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-text-width " aria-hidden="true" style="color: #007BFF;"></i>
            <span>Replace Receive from Supplier</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="replacereceivefromsupplier.php"><i class="fa fa-plus" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Replace Receive from Supplier</span></a>
            <a class="dropdown-item" href="replacereceivefromsupplier-list.php"><i class="fa fa-list" aria-hidden="true" style="color: #007BFF;"></i><span class="sub_menu_text_design">Replace Receive from Supplier List</span></a>
        </div>
</li>



							<li class="nav-item" style="background-color:#007BFF;">
							<span class="nav-link" href="#">
							<i class="fa fa-bars" aria-hidden="true" style="color: #FFF;"></i>
							<span style="color: #FFF;">Reports</span></span>
							</li>

	
	<li class="nav-item">
        <a class="nav-link" href="materialinfo_report.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Material List</span></a>
    </li>

	<li class="nav-item">
        <a class="nav-link" href="stock_report.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Stock Reports</span></a>
    </li>
	
		<li class="nav-item">
        <a class="nav-link" href="netprofitparty_report.php">
            <i class="fa fa-money-bill" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Net Profit</span></a>
    </li>
	
	
	<li class="nav-item">
        <a class="nav-link" href="movement_report.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Movement Reports</span></a>
    </li>
	<li class="nav-item">
        <a class="nav-link" href="consumption_report.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Sales Reports</span></a>
    </li>
	
	<li class="nav-item">
        <a class="nav-link" href="issue_report.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Sales Details</span></a>
    </li>
	
	<li class="nav-item">
        <a class="nav-link" href="supplier_ledger.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Supplier Ledger</span></a>
    </li>
	
	
	<li class="nav-item">
        <a class="nav-link" href="party_ledger.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Party Ledger</span></a>
    </li>
	
	
	
	<li class="nav-item">
        <a class="nav-link" href="receive_report.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Receive details</span></a>
    </li>
	
	<li class="nav-item">
        <a class="nav-link" href="warhousetransfer_report.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Transfer details</span></a>
    </li>

	<li class="nav-item">
        <a class="nav-link" href="inventory_sheet.php"> 
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Inventory Sheet</span></a>
    </li>
	
	
	
	<li class="nav-item">
        <a class="nav-link" href="movementdamage_report.php"> 
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Replace Battery Report</span></a>
    </li>
	
	
	<li class="nav-item">
        <a class="nav-link" href="scrap_report.php"> 
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Scrap Sales report</span></a>
    </li>
	
	
	
	
	
							<?php } else if  ($_SESSION['logged']['user_type'] == 'superAdmin') { ?>
	
	
	
							<li class="nav-item" style="background-color:#007BFF;">
							<span class="nav-link" href="#">
							<i class="fa fa-bars" aria-hidden="true" style="color: #FFF;"></i>
							<span style="color: #FFF;">Reports</span></span>
							</li>

	
	<li class="nav-item">
        <a class="nav-link" href="materialinfo_report.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Material List</span></a>
    </li>

	<li class="nav-item">
        <a class="nav-link" href="stock_report.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Stock Reports</span></a>
    </li>
	
		<li class="nav-item">
        <a class="nav-link" href="netprofitparty_report.php">
            <i class="fa fa-money-bill" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Net Profit</span></a>
    </li>
	
	
	<li class="nav-item">
        <a class="nav-link" href="movement_report.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Movement Reports</span></a>
    </li>
	<li class="nav-item">
        <a class="nav-link" href="consumption_report.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Sales Reports</span></a>
    </li>
	
	<li class="nav-item">
        <a class="nav-link" href="issue_report.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Sales Details</span></a>
    </li>
	
	<li class="nav-item">
        <a class="nav-link" href="supplier_ledger.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Supplier Ledger</span></a>
    </li>
	
	
	<li class="nav-item">
        <a class="nav-link" href="party_ledger.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Party Ledger</span></a>
    </li>
	
	
	
	<li class="nav-item">
        <a class="nav-link" href="receive_report.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Receive details</span></a>
    </li>
	
	<li class="nav-item">
        <a class="nav-link" href="warhousetransfer_report.php">
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Transfer details</span></a>
    </li>

	<li class="nav-item">
        <a class="nav-link" href="inventory_sheet.php"> 
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Inventory Sheet</span></a>
    </li>
	
	
	
	<li class="nav-item">
        <a class="nav-link" href="movementdamage_report.php"> 
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Replace Battery Report</span></a>
    </li>
	
	
	<li class="nav-item">
        <a class="nav-link" href="scrap_report.php"> 
            <i class="fa fa-registered" aria-hidden="true" style="color: #007BFF;"></i>
            <span>Scrap Sales report</span></a>
    </li>
	
	
	
	
	<?php } ?>
	
</ul>