<!doctype html>
<html>
<head>
    <!-- Basic Page Needs =====================================-->
    <meta charset="utf-8">
    <!-- Site Title- -->
    <title>Maxon Power Ltd</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">

    <!-- Mobile Specific Metas ================================-->

    <!-- <link rel="icon" type="image/png" href="favicon.ico"> -->
    <!-- Place favicon.ico in the root directory -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,600,700,800,900">
	<link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/iconfont.css">
    <link rel="stylesheet" href="css/isotope.css">


    <link rel="stylesheet" href="css/magnific-popup.css">

    <!--For Plugins external css-->
    <link rel="stylesheet" href="css/plugins.css" />


    <!--Theme custom css -->
    <link rel="stylesheet" href="css/style.css">

    <!--Theme Responsive css-->
    <link rel="stylesheet" href="css/responsive.css" />
	<link rel="icon" href="images/fav.png" type="image/gif" sizes="50x50">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
$(window).on('load', function() { // makes sure the whole site is loaded 
  $('#status').delay(1000).fadeOut(); // will first fade out the loading animation 
  $('#preloader').delay(1000).fadeOut('slow'); // will fade out the white DIV that covers the website. 
  $('body').delay(350).css({'overflow':'visible'});
})


</script>
<style>
html {
  scroll-behavior: smooth;
}
/* Preloader */

#preloader {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #fff;
  /* change if the mask should have another color then white */
  z-index: 1000;
  /* makes sure it stays on top */
}

#status {
  width: 700px;
  height: 500px;
  position: absolute;
  left: 35%;
  /* centers the loading animation horizontally one the screen */
  top: 20%;
  /* centers the loading animation vertically one the screen */
  background-image: url(images/maxon-gen.gif);
  /* path to your loading animation */
  background-repeat: no-repeat;
  background-position: center;
  margin: -100px 0 0 -100px;
  /* is width and height divided by two */
}




</style>
<link href="css/breadcrumbs.css" rel="stylesheet" id="">
</head>

<body>
<!-- Preloader -->
<!-- <div id="preloader">
  <div id="status">&nbsp;</div>
</div> -->
    <!-- nav search -->
    <div class="zoom-anim-dialog mfp-hide modal-searchPanel" id="modal-popup-2">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="xs-search-panel">
                    <form action="#" method="POST" class="xs-search-group">
                        <input type="search" class="form-control" name="search" id="search" placeholder="Search">
                        <button type="submit" class="search-button"><i class="icon icon-search1"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div><!-- End xs modal -->
    <!-- end language switcher strart -->


    <!--Home page style-->
    <header id="header" class="header-transparent">
        <div class="nav ts-nav topbar">
            <div class="container">
                <div class="row ">
                    <div class="col-lg-4">
                        <!--  <a class="nav-brand" href="#"></a>-->
                        <div class="logo-area" style="background-color:#DDDADA;border-radius:0px 30px 30px 0px;padding-right:15px;padding-left:5px;background: rgba(255, 255, 255, 0.8);">
                            <a href="index.php" class="logo">
                                <img class="img-fluid" src="images/logo.png" alt="">
                            </a>
                        </div>
                    </div><!-- Col end -->
                    <div class="col-lg-8">
                        <div class="top-bar pull-right" style="background-color:#0171BB;border-radius:30px 0px 0px 30px;">
                            <ul class="header-nav-right-info">
                                <li>
                                    <i class="fa fa-volume-control-phone" aria-hidden="true"></i>
                                    <span>16650</span>
                                    Hotline Number
                                </li>
                                <li>
                                    <i class="fa fa-envelope-open-o" aria-hidden="true"></i>
                                    <span>info@maxonpowerltd.com</span>
                                    Email Address
                                </li>
                               <!-- <li>
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    <span>1105 Roosevelt Street CA</span>
                                    Get Dirction
                                </li> -->
                            </ul>
                        </div><!-- Top bar end -->

                    </div>
                </div><!-- .row end -->
            </div><!-- .container end -->
        </div>

        <!-- navbar container start -->
        <div class="navbar-container navbar-sticky">
            <div class="container">
                <?php include('inc/menu.php'); ?>
            </div>
        </div>
        <!-- navbar contianer end -->
    </header>