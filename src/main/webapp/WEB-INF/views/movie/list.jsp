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
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="/resources/css/style.css" rel="stylesheet">
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <link rel='shortcut icon' type='image/x-icon' href='favicon.ico' />
    
	<link href='https://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Hammersmith+One' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=NTR' rel='stylesheet' type='text/css'>

</head>

<body>
    
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
    		-moz-transition:color .5s ease-in;
   			-o-transition:color .5s ease-in;
    		-webkit-transition:color .5s ease-in;
    	}
    	
    	.navbar-default .navbar-brand span {
    		color: #42a5f6;
    		-moz-transition:color .5s ease-in;
   			-o-transition:color .5s ease-in;
    		-webkit-transition:color .5s ease-in;
    	}
    	
    	@media screen and (max-width: 400px) {
    	.navbar-default .navbar-brand {
    		font-size: 22px;
    	}
    	}
    	
    	.navbar-default .navbar-brand:hover, .navbar-default .navbar-brand span:hover {
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
    	
		.navbar-default .navbar-toggle:focus, .navbar-default .navbar-toggle:hover {
			background: none;
		}
    	
    	.navbar-default .navbar-toggle .icon-bar {
    		height: 4px;
    		width: 28px;
    		background: #42a5f6;
		}
    	
    	.navbar-default.shrink {
    		background:rgba(25, 33, 60, 0.8)
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


    
    </style>

	<c:import url="../includes/header.jsp"></c:import>

    
    <div id="blog">
    	<div class="container" style="border: 1px solid black">
    		<h2>Latest <span>Blog</span> Posts</h2>
    		<hr>
    		<a href="/movie/insert">글쓰기</a>
    		<div>
    			<ul class="thumbnails">
					<c:forEach items="${list}" var="report">
						<li class="col-sm-4">
							<div class="fff">
								<div class="thumbnail">
									<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
								</div>
								<div class="caption">
									<h4>
										<c:out value="${report.id}"></c:out>
									</h4>
									<p>
										<c:out value="${report.rcontent}"></c:out>
									</p>
									<a class="btn btn-mini" href="#">Read More <i
										class="fa fa-angle-double-right" aria-hidden="true"></i></a>
								</div>
							</div>
						</li>
					</c:forEach>
				</ul>
    		</div>

	   		<nav>
				<ul class="control-box pager">
					<!-- <li><a data-slide="prev" href="#myCarousel" class=""><i class="fa fa-chevron-left" aria-hidden="true"></i></a></li>
					<li><a data-slide="next" href="#myCarousel" class=""><i class="fa fa-chevron-right" aria-hidden="true"></i></a></li> -->
				</ul>
				 <div class="well">
					 <ul class="pagination mypage">
					    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
					    <li class="page-item"><a class="page-link" href="#">1</a></li>
					    <li class="page-item"><a class="page-link" href="#">2</a></li>
					    <li class="page-item"><a class="page-link" href="#">3</a></li>
					    <li class="page-item"><a class="page-link" href="#">Next</a></li>
					  </ul>
				</div>    
			</nav>
	   		<!-- /.control-box -->   
                              
   	 		<!-- </div>/#myCarousel -->
    	</div>
    </div>
    
    
	<div class="footer">
  		<div class="container">
   			<p class="text-muted">All Rights Reserved <a href="http://freedesignz.com">Free Designz</a></p>
  		</div>
	</div>

	<form id="actionForm" method="get" action='/movie/list'>
    	<input type="hidden" name="page" value="${criteria.page}">
    	<input type="hidden" name="rno">
    	<input type="hidden" name="size" value="${criteria.size}">
    </form>

    <!-- jQuery -->
    <script src="/resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/js/bootstrap.min.js"></script>
    
    <script src="/resources/js/jquery.isotope.js"></script>
    
    <script src="/resources/js/jquery.scrollUp.min.js"></script>
    <script src="/resources/js/pagenation.js"></script>
    
	<script type="text/javascript">
	
	$('a[href^="#"]').on('click', function(event) {
    	var target = $(this.getAttribute('href'));
    	if( target.length ) {
       		event.preventDefault();
        	$('html, body').stop().animate({
            	scrollTop: target.offset().top
        	}, 1000);
    	}
	});

	</script>
    
    
    <!-- Navbar Change on Scroll -->
	<script type="text/javascript">
		$(function(){
 		var shrinkHeader = 100;
  		$(window).scroll(function() {
    		var scroll = getCurrentScroll();
      		if ( scroll >= shrinkHeader ) {
           		$('.navbar-default').addClass('shrink');
        	}
       		else {
            	$('.navbar-default').removeClass('shrink');
        	}
  		});
		function getCurrentScroll() {
    		return window.pageYOffset || document.documentElement.scrollTop;
    	}
	});

	</script>    
	
	<!-- Scroll To Top Settings -->
    <script type="text/javascript">
    
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

	<script>
    $(document).ready(function() {
    	
    	var actionForm = $("#actionForm");
		var result = '${result}';
    	var pageResult = makePage({page:${criteria.page}, total:${total}, size:${criteria.size}});
    	console.log("page : " + ${criteria.page});
    	console.log("total : " + ${total});
    	console.log("size : " + ${criteria.size});
    	$(".target").on("click", function(event) {
    		
    		event.preventDefault();
    		
    		var rno = $(this).attr("href");
    		
    		//alert(bno);
    		
    		actionForm.find("input[name='rno']").val(rno);
    		
    		actionForm.attr("action", "/movie/detail").submit();
    		
    	});
    	
    	$(".mypage").on("click", "li > a", function(event) {
    		
    		event.preventDefault();
    		
    		var pageNum = $(this).attr("href");
    		
    		//alert("PAGE: " + pageNum);
    		
    		actionForm.find("input[name='page']").val(pageNum);
    		actionForm.submit();
    		
    	});
    	
    	var str = "";
    	
    	if(pageResult.prev) {
    		str += "<li class='page-item'><a class='page-link' href=" + (parseInt(pageResult.first) - 1) + ">Prev</a></li>";
    	}
    	
    	for(var i = pageResult.first; i <= pageResult.last; i++) {
    		str += "<li class='page-item " + (pageResult.page == i ? "active" : "") + "' ><a class='page-link' href=" + i + ">" + i + "</a></li>";
    	}
    	
    	if(pageResult.next) {
    		str += "<li class='page-item'><a class='page-link' href=" + (parseInt(pageResult.last) + 1) + ">Next</a></li>";
    	}
    	
    	$(".mypage").html(str);
    	
    	console.log(pageResult);
    	
    	if(result === 'success') {
    		alert("등록성공!!!");
    	}
    });
    </script>
</body>

</html>
