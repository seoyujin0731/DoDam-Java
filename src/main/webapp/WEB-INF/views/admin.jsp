<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="description" content="SweetAlert2">
    <link rel="stylesheet" media="screen, print" href="/resource/css/notifications/sweetalert2/sweetalert2.bundle.css">
<title>Insert title here</title>
</head>
<body>
<main id="js-page-content" role="main" class="page-content">



                    
                        <div class="subheader">
                            <h1 class="subheader-title">
                                <i class='subheader-icon fal fa-table'></i> 사용자 예약 현황  
                             
                            </h1>
                        </div>
                        <div class="row">
                            <div class="col-xl-12">
                                <div id="panel-1" class="panel">
                                    <div class="panel-hdr">
                                        <h2>
                                           	 사용자 예약 테이블 <span class="fw-300"></span>
                                        </h2>
                                        <div class="panel-toolbar">
                                            <button class="btn btn-panel" data-action="panel-collapse" data-toggle="tooltip" data-offset="0,10" data-original-title="Collapse"></button>
                                            <button class="btn btn-panel" data-action="panel-fullscreen" data-toggle="tooltip" data-offset="0,10" data-original-title="Fullscreen"></button>
                                            <button class="btn btn-panel" data-action="panel-close" data-toggle="tooltip" data-offset="0,10" data-original-title="Close"></button>
                                        </div>
                                    </div>
                                    <div class="panel-container show">
                                        <div class="panel-content">
                                           
                                            <!-- datatable start -->
                                            <table id="dt-basic-example" class="table table-bordered table-hover table-striped w-100">
                                            
                                            
                                                    <thead class="bg-primary-600">
                                                        <tr>
                                                            <th>#</th>
                                                            <th>예약자 아이디</th>
                                                            <th>병원 이름</th>
                                                            <th>예약 일자</th>
                                                            <th>예약 승인</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach var="row" items="${reservetable}">
                                                       <tr>
                                                            <td>${row.no}</td>
                                                            <td>${row.dd_user_id}</td>
                                                            <td>${row.dd_hospital_name}</td>
                                                            <td>${row.dd_reserve_date}</td>
                                                            <td>    
                                                            	<a href="javascript:void(0);" style="margin-right: 10px; " class="btn btn-success btn-sm btn-icon rounded-circle waves-effect waves-themed" id="js-sweetalert2-example-7" onclick="reserveOk(${row.dd_reserve_no})">
                                                        			<i class="fal fa-check"></i>
                                                    			</a>
                                                    			
                                                            	<a href="javascript:void(0);" onclick="reserveNo(${row.dd_reserve_no})" class="btn btn-danger btn-sm btn-icon rounded-circle waves-effect waves-themed" id="js-sweetalert2-example-7">
                                                        			<i class="fal fa-times"></i>
                                                    			</a>
                                                    		</td>
                                                        </tr>
                                                      </c:forEach> 
                                                    </tbody>
                                             
                                            </table>
                                            
                                            
                                            
                                            
                                            
                                               
                                            <!-- datatable end -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>





</main>
<script src="/resource/js/notifications/sweetalert2/sweetalert2.bundle.js"></script>
<script type="text/javascript">
function reserveOk(dd_reserve_no) {

	   $.ajax({
	        type: "POST",
	        url : "/reserveOk?dd_reserve_no=" + dd_reserve_no, 
	        success : function(data){
	                        Swal.fire(
	                        {
	                        	position: "middle-middle",
	          	                type: "success",
	          	                title: "예약이 수락되었습니다. :)",
	          	                showConfirmButton: false,
	          	                timer: 1500
	                        });
	      
	           },
	           error : function(data){
	               }
	        });
}

function reserveNo(dd_reserve_no) {

	   $.ajax({
	        type: "POST",
	        url : "/reserveNo?dd_reserve_no=" + dd_reserve_no, 
	        success : function(data){
                Swal.fire(
                        {
                            type: "error",
                            title: "Oops...",
                            text: "예약을 거절하였습니다.",
                        });
	           },
	           error : function(data){
	               }
	        });
}
</script>


</body>
</html>