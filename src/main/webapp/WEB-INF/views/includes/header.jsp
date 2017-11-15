<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Popover -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
<div style="height: 111px"></div>
<!-- Navbar Change on Scroll -->
<!-- jQuery -->
<script src="/resources/js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="/resources/js/bootstrap.min.js"></script>

<script src="/resources/js/jquery.isotope.js"></script>

<script src="/resources/js/jquery.scrollUp.min.js"></script>
<!-- angular -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>

<script src="https://rawgit.com/CrackerakiUA/ui-cropper/master/compile/unminified/ui-cropper.js"></script>

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
				      return '<div id="profileBox"><img id="profilePreview" ng-src="{{myCroppedImage}}"></img></div><form id="profileForm" enctype="multipart/form-data" method="post">'
				      + '<div ng-hide="myCroppedImage"><input id="profileFile" type="file" accept="image/png, image/jpeg, image/gif" /></div>'
				      + '<ui-cropper image="myImage" area-type="circle" chargement="Loading" result-image="myCroppedImage" canvas-scalemode="true"></ui-cropper>'
				      + '<button>수정</button></form>'
				      + '<button id="logoutBtn" class="btn btn-hero btn-lg menubtn" role="button">로그아웃</button>';
				    }
				  });

			});
	$('#loginBtn').click(function() {
		location.href = '/login';
	});

	console.log("${login}");

	if ("${login}" != "") {
		console.log("로그인한경우");
		$("#buttonBox")
				.html(
						'<img title="프로필" data-placement="bottom" data-toggle="popover" id="mypage" src="/resources/images/profileimg/profileimg.png" style="width:40px; height:40px"/>')
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

		}
		
	});
	
	angular.module('app', ['uiCropper'])
	  .controller('Ctrl', function($scope) {
	    $scope.myImage='';
	    $scope.myCroppedImage='';

	    var handleFileSelect=function(evt) {
	    	console.log("그냥뭐");
	    	console.dir(evt);
	      var file=evt.files[0];
	      var reader = new FileReader();
	      reader.onload = function (evt) {
	        $scope.$apply(function($scope){
	          $scope.myImage=evt.target.result;
	        });
	      };
	      reader.readAsDataURL(file);
	    };
// 	      angular.element(document.querySelector('#profileFile')).on('change',handleFileSelect);
		$("#buttonBox").on("change", "#profileFile", function () {
			console.log("change");
			handleFileSelect();
		});
	  });
	
	
	$("#buttonBox").on("change", "#profileFile", function () {
// 		readURL($(this)[0]);
		console.log("change");
	});
	
	var profileForm = $("#profileForm");
	
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#profilePreview')
                    .attr('src', e.target.result);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }

</script>
