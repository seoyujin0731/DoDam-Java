<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="SweetAlert2">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no, minimal-ui">
    <!-- Call App Mode on ios devices -->
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <!-- Remove Tap Highlight on Windows Phone IE -->
    <meta name="msapplication-tap-highlight" content="no">
    <link rel="apple-touch-icon" sizes="180x180" href="/resource/img/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/resource/img/favicon/favicon-32x32.png">
    <link rel="mask-icon" href="/resource/img/favicon/safari-pinned-tab.svg" color="#5bbad5">
    <link rel="stylesheet" media="screen, print" href="/resource/css/notifications/sweetalert2/sweetalert2.bundle.css">
<!--     <link rel="stylesheet" media="screen, print" href="/resources/css/theme-demo.css"> -->
    <title>키워드로 장소검색하고 목록으로 표출하기</title>
    <style>
.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:80%;height:350px;}
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
#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
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
#category {position:absolute;top:10px;left:10px;border-radius: 5px; border:1px solid #909090;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);background: #fff;overflow: hidden;z-index: 2;}
#category li {float:left;list-style: none;width:50px;px;border-right:1px solid #acacac;padding:6px 0;text-align: center; cursor: pointer;}
#category li.on {background: #eee;}
#category li:hover {background: #ffe6e6;border-left:1px solid #acacac;margin-left: -1px;}
#category li:last-child{margin-right:0;border-right:0;}
#category li span {display: block;margin:0 auto 3px;width:27px;height: 28px;}
#category li .category_bg {background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png) no-repeat;}
#category li .bank {background-position: -10px 0;}
#category li .mart {background-position: -10px -36px;}
#category li .pharmacy {background-position: -10px -72px;}
#category li .oil {background-position: -10px -108px;}
#category li .cafe {background-position: -10px -144px;}
#category li .store {background-position: -10px -180px;}
#category li.on .category_bg {background-position-x:-46px;}
.placeinfo_wrap {position:absolute;bottom:28px;left:-150px;width:300px;}
.placeinfo {position:relative;width:100%;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;padding-bottom: 10px;background: #fff;}
.placeinfo:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.placeinfo_wrap .after {content:'';position:relative;margin-left:-12px;left:50%;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
.placeinfo a, .placeinfo a:hover, .placeinfo a:active{color:#fff;text-decoration: none;}
.placeinfo a, .placeinfo span {display: block;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
.placeinfo span {margin:5px 5px 0 5px;cursor: default;font-size:13px;}
.placeinfo .title {font-weight: bold; font-size:14px;border-radius: 6px 6px 0 0;margin: -1px -1px 0 -1px;padding:10px; color: #fff;background: #d95050;background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
.placeinfo .tel {color:#0f7833;}
.placeinfo .jibun {color:#999;font-size:11px;margin-top:0;}
.hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;margin-top:80px;}
#centerAddr {display:block;margin-top:2px;font-weight: normal;}
</style>
</head>
<body>

  <input type="hidden" value='${time1}' name="time1" id="time1">
<main id="js-page-content" role="main" class="page-content">
<div class="map_wrap">

    <div id="map" style="width:100%;height:200%;position:relative;overflow:hidden;"></div>

    <div id="menu_wrap" class="bg_white" style="margin-left: 75%">
        <div class="option">
            <div>
                <form onsubmit="searchPlaces(); return false;">
                    키워드 : <input type="text" value="${searching}" id="keyword" size="15"> 
                    <button type="submit">검색하기</button> 
                </form>
            </div>
        </div>
        
        <hr>
        <ul id="placesList"></ul>
        <div id="pagination"></div>
    </div>
 
      <!-- 6.11 지원 -->
    <ul id="category">

        <li id="HP8" data-order="2"> 
            <span class="category_bg pharmacy"></span>
                  병원
        </li>    

        <li id="PM9" data-order="2"> 
            <span class="category_bg pharmacy"></span>
               약국
        </li>  
        
    </ul>
 <!------------------------------------------------------------ --> 
    
    <div class="hAddr">
        
        <span id="centerAddr"></span>
    </div>
    
    
</div>




 <div class="modal fade default-example-modal-right" tabindex="-1" role="dialog" aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-right">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title h4" name="place_name" id="place_name"> </h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true"><i class="fal fa-times"></i></span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="card mb-5">
                                                         
                                                            </div>
                                                            <div class="card mb-g">
                                                                <div class="card-body p-3">
                                                                    <h5 class="text-danger">
                                                                              예약 테이블
                                                                        <small class="mt-0 mb-3 text-muted">
                                                                            Migration of new API to local servers
                                                                        </small>
                                                                        <span class="badge badge-danger fw-n position-absolute pos-top pos-right mt-3 mr-3">Delayed</span>
                                                                    </h5>
                                                                 
                                                                    <div class="reserve table">
                                                                        <div class="form-group">
                                                    <label class="form-label" for="example-date">Date</label>
                                                    <input class="form-control" id="example-date1" type="date" name="example-date1" >
                                                    
                                                     <button type="button" class="btn btn-xs btn-dark" onclick="reserveList()">찾기</button>
                                                </div>
                                                               
                                                              
                                                               
                                                               
                                                                       <table id="reserve_table" class="table m-0">
                                                                          
                                 </table>
                                                                    </div>
                                                                 
                                                              
                                                                </div>
                                                            </div>
                                                            <div class="card mb-g">
                                                                <div class="card-body p-3">
                                                                    <h5 class="text-success">
                                                                           예약 하기
                                                                        <small class="mt-0 mb-3 text-muted">
                                                                            Migration of new API to local servers 
                                                                        </small>
                                                                        <span class="badge badge-success fw-n position-absolute pos-top pos-right mt-3 mr-3">D</span>
                                                                    </h5>

                                                                        <form action="">
                                                                            <div class="form-group">
                                                                               <label class="form-label" for="example-date">Date</label>
                                                                         <input class="form-control" id="reservationDate"  type="date" name="reservation" value="" >
                                                                          
                                                                         <p id="reserveDate" name="reserveDate" />
                                                                         
                
                                                                     </div>   
                                                                  <div class="form-group">
                                                                   <label class="form-label" for="example-time-2">Time</label>
                                                                   <input class="form-control" id="reservationTime" type="time" name="reservationTime" step="1800">
                                                               </div>
                                                               
                                                                <div class="form-group">
                                                                   <label class="form-label" for="simpleinput">Name</label>
                                                                   <input type="text" id="reservationName" name="reservationName" class="form-control">
<!--                                                                   <div class="invalid-feedback"> -->
<!--                                                                    이메일을 작성해주세요. -->
<!--                                                             </div>  -->
                                                            
                                                                  </div>
                                                                  
                                                                                                            
                                                                    </form>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col text-right">
<!--                                                                             <a href="#" class="btn btn-outline-primary" id="js-sweetalert2-example-8" onclick="reserveInsert()">RESERVE</a> -->
                                                                             <a href="javascript:void(0);" class="btn btn-outline-primary" id="js-sweetalert2-example-8" onclick="reserveInsert()">예약하기</a>
                                                                            <br/><br/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                               <button type="button" id="close" name="close" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                               <button type="button" class="btn btn-primary">Save changes</button>
                                                               <br/>
                                                           </div>
                                                        </div>
                                                        
                                                    </div>
                                                </div>


</main>
 <script src="/resource/js/notifications/sweetalert2/sweetalert2.bundle.js"></script>
/*api키 제외함*/
       <script>
            /**
             *   This script should be placed right after the body tag for fast execution 
             *   Note: the script is written in pure javascript and does not depend on thirdparty library
             **/
            'use strict';

            var classHolder = document.getElementsByTagName("BODY")[0],
                /** 
                 * Load from localstorage
                 **/
                themeSettings = (localStorage.getItem('themeSettings')) ? JSON.parse(localStorage.getItem('themeSettings')) :
                {},
                themeURL = themeSettings.themeURL || '',
                themeOptions = themeSettings.themeOptions || '';
            /** 
             * Load theme options
             **/
            if (themeSettings.themeOptions)
            {
                classHolder.className = themeSettings.themeOptions;
                console.log("%c✔ Theme settings loaded", "color: #148f32");
            }
            else
            {
                console.log("Heads up! Theme settings is empty or does not exist, loading default settings...");
            }
            if (themeSettings.themeURL && !document.getElementById('mytheme'))
            {
                var cssfile = document.createElement('link');
                cssfile.id = 'mytheme';
                cssfile.rel = 'stylesheet';
                cssfile.href = themeURL;
                document.getElementsByTagName('head')[0].appendChild(cssfile);
            }
            /** 
             * Save to localstorage 
             **/
            var saveSettings = function()
            {
                themeSettings.themeOptions = String(classHolder.className).split(/[^\w-]+/).filter(function(item)
                {
                    return /^(nav|header|mod|display)-/i.test(item);
                }).join(' ');
                if (document.getElementById('mytheme'))
                {
                    themeSettings.themeURL = document.getElementById('mytheme').getAttribute("href");
                };
                localStorage.setItem('themeSettings', JSON.stringify(themeSettings));
            }
            /** 
             * Reset settings
             **/
            var resetSettings = function()
            {
                localStorage.setItem("themeSettings", "");
            }

        </script>
        
        <script>


        </script>



<script type="text/javascript">

<!--------------------- 내 위치 주소 찍기 ------------------------>
var container = document.getElementById('map');
var options = {
   center: new kakao.maps.LatLng(33.450701, 126.570667),
   level: 3
};

var map = new kakao.maps.Map(container, options);

// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
if (navigator.geolocation) {
    
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도
        
        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
        // 마커와 인포윈도우를 표시합니다
        displayMarker(locPosition, message);
        
        kakao.maps.event.addListener(map, 'idle', function() {
            searchAddrFromCoords(locPosition, displayCenterInfo);
        });
                
            
      });
    
} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
    
    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
        message = 'geolocation을 사용할수 없어요..'
        
    displayMarker(locPosition, message);
}

// 지도에 마커와 인포윈도우를 표시하는 함수입니다
function displayMarker(locPosition, message) {

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({  
        map: map, 
        position: locPosition
    }); 
    
    var iwContent = message, // 인포윈도우에 표시할 내용
        iwRemoveable = true;

    // 인포윈도우를 생성합니다
    var infowindow = new kakao.maps.InfoWindow({
        content : iwContent,
        removable : iwRemoveable
    });
    
    // 인포윈도우를 마커위에 표시합니다 
    infowindow.open(map, marker);
    
    // 지도 중심좌표를 접속위치로 변경합니다
    map.setCenter(locPosition);      
}


<!------------ 병원, 약국 버튼으로  지도에서 병원과 약국 찾기 --------------------------------------->
//마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}), 
 contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
 markers = [], // 마커를 담을 배열입니다
 currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
 mapOption = {
     center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
     level: 5 // 지도의 확대 레벨
 };  

//지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

//장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places(map); 

//지도에 idle 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'idle', searchPlaces1);

//커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
contentNode.className = 'placeinfo_wrap';



//커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
//지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 kakao.maps.event.preventMap 메소드를 등록합니다 
addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);

//커스텀 오버레이 컨텐츠를 설정합니다
placeOverlay.setContent(contentNode);  

//각 카테고리에 클릭 이벤트를 등록합니다
addCategoryClickEvent();

//엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
function addEventHandle(target, type, callback) {
 if (target.addEventListener) {
     target.addEventListener(type, callback);
 } else {
     target.attachEvent('on' + type, callback);
 }
}

//카테고리 검색을 요청하는 함수입니다
function searchPlaces1() {
 if (!currCategory) {
     return;
 }
 
 // 커스텀 오버레이를 숨깁니다 
 placeOverlay.setMap(null);

 // 지도에 표시되고 있는 마커를 제거합니다
 removeMarker();
 
 ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true}); 
}

//장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
 if (status === kakao.maps.services.Status.OK) {

     // 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
     displayPlaces(data);
 } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
ㅠ      // 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요

 } else if (status === kakao.maps.services.Status.ERROR) {
     // 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요
     
 }
}

//지도에 마커를 표출하는 함수입니다
function displayPlaces(places) {

 // 몇번째 카테고리가 선택되어 있는지 얻어옵니다
 // 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
 var order = document.getElementById(currCategory).getAttribute('data-order');

 

 for ( var i=0; i<places.length; i++ ) {

         // 마커를 생성하고 지도에 표시합니다
         var marker = addMarker1(new kakao.maps.LatLng(places[i].y, places[i].x), order);

         // 마커와 검색결과 항목을 클릭 했을 때
         // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
         (function(marker, place) {
             kakao.maps.event.addListener(marker, 'click', function() {
                 displayPlaceInfo1(place);
             });
         })(marker, places[i]);
 }
}

//마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker1(position, order) {
 var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
     imageSize = new kakao.maps.Size(27, 28),  // 마커 이미지의 크기
     imgOptions =  {
         spriteSize : new kakao.maps.Size(72, 208), // 스프라이트 이미지의 크기
         spriteOrigin : new kakao.maps.Point(46, (order*36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
         offset: new kakao.maps.Point(11, 28) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
     },
     markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
         marker = new kakao.maps.Marker({
         position: position, // 마커의 위치
         image: markerImage 
     });

 marker.setMap(map); // 지도 위에 마커를 표출합니다
 markers.push(marker);  // 배열에 생성된 마커를 추가합니다

 return marker;
}

//지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
 for ( var i = 0; i < markers.length; i++ ) {
     markers[i].setMap(null);
 }   
 markers = [];
}


var test = '';

//클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
function displayPlaceInfo1 (place) {
 var content = '<div class="placeinfo">' +
                 '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   

 if (place.road_address_name) {
     content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
                 '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
 }  else {
     content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
 }                

 content += '    <span class="tel">' + place.phone + '</span>';
 if(currCategory == 'HP8'){
    content += '<button type="button" class="btn btn-default" data-toggle="modal" data-target=".default-example-modal-right" onclick="reserve()">예약</button>';
    }
 content += '</div>' + '<div class="after"></div>';
   test = place;
 contentNode.innerHTML = content;
 placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
 placeOverlay.setMap(map);  
//  /형식 
//  alert("placeOverlay: " + placeOverlay);
//  alert("place: " + place.place_name + " " + place.road_address_name + " " + place.address_name + " " + place.phone);


}


//각 카테고리에 클릭 이벤트를 등록합니다
function addCategoryClickEvent() {
 var category = document.getElementById('category'),
     children = category.children;

 for (var i=0; i<children.length; i++) {
     children[i].onclick = onClickCategory;
 }
}

//카테고리를 클릭했을 때 호출되는 함수입니다
function onClickCategory() {
 var id = this.id,
     className = this.className;

 placeOverlay.setMap(null);

 if (className === 'on') {
     currCategory = '';
     changeCategoryClass();
     removeMarker();
 } else {
     currCategory = id;
     changeCategoryClass(this);
     searchPlaces1();
 }
}

//클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
function changeCategoryClass(el) {
 var category = document.getElementById('category'),
     children = category.children,
     i;

 for ( i=0; i<children.length; i++ ) {
     children[i].className = '';
 }

 if (el) {
     el.className = 'on';
 } 
} 

<!-- 현재 위치(경위도) 주소로 바꾸기-->
var geocoder = new kakao.maps.services.Geocoder();

//현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
searchAddrFromCoords(map.getCenter(), displayCenterInfo);
// //지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
// kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
//     searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
//         if (status === kakao.maps.services.Status.OK) {
//             var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
//             detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
            
//             var content = '<div class="bAddr">' +
//                             '<span class="title">법정동 주소정보</span>' + 
//                             detailAddr + 
//                         '</div>';

//             // 마커를 클릭한 위치에 표시합니다 
//             marker.setPosition(mouseEvent.latLng);
//             marker.setMap(map);

//             // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
//             infowindow.setContent(content);
//             infowindow.open(map, marker);
//         }   
//     });
// });

//중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'idle', function() {
//    searchDetailAddrFromCoords(map.getCenter(), displayCenterInfo);
    searchAddrFromCoords(map.getCenter(), displayCenterInfo);
});

function searchAddrFromCoords(coords, callback) {
    // 좌표로 행정동 주소 정보를 요청합니다
    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
}


function searchDetailAddrFromCoords(coords, callback) {
    // 좌표로 법정동 상세 주소 정보를 요청합니다
    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
}


//지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
function displayCenterInfo(result, status) {
    if (status === kakao.maps.services.Status.OK) {
        var infoDiv = document.getElementById('centerAddr');

        for(var i = 0; i < result.length; i++) {
            // 행정동의 region_type 값은 'H' 이므로
            if (result[i].region_type === 'H') {
                infoDiv.innerHTML = result[i].address_name;
                
                break;
            }
        }
    }  
  
      
}


window.onload=function(){
    var test = document.getElementById('centerAddr').innerHTML;
    searchPlaces(test);
}


<!-- 지도 검색 -------------------------------------->

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

// // 키워드로 장소를 검색합니다
// searchPlaces(test);

// 키워드 검색을 요청하는 함수입니다
function searchPlaces(test) {

   var keyword = test+" "+document.getElementById('keyword').value;

    if (!keyword.replace(/^\s+|\s+$/g, '')) {
//         alert('키워드를 입력해주세요!');
        return false;
    }


    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch( keyword, placesSearchCB1); 

    
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB1(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces1(data);

        // 페이지 번호를 표출합니다
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않습니다.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}

// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces1(places) {

    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    // 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {

        // 마커를 생성하고 지도에 표시합니다
        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i), 
            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);

        // 마커와 검색결과 항목을 클릭 했을 때
        // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
        (function(marker, place) {
            
            kakao.maps.event.addListener(marker, 'click', function() {
//                alert("클릭됐다");
                displayPlaceInfo(place);
            });
        })(marker, places[i]);

        fragment.appendChild(itemEl);
    }

    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);

    if (navigator.geolocation) {
        
        // GeoLocation을 이용해서 접속 위치를 얻어옵니다
        navigator.geolocation.getCurrentPosition(function(position) {
            
            var lat = position.coords.latitude, // 위도
                lon = position.coords.longitude; // 경도
            
            var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
                message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
            // 마커와 인포윈도우를 표시합니다
            displayMarker(locPosition, message);
            
                
          });
        
    } else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
        
        var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
            message = 'geolocation을 사용할수 없어요..'
            
        displayMarker(locPosition, message);
    }
    map.setLevel(5);
}

    //마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position) {
 var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
     imageSize = new kakao.maps.Size(27, 28),  // 마커 이미지의 크기
     imgOptions =  {
         spriteSize : new kakao.maps.Size(72, 208), // 스프라이트 이미지의 크기
         spriteOrigin : new kakao.maps.Point(46, 36), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
         offset: new kakao.maps.Point(11, 28) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
     },
     markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
         marker = new kakao.maps.Marker({
         position: position, // 마커의 위치
         image: markerImage 
     });

 marker.setMap(map); // 지도 위에 마커를 표출합니다
 markers.push(marker);  // 배열에 생성된 마커를 추가합니다

 return marker;
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
    
    var test = '';
//클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
function displayPlaceInfo (place) {
 var content = '<div class="placeinfo">' +
                 '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   

 if (place.road_address_name) {
     content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
                 '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
 }  else {
     content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
 }                

 content += '    <span class="tel">' + place.phone + '</span>';
//  if(currCategory == 'HP8'){
    content += '<button type="button" class="btn btn-default" data-toggle="modal" data-target=".default-example-modal-right" onclick="reserve()">예약</button>';
//     }
 content += '</div>' + '<div class="after"></div>';
   test = place;
 contentNode.innerHTML = content;
 placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
 placeOverlay.setMap(map);  



}








<!-- 예약 ------>
var str = "";
function reserve(){
 str = "";
 $("#reserve_table").html(str);
   $.ajax({
        type: "POST",
        url : "/reserve", 
       dataType : "json",
      data: {
         dd_hospital_name : test.place_name,
         dd_hospital_tel : test.phone,
         dd_hospital_address : test.road_address_name
         },
        success : function(data){
//             alert(data.dd_hospital_name);
// alert("${time1}");
            $("#place_name").text(data.dd_hospital_name);
           },
           error : function(data){

               }
        });
}

function reserveList(){


   let date = $('#example-date1').val();
   let dd_hospital_name =test.place_name;

   $('#reservationDate').val(date);
   

   $.ajax({
        type: "POST",
        url : "/reserveList", 
       dataType : "json",
      data: {
         dd_hospital_name : dd_hospital_name,
         dd_reserve_date: date
         },
        success : function(data){
            str=" <thead class='bg-fusion-50' ><tr>"
            + "<th>#</th> <th>예약자</th> <th>예약시간</th></tr> </thead> <tbody>"
            $("#reserve_table").html(str);
         
           for(var i=0; i < data.length; i++){
         str += "<tr> <th scope='row'>"+i+"</th> <td>도담</td> <td>"+data[i].dd_reserve_date+" </td></tr>"
           }
           str+="</tbody>";
            $("#reserve_table").html(str);
            
            
           },
        });
    
}

function reserveInsert(){

   let date = $('#reservationDate').val();
   let time = $('#reservationTime').val();
   let reserveDate=date+" "+time; //합치기

   if("${time1}" >= reserveDate){
      $("#reserveDate").text(
         "날짜를 다시 확인해주세요 :p");
      $("#reserveDate").css("color",
                  "red");
      $("#reserveDate").attr(
               "disabled", true);
   }
   else{
   let dd_hospital_name =test.place_name;
   let name=$('#reservationName').val();
   document.getElementById("close").click();
   $.ajax({
        type: "POST",
        url : "/reserveInsert", 
       dataType : "json",
      data: {
         dd_hospital_name : dd_hospital_name,
         dd_reserve_date: reserveDate
         },
        success : function(data){
            
                        Swal.fire(
                        {
                            title: "<strong>예약되었습니다 :)</strong>",
                            type: "success",
                            showCloseButton: true,
                            focusConfirm: false,
                            confirmButtonText: '확인'

                        });

           },
           error : function(data){

               }
        });
   }
}



</script>



</body>
</html>