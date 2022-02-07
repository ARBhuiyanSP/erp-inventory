<!DOCTYPE html>
<html>
<head>
<title>Slider</title>
<link rel="stylesheet" type="text/css" href="custom.css">
<link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.carousel-caption a{
color:#fff;
font-weight: bold;
}
.carousel-caption p a{
color:#fff;
font-size:12px;
letter-spacing:2px;
}
#myCarousel .carousel-caption {
left:0;
right:0;
bottom:0;
text-align:left;
padding:10px;
background:rgba(0,0,0,0.6);
text-shadow:none;
}
#myCarousel .list-group {
position:absolute;
top:0;
right:0;
}
#myCarousel .list-group-item{
padding:0px 10px !important;
border-radius:0px;
cursor:pointer;
height:81px;
color:#fff;
overflow: hidden;
background-color:#000 !important;
}
#myCarousel .list-group .active {
background-color: #E26302 !important;
border:1px solid #fff !important;
}
@media (min-width: 992px) {
#myCarousel {padding-right:33.3333%;}
#myCarousel .carousel-controls {display:none;}
}
@media (max-width: 991px) {
.carousel-caption p,
#myCarousel .list-group {display:none;}
}
</style>
</head>
<body>
<div class="container">
<div class="hedding"><h1>SLIDER</h1></div>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
<div class="carousel-inner">
<div class="item active">
<img src="http://fantatours.com/wp-content/uploads/2016/03/%E5%8C%85%E5%81%89%E6%B9%963.jpg">
<div class="carousel-caption">
<h4><a href="http://www.nicesnippets.com" target="_blank" class="label label-danger">Lorem ipsum dolor sit amet consetetur sadipscing</a></h4>
<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. <a class="label label-primary" href="http://www.nicesnippets.com" target="_blank">Nice snippets</a></p>
</div>
</div>
<div class="item">
<img src="http://bcdn.newshunt.com/cmd/resize/400x400_60/fetchdata13/images/95/ef/86/95ef86e84e908cc208cbb8f15808ba20.jpg">
<div class="carousel-caption">
<h4><a href="http://www.nicesnippets.com" target="_blank" class="label label-danger">consetetur sadipscing elitr, sed diam nonumy eirmod</a></h4>
<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. <a class="label label-primary" href="http://www.nicesnippets.com" target="_blank">Nice snippets</a></p>
</div>
</div>
<div class="item">
<img src="http://www.eco-u.org/wp-content/uploads/2017/06/20170613_143901-760x400.jpg">
<div class="carousel-caption">
<h4><a href="http://www.nicesnippets.com" target="_blank" class="label label-danger">tempor invidunt ut labore et dolore</a></h4>
<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. <a class="label label-primary" href="http://www.nicesnippets.com" target="_blank">Nice snippets</a></p>
</div>
</div>
<div class="item">
<img src="https://thedetailedhistory.com/wp-content/uploads/2017/12/Inca-Empire-Stronghold-760x400.jpg">
<div class="carousel-caption">
<h4><a href="http://www.nicesnippets.com" target="_blank" class="label label-danger">magna aliquyam erat, sed diam voluptua</a></h4>
<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. <a class="label label-primary" href="http://www.nicesnippets.com" target="_blank">Nice snippets</a></p>
</div>
</div>
<div class="item">
<img src="https://i.pinimg.com/originals/ae/e1/9d/aee19dd188b3bc65525c2ff95151a35d.jpg">
<div class="carousel-caption">
<h4><a href="http://www.nicesnippets.com" target="_blank" class="label label-danger">tempor invidunt ut labore et dolore magna aliquyam erat</a></h4>
<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. <a class="label label-primary" href="http://www.nicesnippets.com" target="_blank">Nice snippets</a></p>
</div>
</div>
</div>
<ul class="list-group col-sm-4">
<li data-target="#myCarousel" data-slide-to="0" class="list-group-item active"><h4>Lorem ipsum dolor sit amet consetetur sadipscing</h4></li>
<li data-target="#myCarousel" data-slide-to="1" class="list-group-item"><h4>consetetur sadipscing elitr, sed diam nonumy eirmod</h4></li>
<li data-target="#myCarousel" data-slide-to="2" class="list-group-item"><h4>tempor invidunt ut labore et dolore</h4></li>
<li data-target="#myCarousel" data-slide-to="3" class="list-group-item"><h4>magna aliquyam erat, sed diam voluptua</h4></li>
<li data-target="#myCarousel" data-slide-to="4" class="list-group-item"><h4>tempor invidunt ut labore et dolore magna aliquyam erat</h4></li>
</ul>
<div class="carousel-controls">
<a class="left carousel-control" href="#myCarousel" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left"></span>
</a>
<a class="right carousel-control" href="#myCarousel" data-slide="next">
<span class="glyphicon glyphicon-chevron-right"></span>
</a>
</div>
</div>
</div>
<script>
$(document).ready(function(){
var clickEvent = false;
$('#myCarousel').carousel({
interval: 4000
}).on('click', '.list-group li', function() {
clickEvent = true;
$('.list-group li').removeClass('active');
$(this).addClass('active');
}).on('slid.bs.carousel', function(e) {
if(!clickEvent) {
var count = $('.list-group').children().length -1;
var current = $('.list-group li.active');
current.removeClass('active').next().addClass('active');
var id = parseInt(current.data('slide-to'));
if(count == id) {
$('.list-group li').first().addClass('active');
}
}
clickEvent = false;
});
})
$(window).load(function() {
var boxheight = $('#myCarousel .carousel-inner').innerHeight();
var itemlength = $('#myCarousel .item').length;
var triggerheight = Math.round(boxheight/itemlength+1);
$('#myCarousel .list-group-item').outerHeight(triggerheight);
});
</script>
</body>
</html>