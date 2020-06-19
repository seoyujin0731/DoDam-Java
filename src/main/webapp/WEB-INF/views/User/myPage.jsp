<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
   <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta charset="utf-8">
         <meta name="description" content="SweetAlert2">
        <title>
            FullCalendar - Miscellaneous - SmartAdmin v4.0.2
        </title>
        <meta name="description" content="FullCalendar">
      	<link rel="stylesheet" media="screen, print" href="/resource/css/miscellaneous/fullcalendar/fullcalendar.bundle.css">
      	<link rel="mask-icon" href="/resource/img/favicon/safari-pinned-tab.svg" color="#5bbad5">
	  	<link rel="stylesheet" media="screen, print" href="/resource/css/notifications/sweetalert2/sweetalert2.bundle.css">
   </head>
<body>
 
     <sec:authentication var="principal" property="principal" />
   <input type="hidden" value='${principal.username}' name="dd_user_id" id="dd_user_id"> 
  <input type="hidden" value='${user}' name="user" id="user">
                    <main id="js-page-content" role="main" class="page-content">
                    
                          <div class="row">
                             
                            
                            <div class="col-lg-6">
                                <div id="panel-1" class="panel">
                                    <div class="panel-hdr">
                                    
                                    
                                 <div class="row no-gutters row-grid" >
                                        <div class="col-12">
                                            <div class="d-flex flex-column align-items-center justify-content-center p-4">
                                                <img src="/resource/img/myprofile.png" class="rounded-circle shadow-2 img-thumbnail" alt="" style="width: 110px; height: 110px;">
                                                <h5 class="mb-0 fw-700 text-center mt-3">
                                                     ${principal.username}
                                                    <small class="text-muted mb-0">생년월일: ${user.dd_user_brith}</small>
                                                </h5>
                                                
                                                
                                            </div>
                                        </div>
                                        <div class="col-xl-6">
                                        
                                            <div class="text-center py-3">
                                                <h5 class="mb-0 fw-700">
                                                    E-mail
                                                    <small class="text-muted mb-0">${user.dd_user_email}</small>
                                                </h5>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="text-center py-3">
                                                <h5 class="mb-0 fw-700">
                                                       핸드폰 번호
                                                    <small class="text-muted mb-0">${user.dd_user_tel}</small>
                                                </h5>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="p-3 text-center">
                                                <a href="javascript:void(0);" class="btn-link font-weight-bold">정보 수정</a> <span class="text-primary d-inline-block mx-3">&#9679;</span>
                                                <a href="javascript:void(0);" class="btn-link font-weight-bold">현재 예약 현황</a> <span class="text-primary d-inline-block mx-3">&#9679;</span>
                                                <a href="javascript:void(0);" class="btn-link font-weight-bold">예약 리스트</a>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    
                                    </div>
                                    </div>
                                    </div>
                                    
                               <div class="col-lg-6">
                                    <div id="panel-1" class="panel">
                                    <div class="panel-hdr">
                                        <h2>
                                            My Reserve Table <span class="fw-300"></span>
                                        </h2>
                                        <div class="panel-toolbar">
                                            <button class="btn btn-panel" data-action="panel-collapse" data-toggle="tooltip" data-offset="0,10" data-original-title="Collapse"></button>
                                            <button class="btn btn-panel" data-action="panel-fullscreen" data-toggle="tooltip" data-offset="0,10" data-original-title="Fullscreen"></button>
                                            <button class="btn btn-panel" data-action="panel-close" data-toggle="tooltip" data-offset="0,10" data-original-title="Close"></button>
                                        </div>
                                    </div>
                                    <div class="panel-hdr" id="MyreserveList">
                                    

                                    
                                   
                                       <div class="frame-wrap">
                                                <table class="table table-bordered table-hover m-0" >
                                                <thead class="thead-themed">
                                                        <tr>
                                                            <th>#</th>
                                                            <th>예약자 아이디</th>
                                                            <th>병원 이름</th>
                                                            <th>예약 일자</th>
                                                            <th>예약 확인</th>
                                                            <th> </th>
                                                        </tr>
                                                    </thead>


                                                    </table>
                                                    
                                    <c:if test="${nowReVo.size() == 0 }">
                                       <tfoot>
                                          <tr>
                                             <td colspan="4" style="text-align: center; "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 현재 예약 리스트가 없습니다.</td>
                                              </tr>
                                       </tfoot>
                                    </c:if>
                                                <div style="height:270px; width: 640px;overflow-y:auto; overflow-x: hidden;">
                                
                                
                                    
                                 <table class="table table-bordered table-hover m-0" >
<!--                                  <div class="scrollBlind"> -->
    												
                                                    <tbody>
                                                    <c:forEach var="row" items="${nowReVo}">
                                                       <tr>
                                                            <td>${row.no}</td>
                                                            <td>${row.dd_user_id}</td>
                                                            <td>${row.dd_hospital_name}</td>
                                                            <td>${row.dd_reserve_date}</td>
                                                            <c:choose>
                                                            	<c:when test="${row.dd_reserve_check eq 'N'}">
                                                            		<td style="color:blue">예약 확인중</td>
                                                            	</c:when>
                                                            	<c:when test="${row.dd_reserve_check eq 'Y'}">
                                                            		<td style="color:green">예약 완료</td>
                                                            	</c:when>
                                                            	<c:when test="${row.dd_reserve_check eq 'X'}">
                                                            		<td style="color:red">예약 거절</td>
                                                            	</c:when>
                                                           </c:choose>
                                                            <td>    
                                                            	<a href="javascript:void(0);" onclick="test03('${row.dd_user_id}','${row.dd_hospital_name}','${row.dd_reserve_date}')" class="btn btn-danger btn-xs btn-icon rounded-circle" id="js-sweetalert2-example-7">
                                                        			<i class="fal fa-times"></i>
                                                    			</a>
                                                    		</td>
                                                        </tr>
                                                        
                                                      </c:forEach> 
                                                    </tbody>
                                                    
                                                    
<!--                                                 </div> -->
                                                  
                                                </table>
                                                </div>
                                            </div>
                                            
                                    
                                    
                                    </div>
                                    </div>
                                     </div>
                                    
                                   
                                    </div>
                                    
                                     <div class="panel-container show">
                                        <div class="panel-content">
                                          
                                            <ul class="nav nav-tabs nav-tabs-clean" role="tablist">
                                                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#tab-home" role="tab">Calendar</a></li>
                                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#tab-time" role="tab"> Reserve List</a></li>
                                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#tab-profile" role="tab">Setting</a></li>
                                                
                                            </ul>
                                            
                                        
                                            <div class="tab-content p-3">
                                                <div class="tab-pane fade show active" id="tab-home" role="tabpanel" aria-labelledby="tab-home"> <!-- 캘린더 div -->
                                                	<div class="row">
                            <div class="col-xl-12">
                                <div id="panel-1" class="panel">
                                    <div class="panel-hdr">
                                        <h2>
                                            Advanced <span class="fw-300"><i>Example</i></span>
                                        </h2>
                                        <div class="panel-toolbar">
                                            <button class="btn btn-panel" data-action="panel-collapse" data-toggle="tooltip" data-offset="0,10" data-original-title="Collapse"></button>
                                            <button class="btn btn-panel" data-action="panel-fullscreen" data-toggle="tooltip" data-offset="0,10" data-original-title="Fullscreen"></button>
                                            <button class="btn btn-panel" data-action="panel-close" data-toggle="tooltip" data-offset="0,10" data-original-title="Close"></button>
                                        </div>
                                    </div>
                                    
                                    <div class="panel-container show">
                                        <div class="panel-content">
                                            <div id="calendar"></div>
                                            <!-- Modal : TODO -->
                                            <!-- Modal end -->
                                        </div>
                                    </div>
                                    
                                    
                                </div>
                            </div>
                        </div>
                                                
                                                
                                                </div>
                                                
                                                <div class="tab-pane fade" id="tab-time" role="tabpanel" aria-labelledby="tab-time">
                                                	<div class="panel-hdr">
                                       <div class="frame-wrap">
                                                <table class="table table-bordered table-hover m-0" >
                                                    <thead class="thead-themed">
                                                        <tr>
                                                            <th>#</th>
                                                            <th>예약자 아이디</th>
                                                            <th>병원 이름</th>
                                                            <th>예약 일자</th>
                                                            
                                                        </tr>
                                                    </thead>



                                                    </table>
                                                    
                                               <c:if test="${reVo.size() == 0 }">
                                       <tfoot>
                                          <tr>
                                             <td colspan="3" style="text-align: center; "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 현재 예약 리스트가 없습니다.</td>
                                              </tr>
                                       </tfoot>
                                    </c:if>
                                                <div style="height:270px; width: 640px;overflow-y:auto; overflow-x: hidden;">
                                    
                                 <table class="table table-bordered table-hover m-0" >
<!--                                  <div class="scrollBlind"> -->
                                                    <tbody>
                                                    <c:forEach var="row" items="${reVo}">
                                                       <tr>
                                                            <td>${row.no}</td>
                                                            <td>${row.dd_user_id}</td>
                                                            <td>${row.dd_hospital_name}</td>
                                                            <td>${row.dd_reserve_date}</td>
                                                            
                                                        </tr>
                                                        
                                                      </c:forEach> 
                                                    </tbody>
                                                    
                                                    
<!--                                                 </div> -->
                                                  
                                                </table>
                                                </div>
                                            </div>
                                            
                                    
                                    
                                    </div>
                                                </div>
                                                
                                                <div class="tab-pane fade" id="tab-profile" role="tabpanel" aria-labelledby="tab-profile"> 
                                                
                                                 <div class="row">
                            							<div class="col-xl-6">
                                							<div id="panel-1" class="panel">
																<div class="panel-container show">
                                       							 <div class="panel-content">
                                               <form>
                                                <div class="form-group">
                                                    <label class="form-label" for="simpleinput">User ID</label>
                                                    <input type="text" name="dd_user_id" id="dd_user_id" class="form-control" value="${principal.username}" disabled>
                                                </div>
                                                <div class="form-group">
                                                    <label class="form-label" for="example-email-2">Email</label>
                                                    <input type="email" id="dd_user_email" name="dd_user_email" class="form-control" placeholder="Email" value="${user.dd_user_email}">
                                                </div>
                                              	
                                              	<div class="form-group">
                                                    <label class="form-label" for="example-date">Birth</label>
                                                    <input class="form-control" id="dd_user_brith" type="date" name="dd_user_brith" value="${user.dd_user_brith}">
                                                </div>
                                                <div class="form-group">
                                                    <label class="form-label" for="example-number">Number</label>
                                                    <input class="form-control" id="dd_user_tel" type="number" name="dd_user_tel" value="${user.dd_user_tel}">
                                                </div>
                                                <div align="right">
                                            		<button type="button" class="btn btn-warning" onclick="updateSubmit()">Edit</button>
                                        		</div>
                                        		</form>
                                        </div>																							
                                    </div>
												</div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                
                                
<!--                                 캘린더 -->
                               


                                
                    </main>
    

 

  <script src="${pageContext.request.contextPath}/resource/js/dependency/moment/moment.js"></script>
  <script src="${pageContext.request.contextPath}/resource/js/miscellaneous/fullcalendar/fullcalendar.bundle.js"></script>
  <script src="${pageContext.request.contextPath}/resource/js/notifications/sweetalert2/sweetalert2.bundle.js"></script>
   
   <script>

 
   
   function updateSubmit(){

	   var user_email = document.getElementById('dd_user_email').value;
	   var user_brith = document.getElementById('dd_user_brith').value;
	   var user_tel = document.getElementById('dd_user_tel').value;

               Swal.fire(
               {
                   position: "center",
                   type: "success",
                   title: "Your work has been saved",
                   showConfirmButton: false,
                   timer: 1500
               });

            $.ajax({
            type: "POST",
            url : "/UserUpdate", 
            dataType: 'json',
            data: {
            	dd_user_email: user_email,
            	dd_user_brith : user_brith,
            	dd_user_tel: user_tel
    		   },
            success : function(data){

                Swal.fire(
                        {
                            position: "center",
                            type: "success",
                            title: "Your work has been saved",
                            showConfirmButton: false,
                            timer: 1500
                        });

//                 window.document.reload();
            	 
            	
    			},
    		   error : function(){
                   alert("에러");
                   }
            });
               

//                location.href="/UserUpdate?dd_user_email="+dd_user_email+"&dd_user_brith="+dd_user_brith+"&dd_user_tel="+dd_user_tel;
         
   }
   </script>
   
   <script>
   function test03(user_id, hospital_name, reserve_date){
    Swal.fire(
    {
        title: hospital_name+"<br>"+reserve_date+"<br>"+"예약 취소하시겠습니까?",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Yes"
    })
    .then(function(result)
    {
        if (result.value)
        {	
        	Swal.fire("예약 취소!", "예약이 취소되었습니다.", "success");
        	setTimeout(function(){
        		 location.href="/reserveDelete?dd_hospital_name="+hospital_name+"&dd_reserve_date="+reserve_date;
        		 
        		   },1000);


           
        	
            
           
//             $.ajax({
//                 type: "POST",
//                 url : "/reserveDelete", 
//                 dataType: 'json',
//                 data: {
//                 	dd_user_id: user_id,
//          		    dd_hospital_name : hospital_name,
//         		    dd_reserve_date: reserve_date
//         		   },
//                 success : function(){
                	 
                	
//         			},
//         		   error : function(){
//                        alert( "dd");
//                        }
//                 });

        			
                }
                  
    });
        }
  



   </script>
        <script>



            var todayDate = moment().startOf('day');
            var YM = todayDate.format('YYYY-MM');
            var YESTERDAY = todayDate.clone().subtract(1, 'day').format('YYYY-MM-DD');
            var TODAY = todayDate.format('YYYY-MM-DD');
            var TOMORROW = todayDate.clone().add(1, 'day').format('YYYY-MM-DD');
//             alert(todayDate);

	let cal={
        plugins: ['dayGrid', 'list', 'timeGrid', 'interaction', 'bootstrap'],
        themeSystem: 'bootstrap',
        timeZone: 'UTC',
        dateAlignment: "month", //week, month
        buttonText:
        {
            today: 'today',
            month: 'month',
            week: 'week',
            day: 'day',
            list: 'list'
        },
//         eventTimeFormat:
//         {
//             hour: 'numeric',
//             minute: '2-digit',
//             meridiem: 'short'
//         },
        navLinks: true,
        header:
        {
            left: 'prev,next today addEventButton',
            center: 'title',
            right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
        },
        footer:
        {
            left: '',
            center: '',
            right: ''
        },
//         customButtons:
//         {
//             addEventButton:
//             {
//                 text: '+',
//                 click: function()
//                 {
//                     var dateStr = prompt('Enter a date in YYYY-MM-DD format');
//                     var date = new Date(dateStr + 'T00:00:00'); // will be in local time

//                     if (!isNaN(date.valueOf()))
//                     { // valid?
//                         calendar.addEvent(
//                         {
//                             title: 'dynamic event',
//                             start: date,
//                             allDay: true
//                         });
//                         alert('Great. Now, update your database...');
//                     }
//                     else
//                     {
//                         alert('Invalid date.');
//                     }
//                 }
//             }
//         },
        height: 700,
//         editable: true,
        eventLimit: true, // allow "more" link when too many events
        views:
        {
            sevenDays:
            {
                type: 'agenda',
                buttonText: '7 Days',
                visibleRange: function(currentDate)
                {
                    return {
                        start: currentDate.clone().subtract(2, 'days'),
                        end: currentDate.clone().add(5, 'days'),
                    };
                },
                duration:
                {
                    days: 7
                },
                dateIncrement:
                {
                    days: 1
                },
            },
        },
        events: [
        ],

    };

    let color=["border-warning bg-warning text-dark","bg-white border-primary text-primary",
        "bg-primary border-primary text-white","bg-info border-info text-white","bg-danger border-danger text-white",
        "bg-success border-success text-white","bg-primary text-white border-primary","bg-info border-info",
        "bg-warning text-dark border-warning","bg-success border-success text-white","bg-danger border-danger text-white",
        "bg-primary text-white border-primary text-white","bg-info border-info text-white","border-warning bg-warning text-dark"];

    $.ajax({
        type: "POST",
        url : "/UserMyPage2", 
        dataType: 'json',
        success : function(data){
         
			for(var i=0;i<data.length;++i){
				  cal.events[i] = {
	                    title: data[i].dd_hospital_name,
	                    start: YM +"-"+data[i].dd_reserve_date.slice(8,10)+"T"+data[i].dd_reserve_date.slice(11,16),
	                    description: 'This is a test description',
	                    className: color[Math.floor(Math.random()*color.length)]
                  
	                };
	              
          	
			}

			
        },
           error : function(data){
               }
        });

   
            document.addEventListener('DOMContentLoaded', function()
            {
                var calendarEl = document.getElementById('calendar');

                var calendar = new FullCalendar.Calendar(calendarEl,cal);
                calendar.render();
            });

        </script>
        <script type="text/javascript">
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

        
        </script>
</body>

  

</html>