<?php include 'inc/header.php'; ?>
    <!-- Header end -->

        <div id="banner-area" class="banner-area bg-overlay" style="background-image:url(images/teksanbanner.jpg)">
            <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="banner-heading" >
                        <h1 class="banner-title"></h1>
						
                    </div>
                </div><!-- Col end -->
            </div><!-- Row end -->
            </div><!-- Container end -->
        </div>
		<!--- Breadcrumbs --->
		<section style="background:#DDDADA;">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<nav class="breadcrumbs">
						  <a href="index.php" class="breadcrumbs__item"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
						  <a href="javascript:void(0);" class="breadcrumbs__item">Products</a>
						  <a class="breadcrumbs__item is-active">Generators</a> 
						</nav>
					</div>
				</div>
			</div>
		</section>
		<!--- Breadcrumbs --->

        <!-- Port Handling Top Start section -->
<?php  include 'inc/generator-top.php'; ?>
        <!-- Port Handling Top End section -->
		
<?php  include 'inc/generatorp.php'; ?>
	<!-- Project Block End -->

<?php  include 'inc/client_list.php'; ?>    
        

        <?php include 'inc/footer.php'; ?>
    <!--/ footer end -->