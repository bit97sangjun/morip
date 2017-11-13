<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top shrink" role="navigation">
	<div class="container menubar">
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
				<button id="loginBtn" class="btn btn-hero btn-lg" role="button">로그인</button>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>
<div style="height: 111px">

</div>
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
						/* if (scroll >= shrinkHeader) {
							$('.navbar-default').addClass('shrink');
						} else {
							$('.navbar-default').removeClass('shrink');
						} */
					});
					function getCurrentScroll() {
						return window.pageYOffset
								|| document.documentElement.scrollTop;
					}
				});
			});
	$('#loginBtn').click(function() {
		location.href = '/login';
	});
</script>
