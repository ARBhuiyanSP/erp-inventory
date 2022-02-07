
<?php include 'inc/header.php'; ?>
    <!-- Header end -->
<link href="css/site.css?v3" rel="stylesheet" type="text/css" />


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="scripts/jquery.bootstrap.newsbox.js?v3" type="text/javascript"></script>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="card panel-default">
					<div class="card-header"> <span class="glyphicon glyphicon-list-alt"></span><b>News</b></div>
						<div class="card-body">
							<div class="row">
								<div class="col-xs-12">
									<ul class="demo1">
										<li class="news-item">
											<table cellpadding="4">
											<tr>
											<td><img src="images/1.png" width="60" class="img-circle" /></td>
											<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
											</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
											<tr>
											<td><img src="images/2.png" width="60" class="img-circle" /></td>
											<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
											</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
											<tr>
											<td><img src="images/3.png" width="60" class="img-circle" /></td>
											<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
											</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
											<tr>
											<td><img src="images/4.png" width="60" class="img-circle" /></td>
											<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
											</tr>
											</table>
										</li>
									</ul>
								</div>
							</div>
						</div>
				<div class="card-footer"> </div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function () {
			$(".demo1").bootstrapNews({
				newsPerPage: 3,
				autoplay: true,
				pauseOnHover:true,
				direction: 'up',
				newsTickerInterval: 4000,
				onToDo: function () {
					//console.log(this);
				}
			});
		});
	</script>
        <?php include 'inc/footer.php'; ?>
    <!--/ footer end -->