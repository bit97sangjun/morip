<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<link href="<c:url value="/resources/css/largemap.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <link rel='shortcut icon' type='image/x-icon' href='favicon.ico' />
    
	<link href='https://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Hammersmith+One' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=NTR' rel='stylesheet' type='text/css'>

</head>

<style>

     .map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
        .map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
        .map_wrap {position:relative;width:100%;height:500px;}
        #menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
        .bg_white {background:#fff;}
        #menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
        #menu_wrap .option{text-align: center;}
        #menu_wrap .option p {margin:10px 0;}
        #menu_wrap .option button {margin-left:5px;}
        #placesList li {list-style: none;}
        #placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
        #placesList .item span {display: block;margin-top:4px;}
        #placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
        #placesList .item .info{padding:10px 0 10px 55px;}
        #placesList .info .gray {color:#8a8a8a;}
        #placesList .info .jibun {padding-left:26px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
        #placesList .info .tel {color:#009900;}
        #placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
        #placesList .item .marker_ {background-position: 0 -10px;}
        #placesList .item .marker_2 {background-position: 0 -56px;}
        #placesList .item .marker_3 {background-position: 0 -102px}
        #placesList .item .marker_4 {background-position: 0 -148px;}
        #placesList .item .marker_5 {background-position: 0 -194px;}
        #placesList .item .marker_6 {background-position: 0 -240px;}
        #placesList .item .marker_7 {background-position: 0 -286px;}
        #placesList .item .marker_8 {background-position: 0 -332px;}
        #placesList .item .marker_9 {background-position: 0 -378px;}
        #placesList .item .marker_10 {background-position: 0 -423px;}
        #placesList .item .marker_11 {background-position: 0 -470px;}
        #placesList .item .marker_12 {background-position: 0 -516px;}
        #placesList .item .marker_13 {background-position: 0 -562px;}
        #placesList .item .marker_14 {background-position: 0 -608px;}
        #placesList .item .marker_15 {background-position: 0 -654px;}
        #pagination {margin:10px auto;text-align: center;}
        #pagination a {display:inline-block;margin-right:10px;}
        #pagination .on {font-weight: bold; cursor: default;color:#777;}
</style>

<body>

	<!-- header  -->s
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
	min-height: 700px;
	min-width: 100%;
}


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

 .movieList{
width: 20%;
height: 20%;
float: left;
margin-right: 20px;
margin-top:20px;
overflow:scroll;  
overflow:auto;
overflow:hidden;
white-space:nowrap;

}


</style>
<div id="contact">
          <div class="container">
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
			</div>
			<br><br>
         
         
         <iframe width="40%;" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" style="pointer-events: none; margin-top: 30px; margin-right:10px;"> </iframe>
     
     <!-- 지도  -->
      <div class="map_wrap">
         <button type="button" id="menuBtn">>></button>
         <div id="map"
            style="width: 65%; height: 100%; position: relative; overflow: hidden;"></div>

		<!-- 지도 키워드 검색  -->
         <div id="menu_wrap" class="bg_white">
            <div class="option">
               <div>
                  <form onsubmit="searchPlaces(); return false;">
                     키워드 : <input type="text" id="keyword" size="15">
                     <button type="submit">검색하기</button>
                  </form>
               </div>
            </div>
            <hr>
            <ul id="placesList"></ul>
            <div id="pagination"></div>
         </div>
      </div>
      
      <!-- 글 , 이미지  등록 -->
     	 <div>
             <div class="contact-form">
               <form action="#" method="post">
                  <input type="text" id="title" name="title"  placeholder="title" >
                  <textarea id="content" name="content" placeholder="content" rows="5" ></textarea>
                  <br>
                  <button name="submit" id="submit" >Send Message</button>
               </form>
            </div>  
         </div>   
         <!-- 파일 업로드 -->
         <input type="file" id="file">
       </div>  
        	
   <!-- footer  -->
   <c:import url="../includes/footer.jsp"></c:import>

    <!-- jQuery -->
  	  <script src="/resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
     <script src="/resources/js/bootstrap.min.js"></script>
     
    <script src="/resources/js/jquery.isotope.js"></script>
    
    <script src="/resources/js/jquery.scrollUp.min.js"></script>
    
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=507a4ad233b124cb6ba73fe039d5da34&libraries=services"></script>
    
   
   
   <script>
 	
   
         var check = false;
        $("#menuBtn").on("click", function () {
            //console.log("엥?");
            if(!check){
                $("#menu_wrap").animate({width: "50%"});
                $("#menu_wrap").animate({height: "80%"});
            }else {
                $("#menu_wrap").animate({height: "0px", width: "0px"});
                //$("#menu_wrap").animate({});
            }

            check ? check = false : check = true;
        });
     
    	var markers = [];
        var mapContainer = document.getElementById("map"), // 지도를 표시할 div
            mapOption = {
                center: new daum.maps.LatLng(35.70994677427705, 127.56616363656814), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };
        
        // 지도를 생성합니다
        var map = new daum.maps.Map(mapContainer, mapOption);
        
        console.log(map);
        console.log(mapContainer);
        console.log(mapOption);

        // 장소 검색 객체를 생성합니다
        var ps = new daum.maps.services.Places();

        // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
        var infowindow = new daum.maps.InfoWindow({zIndex:1});

        // 주소-좌표 변환 객체를 생성합니다
        var geocoder = new daum.maps.services.Geocoder();

        
        // 지도를 클릭했을때 클릭한 위치에 마커를 추가하도록 지도에 클릭이벤트를 등록합니다
        daum.maps.event.addListener(map, 'click', function(mouseEvent) {
        	 
            // 클릭한 위치에 마커를 표시합니다
            
            /* addMarker(mouseEvent.latLng, normalOrigin, clickOrigin, overOrigin); 
            addMarker(mouseEvent.latLng); */
            
        });


        // 마커 하나를 지도위에 표시합니다
        //addMarker(new daum.maps.LatLng(33.450701, 126.570667));

        // 키워드로 장소를 검색합니다
        //searchPlaces();

        // 키워드 검색을 요청하는 함수입니다
        
        function searchPlaces() {

            var keyword = document.getElementById('keyword').value;

            if (!keyword.replace(/^\s+|\s+$/g, '')) {
                alert('키워드를 입력해주세요!');
                return false;
            }

            // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
            ps.keywordSearch( keyword, placesSearchCB);
        }

        // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
        function placesSearchCB(data, status, pagination) {

            if (status === daum.maps.services.Status.OK) {

                // 정상적으로 검색이 완료됐으면
                // 검색 목록과 마커를 표출합니다
                displayPlaces(data);

                // 페이지 번호를 표출합니다
                displayPagination(pagination);

            } else if (status === daum.maps.services.Status.ZERO_RESULT) {

                alert('검색 결과가 존재하지 않습니다.');
                return;

            } else if (status === daum.maps.services.Status.ERROR) {

                alert('검색 결과 중 오류가 발생했습니다.');
                return;

            }
        }

        
        
        //--------test------------
        var markerStr = [];
        var addrStr = [];
        
        //--------test------------
        // 검색 결과 목록과 마커를 표출하는 함수입니다
        function displayPlaces(places) {

            var listEl = document.getElementById('placesList'),
                menuEl = document.getElementById('menu_wrap'),
                fragment = document.createDocumentFragment(),
                bounds = new daum.maps.LatLngBounds(),
                listStr = '';

           /*  // 검색 결과 목록에 추가된 항목들을 제거합니다
            removeAllChildNods(listEl);

            // 지도에 표시되고 있는 마커를 제거합니다
            removeMarker(); */

            for ( var i=0; i<places.length; i++ ) {

                // 마커를 생성하고 지도에 표시합니다
                var placePosition = new daum.maps.LatLng(places[i].y, places[i].x),
                    marker = addMarker(placePosition, i, true),
                    itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다
                
                // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
                // LatLngBounds 객체에 좌표를 추가합니다
                bounds.extend(placePosition);
                
                // 마커와 검색결과 항목에 mouseover 했을때
                // 해당 장소에 인포윈도우에 장소명을 표시합니다
                // mouseout 했을 때는 인포윈도우를 닫습니다
                (function(marker, title, address) {
                    //console.log(title);
                    daum.maps.event.addListener(marker, 'click', function() {

                        var count = 0;

                        if(markerStr.length <= 0){
                        	markerStr.push(title);
                            addrStr.push(address);
                            //console.log("testStr[0] : " + testStr[0]);
                        }
                        for(var i = 0; i < markerStr.length; i++){
                            //console.log("추가된 목록 : " + testStr[i]);
                            if(markerStr[i] === title){
                                count++;
                            }
                        }
                        if(count == 0){
                        	markerStr.push(title);
                            addrStr.push(address);
                            //console.log(title);
                        }
                    });

                    daum.maps.event.addListener(marker, 'mouseover', function() {
                        displayInfowindow(marker, title);

                    });

                    daum.maps.event.addListener(marker, 'mouseout', function() {
                        infowindow.close();
                    });

                    itemEl.onmouseover =  function () {
                        displayInfowindow(marker, title);
                    };

                    itemEl.onmouseout =  function () {
                        infowindow.close();
                    };
                })(marker, places[i].place_name, places[i].address_name);

                fragment.appendChild(itemEl);
            }

            // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
            listEl.appendChild(fragment);
            menuEl.scrollTop = 0;

            // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
            map.setBounds(bounds);
        }

        daum.maps.event.addListener(map, 'click', function(e) {
            searchDetailAddrFromCoords(e.latLng, function(result, status) {
                    var count = 0;
                    var marker = addMarker(e.latLng, 0, false);
              
                 marker.setMap(map);
              
              // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
                 infowindow.setContent(content);
                 infowindow.open(map, marker);
                /* if(testStr.length <= 0){
                    testStr.push(title);
                    addrStr.push(address);
                    //console.log("testStr[0] : " + testStr[0]);
                }
                for(var i = 0; i < testStr.length; i++){
                    //console.log("추가된 목록 : " + testStr[i]);
                    if(testStr[i] === title){
                        count++;
                    }
                }
                if(count == 0){
                    testStr.push(title);
                    addrStr.push(address);
                    //console.log(title);
                } */
                
                console.log(e.latLng.address_name);
            });
                
         });

         /* daum.maps.event.addListener(marker, 'mouseover', function() {
             displayInfowindow(marker, title);
         });

         daum.maps.event.addListener(marker, 'mouseout', function() {
             infowindow.close();
         }); */
       

         function searchDetailAddrFromCoords(coords, callback) {
             // 좌표로 법정동 상세 주소 정보를 요청합니다
             geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
         }
         
          // 검색결과 항목을 Element로 반환하는 함수입니다
          function getListItem(index, places) {

              var el = document.createElement('li'),
                  itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                      '<div class="info">' +
                      '   <h5>' + places.place_name + '</h5>';

              if (places.road_address_name) {
                  itemStr += '    <span>' + places.road_address_name + '</span>' +
                      '   <span class="jibun gray">' +  places.address_name  + '</span>';
              } else {
                  itemStr += '    <span>' +  places.address_name  + '</span>';
              }

              itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                  '</div>';

              el.innerHTML = itemStr;
              el.className = 'item';

              return el;
          }

        // 마커를 생성하고 지도위에 표시하는 함수입니다
        function addMarker(position, idx ,check) {

            var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
                imageSize = new daum.maps.Size(36, 37),  // 마커 이미지의 크기
                imgOptions =  {
                    spriteSize : new daum.maps.Size(36, 691), // 스프라이트 이미지의 크기
                    spriteOrigin : new daum.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
                    offset: new daum.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
                },
                markerImage = check? new daum.maps.MarkerImage(imageSrc, imageSize, imgOptions) : undefined;

          
            
	            // 마커를 생성합니다
	            var marker = new daum.maps.Marker({
	                //map:map,
	                position: position,
	                image: markerImage
	        
            });

            // 마커가 지도 위에 표시되도록 설정합니다
            marker.setMap(map);

            // 생성된 마커를 배열에 추가합니다
            markers.push(marker);

           daum.maps.event.addListener(marker, 'rightclick', function() {
                console.log(markers);

                markers.pop(marker);
                hideMarker(marker);

                console.log(markers);
            });

            return marker;
        }
        /* daum.maps.event.addListner(marker,'click',function(){
        	 var marker = new daum.maps.Marker({
        		 position:markerPosion
        	 });
        });
 */
 
 // 지도 위에 표시되고 있는 마커를 모두 제거합니다
 function removeMarker() {
     for ( var i = 0; i < markers.length; i++ ) {
         markers[i].setMap(null);
     }
     markers = [];
 }
 
        // 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
        function displayPagination(pagination) {
            var paginationEl = document.getElementById('pagination'),
                fragment = document.createDocumentFragment(),
                i;

            // 기존에 추가된 페이지번호를 삭제합니다
            while (paginationEl.hasChildNodes()) {
                paginationEl.removeChild (paginationEl.lastChild);
            }

            for (i=1; i<=pagination.last; i++) {
                var el = document.createElement('a');
                el.href = "#";
                el.innerHTML = i;

                if (i===pagination.current) {
                    el.className = 'on';
                } else {
                    el.onclick = (function(i) {
                        return function() {
                            pagination.gotoPage(i);
                        }
                    })(i);
                }

                fragment.appendChild(el);
            }
            paginationEl.appendChild(fragment);
        }

        // 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
        // 인포윈도우에 장소명을 표시합니다
        function displayInfowindow(marker, title) {
            var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

            infowindow.setContent(content);
            infowindow.open(map, marker);
        }
        
        // 검색결과 목록의 자식 Element를 제거하는 함수입니다
        function removeAllChildNods(el) {
            while (el.hasChildNodes()) {
                el.removeChild (el.lastChild);
            }
        }


        function searchDetailAddrFromCoords(coords, callback) {
            console.log(coords.getLat);

            // 좌표로 법정동 상세 주소 정보를 요청합니다
            geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
        }
        

        // 배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
        function setMarker(delMarker, map) {
            delMarker.setMap(map);
        }
        function hideMarker(delMarker) {
            setMarker(delMarker, null);
        }

        // 배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
        function setMarkers(map) {
            for (var i = 0; i < markers.length; i++) {
                markers[i].setMap(map);
            }
        }


        // "마커 보이기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에 표시하는 함수입니다
        function showMarkers() {
            setMarkers(map)
        }


        // "마커 감추기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에서 삭제하는 함수입니다
        function hideMarkers() {
            setMarkers(null);
        }
        
        $("#keywordBtn").on("click" ,function(){
       		$.ajax({ 
       			type:'POST' ,
       			url:'/movie/movieread',
       			data: {"keyword":$("#input_keyword").val()},
       			dataType :'json' , 
       			success: function(data) {
       				$(".movieList").html("");
       				for(var i = 0; i < data.length; i++){
       					$(".movieList").append("<span><h3>"+data[i].mtitle+"</h3></span>"); 
       					$(".movieList").append("<img width='650' height='200' src=/resources/images/movieimg/"+data[i].mimg+">" ); 
       				}
      			},
      			error: function(status){
      				console.log(status);
      			}
     		});	
      	});	
        
        $(".movieList span").on("click", function(){
       		 	console.log();
        });
        
        
        
     
    
    </script>
  </body>
</html>
