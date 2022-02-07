
<?php include 'inc/header.php'; ?>
    <!-- Header end -->




        <div id="banner-area" class="banner-area bg-overlay" style="background-image:url(images/banner_img.jpg)">
            <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="banner-heading" >
                        <h1 class="banner-title">ENGINE</h1>
                    </div>
                </div><!-- Col end -->
            </div><!-- Row end -->
            </div><!-- Container end -->
        </div>

<style>
.news-demo {
  background: #fff;
  padding: 20px;
}

.news-demo h1 {
  text-align: center;
  font-family: Arial, sans-serif;
  color: #777;
  margin-bottom: 40px;
}

.news-demo .p {
  text-align: center;
  font-family: Arial, sans-serif;
  font-size: 22px;
  margin-top: 70px;
}

.news-demo .p ~ p {
  margin-top: 0;
}

.news-demo .p a {
  text-decoration: underline;
}

.news-demo .p a:hover {
  color: red;
}
</style>
<link rel="stylesheet" href="css/vertical.news.slider.css?v=1.0">
</head>
<body class="">


  <div class="news-holder cf news-demo">

  <h1>jQuery Vertical News Slider</h1>
    <ul class="news-headlines">
      <li class="selected">100 red bicycles stolen from local bike store</li>
      <li>New leash laws in effect for floppy-eared dogs</li>
      <li>Insider: Can palm trees be saved?</li>
      <li>Fresh recipes to titillate the taste buds</li>
      <li>Truck inspections under way for the metropolitan area</li>
      <li>Are the beaches safe for swimming this year?</li>
      <!-- li.highlight gets inserted here -->
    </ul>

    <div class="news-preview">

      <div class="news-content top-content">
        <img src="http://cdn.impressivewebs.com/news1.jpg">
        <p><a href="#">100 red bicycles stolen from local bike store</a></p>

        <p>A hundred red bicycles were stolen from under our noses yesterday, and nobody knows what went wrong.</p>
      </div><!-- .news-content -->

      <div class="news-content">
        <img src="http://cdn.impressivewebs.com/news2.jpg">
        <p><a href="#">New leash laws in effect for floppy-eared dogs</a></p>

        <p>Ears on dogs can be a tricky thing. Find out more about this amazing story and why these dogs are a nuisance.</p>
      </div><!-- .news-content -->

      <div class="news-content">
        <img src="http://cdn.impressivewebs.com/news3.jpg">
        <p><a href="#">Insider: Can palm trees be saved?</a></p>

        <p>Ah, the palm tree. It feeds us, it shades us, it does whatever we ask. We should think about it more deeply.</p>
      </div><!-- .news-content -->

      <div class="news-content">
        <img src="http://cdn.impressivewebs.com/news4.jpg">
        <p><a href="#">Fresh recipes to titillate the taste buds</a></p>

        <p>Food is great. These recipes will make you appreciate food as if it were even greater than great. It will be super great.</p>
      </div><!-- .news-content -->

      <div class="news-content">
        <img src="http://cdn.impressivewebs.com/news5.jpg">
        <p><a href="#">Truck inspections under way for the metropolitan area</a></p>

        <p>The Sherrif's department has put out an APB on these trucks. You know, this is the kind of thing that only happens in small towns.</p>
      </div><!-- .news-content -->

      <div class="news-content">
        <img src="http://cdn.impressivewebs.com/news6.jpg">
        <p><a href="#">Are the beaches safe for swimming this year?</a></p>

        <p>Giant orange pedal boats have been spotted at various beaches. In this report we tell you some ridiculous precautions to take.</p>
      </div><!-- .news-content -->

    </div><!-- .news-preview -->

  </div><!-- .news-holder -->

  <p class="p"><a href="https://github.com/impressivewebs/vertical-news-slider">View on GitHub</a></p>

  <p class="p"><a href="http://www.impressivewebs.com/jquery-vertical-news-slider/">View Blog Post</a></p>

  <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
  <script src="js/vertical.news.slider.min.js"></script>
  <script>
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-1965499-1']);
    _gaq.push(['_trackPageview']);

    (function() {
      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
  </script>
        <?php include 'inc/footer.php'; ?>
    <!--/ footer end -->