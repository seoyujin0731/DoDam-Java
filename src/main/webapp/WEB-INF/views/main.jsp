<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="description" content="Carousel">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no, minimal-ui">
  <link rel="apple-touch-icon" sizes="180x180" href="/resources/img/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="/resources/img/favicon/favicon-32x32.png">
        <link rel="mask-icon" href="/resources/img/favicon/safari-pinned-tab.svg" color="#5bbad5">
        <link rel="stylesheet" media="screen, print" href="/resources/css/theme-demo.css">
<title>Insert title here</title>
<style>
img{height:30px}
<!-- /* img.pic{height:400px} */ -->
 /* .carousel-inner{margin:00px} */ 
 </style>
</head>


      
        
<body>







   <main id="js-page-content" role="main" class="page-content">
   
   


                            
                            
      <div class="panel-container show">
                                        <div class="panel-content">
                                           
                                            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                                <ol class="carousel-indicators">
                                                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                                </ol>
                                                <div class="carousel-inner"  >
                                                    <div class="carousel-item active">
                                                        <img class="d-block w-100" style="height: 400px;" src="/resource/img/tid311t001055.jpg" data-src="holder.js/800x400?auto=yes&bg=37e2d0&fg=ffffff&text=First slide" alt="First slide">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img class="d-block w-100" style="height: 400px;" src="/resource/img/images.jpg" data-src="holder.js/800x400?auto=yes&bg=21dfcb&fg=ffffff&text=Second slide" alt="Second slide">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img class="d-block w-100" style="height: 400px;" src="/resource/img/tid150t003117.jpg" data-src="holder.js/800x400?auto=yes&bg=1dc9b7&fg=ffffff&text=Third slide" alt="Third slide">
                                                    </div>
                                                </div>
                                                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                    <span class="sr-only">Previous</span>
                                                </a>
                                                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                    <span class="sr-only">Next</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <br/>
<!--                          <img src="/resource/img/card-backgrounds/cover-1-lg.png" alt="이미지"> -->

<div class="row">
                            <div class="col-sm-6 col-xl-3 cursor-pointer rounded" onclick="boardList()">
                                <div class="p-3 bg-primary-300 rounded overflow-hidden position-relative  shadow-hover text-white mb-g">
                                    <div class="">
                                        <h3 class="display-4 d-block l-h-n m-0 fw-500">
                                                             Board
                                            <small class="m-0 l-h-n">공지/자유 게시판</small>
                                        </h3>
                                    </div>
                                    <i class="fal fa-user position-absolute pos-right pos-bottom opacity-15 mb-n1 mr-n1" style="font-size:6rem"></i>
                                </div>
                            </div>
                            <div class="col-sm-6 col-xl-3 cursor-pointer" onclick="hospitalMenu()">
                                <div class="p-3 bg-warning-400 rounded overflow-hidden position-relative shadow-hover text-white mb-g">
                                    <div class="">
                                        <h3 class="display-4 d-block l-h-n m-0 fw-500">
                                               진료과 별 병원 보기
                                            <small class="m-0 l-h-n">아픈 부위 별 병원 보기</small>
                                        </h3>
                                    </div>
                                    <i class="fal fa-gem position-absolute pos-right pos-bottom opacity-15  mb-n1 mr-n4" style="font-size: 6rem;"></i>
                                </div>
                            </div>
                            <div class="col-sm-6 col-xl-3 cursor-pointer" onclick="mask()">
                                <div class="p-3 bg-success-200 rounded overflow-hidden position-relative shadow-hover text-white mb-g">
                                    <div class="">
                                        <h3 class="display-4 d-block l-h-n m-0 fw-500">
                                                Mask Map   
                                            <small class="m-0 l-h-n">내 주변 공적 마스크 약국 보기</small>
                                        </h3>
                                    </div>
                                    <i class="fal fa-lightbulb position-absolute pos-right pos-bottom opacity-15 mb-n5 mr-n6" style="font-size: 8rem;"></i>
                                </div>
                            </div>
                            <div class="col-sm-6 col-xl-3  cursor-pointer " onclick="map()">
                                <div class="p-3 bg-info-200 rounded overflow-hidden position-relative shadow-hover text-white mb-g " >
                                    <div class="">
                                        <h3 class="display-4 d-block l-h-n m-0 fw-500">
                                                  Reservation
                                            <small class="m-0 l-h-n">내 주변 병원 예약하기</small>
                                        </h3>
                                    </div>
                                    <i class="fal fa-globe position-absolute pos-right pos-bottom opacity-15 mb-n1 mr-n4" style="font-size: 6rem;"></i>
                                </div>
                            </div>
                            </div>
                     
                     <table>
                     <tbody>
                     <tr>
                                            
                          <td><div id="openweathermap-widget-11" ></div></td>
                          <td>
                          
<!--                           <div class="panel-container show"> -->
<!--                                         <div class="panel-content" > -->
                                           
                                            <div class="frame-wrap" style="height:240px; width: 1000px;overflow-y:auto; overflow-x: hidden;">
                                                <table class="table m-0 paginated">
                                                    <thead>
                                                        <tr>
                                                            <th>공지사항</th>
                                                            
                                                          
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="row" items="${boardList}">
                                                       
                                                       <tr onclick="boardDetail(${row.dd_board_no})">
                                                    
                                                        <td>${row.no }</td>
                                                        <td>${row.dd_board_title }</td>
                                                        <td>${row.dd_user_id }</td>
                                                        <td>${row.dd_insert_date }</td>
                                                    </tr> 
                                                  
                                                 </c:forEach>
                                                    </tbody>
                                                </table>
                                           
                          </div>
                          </td>
                          </tr></tbody>
                          </table>
                          </
                          
                          
   </main>
   
<script type="text/javascript">

function map(){
      location.href="maps"
      }

function boardList(){
   location.href="boardList?dd_board_category=1";
      }

function mask(){
      location.href="maskMaps";
      
   }

   function hospitalMenu(){

      location.href="hospitalMenu";
   }

   function boardDetail(dd_board_no){
        location.href='/boardDetail?dd_board_no='+dd_board_no;

   }
   </script>

<script src='//openweathermap.org/themes/openweathermap/assets/vendor/owm/js/d3.min.js'></script>  
<script>
    window.myWidgetParam ? window.myWidgetParam : window.myWidgetParam = [];
    window.myWidgetParam.push({id: 11,
                          cityid: '1835848',
                          appid: '3f6ee6ebf6ce427abcedea01274177f8',
                          units: 'metric',
                          containerid: 'openweathermap-widget-11',
                         });
    (function() {
        var script = document.createElement('script');
           script.async = true;
            script.charset = "utf-8";
            script.src = "//openweathermap.org/themes/openweathermap/assets/vendor/owm/js/weather-widget-generator.js";
        var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(script, s);
    })();
</script>


</body>
</html>