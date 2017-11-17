<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Popover -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Profile Upload CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top shrink"
	role="navigation">
	<div class="container menubar">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/home">Movie <span>Trip</span></a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav" id="buttonBox" ng-app="app" ng-controller="Ctrl">
				<button id="loginBtn" class="btn btn-hero btn-lg menubtn"
					role="button">로그인</button>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>
<div style="height: 84px"></div>
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

				
				$('[data-toggle="popover"]').popover({ 
				    html : true,
				    content: function() {
				      return '<div id="profileBox">'
				      +'<img id="profilePreview"/>'
				      +'</div>'
				      +'<form id="profileForm" enctype="multipart/form-data" method="post">'
				      + '<input id="profileFile" type="file" accept="image/*" />'
				      + '<button id="fileBtn" type="button"><i class="fa fa-upload"></i>파일 선택</button>'
				      + '<button id="resetBtn" type="button">기본 이미지로 변경</button>'
				      + '<button id="updateBtn" type="button">프로필 이미지로 설정</button>'
				      +'</form>'
				      + '<button id="logoutBtn" class="btn btn-hero btn-lg menubtn" role="button">로그아웃</button>';
				    }
				  });

			});
	
	$('#loginBtn').click(function() {
		location.href = '/login';
	});


	if ("${login}" != "") {
		console.log("로그인한경우");
		$("#buttonBox").html('<img title="프로필" data-placement="bottom" data-toggle="popover" id="mypage" src="/resources/images/profileimg/profileimg.png" style="width:40px; height:40px"/>');
	}

	
	$('#buttonBox').on("click", "*", function() {
		
		switch ($(this)[0].id) {
		case "loginBtn":
			console.log("로그인눌림");
			location.href = '/login';
			break;
		case "mypage":
			console.log("프로필눌림");
			$('[data-toggle="popover"]').popover();
			break;
		case "logoutBtn": 
			console.log("로그아웃눌림");
			location.href = '/logout';
			$("#buttonBox").html('<button id="loginBtn" class="btn btn-hero btn-lg" role="button">로그인</button>');
			break;
		case "resetBtn":
			console.log("리셋눌림");
			$("#profilePreview").attr('src','/resources/images/profileimg/profileimg.png');
			break;
		case "updateBtn":
			console.log("수정눌림");
			break;
		}
		
	});
	
	
	$("#buttonBox").on("change", "#profileFile", function () {
 		readURL($(this)[0]);
		console.log("change");
	});
	
	var profileForm = $("#profileForm");
	
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#profilePreview').attr('src', e.target.result);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }

</script>
