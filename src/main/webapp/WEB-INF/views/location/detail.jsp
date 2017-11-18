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
<link href="<c:url value="/resources/css/largemap.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
<link rel='shortcut icon' type='image/x-icon' href='favicon.ico' />

<link href='https://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Hammersmith+One' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=NTR' rel='stylesheet' type='text/css'>

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

.movieImg {
	width: 250px;
	height: 350px;
}
</style>

	<div id="about">
		<div class="container">
			<h2 id="movieTitle"></h2>
			<div class="movieImg" style="float: left; margin-right: 100px;"></div>
			<div id="map" style="width:700px; height:350px; float: left;"></div>
		</div>
	</div>
    
    <div id="portfolio">
    	<div class="container">
    		<h2>내용</h2>
    	</div>
    </div>
    
    <div id="blog">
    	<div class="container">
    		<h2>댓글</h2>
	   		<form id="commentForm" method="post">
	   		<input type="hidden" name="rno" value="1" id="rno">
    			평점
    			<select id="score" name="score">
    				<option value="1">1</option>
    				<option value="2">2</option>
    				<option value="3">3</option>
    				<option value="4">4</option>
    				<option value="5">5</option>
    			</select><br>
    			<textarea rows="5" cols="100" name="ccontent" id="ccontent"></textarea>
    			<button id="commentInsertBtn">등록</button>
    		</form>
    		<div id="commentList">
    		</div>
    	</div>
    </div>

	<c:import url="../includes/footer.jsp"></c:import>

    <!-- jQuery -->
    <script src="/resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/js/bootstrap.min.js"></script>
    
    <script src="/resources/js/jquery.isotope.js"></script>
    
    <script src="/resources/js/jquery.scrollUp.min.js"></script>
    

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=43ebc80896d6b92c30a7a86d976b01f3&libraries=services"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(37.566678, 126.978429), // 지도의 중심좌표
			level : 8
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new daum.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new daum.maps.services.Geocoder();

		<c:forEach items="${marker}" var="place">
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch("${place.addr}", function(result, status) {
			// 정상적으로 검색이 완료됐으면 
			if (status === daum.maps.services.Status.OK) {

				var coords = new daum.maps.LatLng(result[0].y,
						result[0].x);

				// 결과값으로 받은 위치를 마커로 표시합니다
				var marker = new daum.maps.Marker({
					map : map,
					position : coords
				});

// 				// 인포윈도우로 장소에 대한 설명을 표시합니다
// 				var infowindow = new daum.maps.InfoWindow(
// 						{
// 							content : '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
// 						});
// 				infowindow.open(map, marker);

				// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				map.setCenter(coords);
			}
		});
		</c:forEach>
	</script>

	<script type="text/javascript">
	
	$("#commentInsertBtn").on("click", function () {

		$.ajax({
			url : "/comment/commentList",
			type : "GET",
			data : {
				"rno" : $("#rno").val(),
			}
		}).done(function (result) {
			var str = "";
			$()
			$(".commentList").html(str);
		});
		
	});
	
	$("#movieTitle").html("${movie.mtitle}");
	
	$(".movieImg").html("<img src='/resources/images/movieimg/" + '${movie.mimg}' + "'/>");
	
    </script>
        
    <!-- Scroll To Top Settings -->
    <script>
    $(function () {
  		$.scrollUp({
    		scrollName: 'scrollUp', // Element ID
    		topDistance: '300', // Distance from top before showing element (px)
    		topSpeed: 600, // Speed back to top (ms)
    		animation: 'fade', // Fade, slide, none
    		animationInSpeed: 200, // Animation in speed (ms)
    		animationOutSpeed: 200, // Animation out speed (ms)
    		activeOverlay: false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
    		scrollImg: true,
  		});
	});
    
    </script>
        
    </body>
</html>
	
