<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Homepage</title>

<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	rel="stylesheet">
<link rel='shortcut icon' type='image/x-icon' href='favicon.ico' />

<link href='https://fonts.googleapis.com/css?family=Noto+Sans'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Righteous'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=PT+Sans'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Hammersmith+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=NTR'
	rel='stylesheet' type='text/css'>

</head>

<body>

	<c:import url="../includes/header.jsp"></c:import>

	<style>
.navbar-default {
	background-color: transparent;
	border-color: transparent;
	-webkit-transition: all 0.5s ease 0s;
	-o-transition: all 0.5s ease 0s;
	transition: all 0.5s ease 0s;
}

.navbar-nav {
	margin-top: 40px;
	float: right;
}

@media screen and (max-width: 767px) {
	.navbar-nav {
		float: none;
		text-align: center;
		background: rgba(25, 33, 60, 0.5);
	}
}

.navbar-default .navbar-brand {
	margin-top: 40px;
	font-size: 28px;
	font-family: 'Righteous', cursive;
	color: #fff;
	letter-spacing: 1px;
	-moz-transition: color .5s ease-in;
	-o-transition: color .5s ease-in;
	-webkit-transition: color .5s ease-in;
}

.navbar-default .navbar-brand span {
	color: #42a5f6;
	-moz-transition: color .5s ease-in;
	-o-transition: color .5s ease-in;
	-webkit-transition: color .5s ease-in;
}

@media screen and (max-width: 400px) {
	.navbar-default .navbar-brand {
		font-size: 22px;
	}
}

.navbar-default .navbar-brand:hover, .navbar-default .navbar-brand span:hover
	{
	color: #3D99B8;
}

.navbar-default .navbar-nav>li>a {
	color: #fff;
	font-size: 14px;
	font-family: 'Noto Sans', sans-serif;
	text-transform: uppercase;
	letter-spacing: 1px;
}

.navbar-default .navbar-nav>li>a:hover {
	color: #42a5f6;
}

.navbar-default .navbar-nav>li>a:focus {
	color: #42a5f6;
}

.navbar-default .navbar-toggle {
	margin-top: 40px;
	border: none;
}

.navbar-default .navbar-toggle:focus, .navbar-default .navbar-toggle:hover
	{
	background: none;
}

.navbar-default .navbar-toggle .icon-bar {
	height: 4px;
	width: 28px;
	background: #42a5f6;
}

.navbar-default.shrink {
	background: rgba(25, 33, 60, 0.8)
}

.navbar-default.shrink .navbar-nav {
	margin-top: 20px;
	margin-bottom: 10px;
}

.navbar-default.shrink .navbar-brand {
	margin-top: 20px;
}

.navbar-default.shrink .navbar-toggle {
	margin-top: 25px;
}

.detailMap {
	min-height: 350px;
	min-width: 80%;
}
</style>

	<div id="about">
		<div class="container">
			<div class="text">
				<h2>큰 지도 부분</h2>
			</div>

		</div>
	</div>


	<div id="portfolio">
		<div class="container">
			<h2>영화 나오는 부분</h2>
			<div class="portfolioFilter">
				<ul class="Portfolio-nav wow fadeIn delay-02s">
					<li><a href="#" data-filter="*" class="current">All</a></li>
					<li><a href="#" data-filter=".webdesign">Web design</a></li>
					<li><a href="#" data-filter=".appdevelopment">App
							Development</a></li>
					<li><a href="#" data-filter=".graphicdesign">Graphic
							Design</a></li>
				</ul>
			</div>
		</div>

		<div class="portfolioContainer">
			<div class=" Portfolio-box appdevelopment">
				<a href="#"><img
					src="<c:url value="/resources/images/placeholder2.png" />" alt=""></a>
			</div>
			<div class="Portfolio-box webdesign">
				<a href="#"><img
					src="<c:url value="/resources/images/placeholder2.png" />" alt=""></a>
			</div>
			<div class=" Portfolio-box appdevelopment">
				<a href="#"><img
					src="<c:url value="/resources/images/placeholder2.png" />" alt=""></a>
			</div>
			<div class=" Portfolio-box webdesign">
				<a href="#"><img
					src="<c:url value="/resources/images/placeholder2.png" />" alt=""></a>
			</div>
			<div class=" Portfolio-box graphicdesign">
				<a href="#"><img
					src="<c:url value="/resources/images/placeholder2.png" />" alt=""></a>
			</div>
			<div class=" Portfolio-box graphicdesign">
				<a href="#"><img
					src="<c:url value="/resources/images/placeholder2.png" />" alt=""></a>
			</div>
		</div>

	</div>


	<div id="blog">
		<div class="container">
			<h2>
				<span>상세지도</span> 나오는곳
			</h2>
			<div class="detailMap"></div>
		</div>
	</div>




	<c:import url="../includes/footer.jsp"></c:import>



	<!-- jQuery -->
	<script src="<c:url value="/resources/js/jquery.js" />"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

	<script src="<c:url value="/resources/js/jquery.isotope.js" />"></script>

	<script src="<c:url value="/resources/js/jquery.scrollUp.min.js" />"></script>


	<script type="text/javascript">
		$('a[href^="#"]').on('click', function(event) {
			var target = $(this.getAttribute('href'));
			if (target.length) {
				event.preventDefault();
				$('html, body').stop().animate({
					scrollTop : target.offset().top
				}, 1000);
			}
		});
	</script>





	<!-- Portfolio Isotope Settings -->
	<script type="text/javascript">
		$(window)
				.load(
						function() {

							var $container = $('.portfolioContainer'), $body = $('body'), colW = 375, columns = null;

							$container.isotope({
								// disable window resizing
								resizable : true,
								masonry : {
									columnWidth : colW
								}
							});

							$(window).smartresize(
									function() {
										// check if columns has changed
										var currentColumns = Math.floor(($body
												.width() - 30)
												/ colW);
										if (currentColumns !== columns) {
											// set new column count
											columns = currentColumns;
											// apply width to container manually, then trigger relayout
											$container.width(columns * colW)
													.isotope('reLayout');
										}

									}).smartresize(); // trigger resize to set container width
							$('.portfolioFilter a').click(
									function() {
										$('.portfolioFilter .current')
												.removeClass('current');
										$(this).addClass('current');

										var selector = $(this).attr(
												'data-filter');
										$container.isotope({

											filter : selector,
										});
										return false;
									});

						});
	</script>
	<!-- Detail Map -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=43ebc80896d6b92c30a7a86d976b01f3"></script>
	<script>
		var mapContainer = $(".detailMap").get(0), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(37.566678, 126.978429), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		var map = new daum.maps.Map(mapContainer, mapOption);
	</script>

	<!-- Scroll To Top Settings -->
	<script type="text/javascript">
		$(function() {
			$.scrollUp({
				scrollName : 'scrollUp', // Element ID
				topDistance : '300', // Distance from top before showing element (px)
				topSpeed : 600, // Speed back to top (ms)
				animation : 'fade', // Fade, slide, none
				animationInSpeed : 200, // Animation in speed (ms)
				animationOutSpeed : 200, // Animation out speed (ms)
				activeOverlay : false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
				scrollImg : true,
			});
		});
	</script>

</body>

</html>
