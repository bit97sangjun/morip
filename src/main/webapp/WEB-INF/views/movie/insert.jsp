<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Homepage</title>

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
<style>
	#serch{
		 
		float :right
		width :250px
	}
</style>

<style>
.green_window {
	display: inline-block;
	width: 300px; height: 34px;
	border: 1px solid black;
	background: white;
}
.input_text {
	width: 250px; height: 21px;
	margin: 6px 0 0 9px;
	border: 0;
	line-height: 21px;
	font-weight: bold;
	font-size: 16px;
	outline: none;
}
.sch_smit {
	width: 54px; height: 40px;
	margin: 0; border: 0;
	vertical-align: top;
	background: black;
	color: white;
	font-weight: bold;
	border-radius: 1px;
	cursor: pointer;
}
.sch_smit:hover {
	background: white;
    color : black;
}

.movieImg ,.movieList{
width: 250px;
height: 100px;
float: left;
margin-right: 20px;
margin-top:20px;
}
.container{
	float :left;
}

.AreaList{
	border : 2px solid black;
	width : 300px;
	height: 100px;
	margin-top: 25px;
}


</style>


<body>
       <div id="contact">
	    	<div class="container" >
	    		<p>
	    		 <h2>글등록 페이지</h2>
	    		</p>

	    		
	    		<!--영화 검색  에 대한 이미지.-->
	    		<form id ="movieselect"  method="post">
					<span class='green_window'>
						<input type='text' name="keyword" class='input_text' id='input_keyword'/>
					</span>
						<span id="response"></span>
						<button type ="button" class='sch_smit' id="keywordBtn">검색</button>
					</form>
					
		    		<div class="movieList"></div>
		    		<div class="movieImg"></div>
		    		
		    		
	    	
			</div>
			
			<br><br>
				
				<!-- 지도 .  -->
				<iframe width="40%;" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" style="pointer-events: none; margin-top: 30px; margin-right:10px;"> </iframe>
				<iframe width="50%;" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" style="pointer-events: none; margin-top: 30px; margin-left:100px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2483.281992959266!2d-0.1302576842043993!3d51.5080423184772!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487604ce3941eb1f%3A0x1a5342fdf089c627!2sTrafalgar+Square!5e0!3m2!1sen!2suk!4v1462913556349"></iframe>
    		<div class="col-md-6">
    			<div class="contact-form">
    			
    				<!-- 글제목 , 글내용   -->
					<form action="/movie/register" method="post">
						<input type="text" id="rtitle" name="rtitle"  placeholder="rtitle" >
						<textarea id="rcontent" name="rcontent" placeholder="rcontent" rows="5" ></textarea>
					
						<br>
						<button name="submit" id="submit" >등록</button>
					</form>
				</div>  
			</div>	
			
			<!-- 파일 업로드  -->
			<input type="file" id="file">
			
    	</div>	

    <!-- jQuery -->
    <script src="/resources/js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/jquery.isotope.js"></script>
    <script src="/resources/js/jquery.scrollUp.min.js"></script>
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
	<!-- Portfolio Isotope Settings -->
	<script type="text/javascript">

	$(window).load(function(){
  
 	/*  var $container = $('.portfolioContainer'),
     	$body = $('body'),
     	colW = 375,
      	columns = null;

  	$container.isotope({
    // disable window resizing
    	resizable: true,
   	 	masonry: {
        columnWidth: colW
    	}
  	}); */
  
  	/* $(window).smartresize(function(){
    // check if columns has changed
    	var currentColumns = Math.floor( ( $body.width() -30 ) / colW );
    	if ( currentColumns !== columns ) {
      	// set new column count
      	columns = currentColumns;
      	// apply width to container manually, then trigger relayout
      	$container.width( columns * colW )
        	.isotope('reLayout');
    	}
     */
  	}).smartresize(); // trigger resize to set container width
  	$('.portfolioFilter a').click(function(){
        	$('.portfolioFilter .current').removeClass('current');
        	$(this).addClass('current');
 
        	var selector = $(this).attr('data-filter');
        	$container.isotope({
			
            filter: selector,
         });
        	 return false;
   	 	});
/* 	}); */
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
    
    
    
    
   	$("#keywordBtn").on("click" ,function(){
   		$.ajax({ 
   			type:'POST' ,
   			url:'/movie/movieread',
   			data: {"keyword":$("#input_keyword").val()},
   			dataType :'json' , 
   			success: function(data) {
   				for(var i = 0; i < data.length; i++){
   					$(".movieList").append("<span>"+data[i].mtitle+"</span><br>"); 
   					$(".movieImg").append("<span>"+data[i].mimg+"</span><br>"); 
   				}
  			},
  			error: function(status){
  				console.log(status);
  			}
 		});	
  	});	
   	
   	
    $(".movieList").on("click" , function(){
    	alert("들킴");
    });
    
    

    
    </script>
</body>
</html>
