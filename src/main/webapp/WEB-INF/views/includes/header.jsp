<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button> 
			<a class="navbar-brand" href="#">Movie <span>Trip</span></a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="#mainCarousel">Home</a></li>
				<li><a href="#about">About</a></li>
				<li><a href="#portfolio">Portfolio</a></li>
				<li><a href="#blog">Blog</a></li>
				<li><a href="#contact">Contact Us</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>
<!-- Navbar Change on Scroll -->
<!-- jQuery -->
<script src="/resources/js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="/resources/js/bootstrap.min.js"></script>

<script src="/resources/js/jquery.isotope.js"></script>

<script src="/resources/js/jquery.scrollUp.min.js"></script>

<script type="text/javascript">
	$(document).ready(
			function() {

				$(function() {
					var shrinkHeader = 100;
					$(window).scroll(function() {
						var scroll = getCurrentScroll();
						if (scroll >= shrinkHeader) {
							$('.navbar-default').addClass('shrink');
						} else {
							$('.navbar-default').removeClass('shrink');
						}
					});
					function getCurrentScroll() {
						return window.pageYOffset
								|| document.documentElement.scrollTop;
					}
				});
			});
</script>
