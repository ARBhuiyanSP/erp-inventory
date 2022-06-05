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
          
            <a class="dropdown-item" href="supplier_entry.php">
                <i class="fa fa-bullseye" aria-hidden="true" style="color: #007BFF;"></i>
                <span class="sub_menu_text_design"> Supplier Add</span>
            </a>
			<a class="dropdown-item" href="supplier_info.php">
                <i class="fa fa-bullseye" aria-hidden="true" style="color: #007BFF;"></i>
                <span class="sub_menu_text_design"> Supplier Report</span>
            </a>
    
			
			
			
			
            
        </div>
    </li>
	
	<?php } else if  ($_SESSION['logged']['user_type'] == 'superadmin') { ?>
	
	
	
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
          
       
		
    
			
			
			
			
            
        </div>
    </li>
	
	
	
	<?php } ?>
	
</ul>