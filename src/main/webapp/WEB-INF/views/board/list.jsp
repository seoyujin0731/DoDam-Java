<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta name="description" content="Autofill">


</head>
<style>
button.relative{
position: relative;
left 10000px;
top:50px;}
}
</style>
  <body class="mod-bg-1 ">


 <main id="js-page-content" role="main" class="page-content">
                        <ol class="breadcrumb page-breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0);">게시판</a></li>
                            <c:choose>
                            <c:when test="${dd_board_category==1}">
                            <li class="breadcrumb-item">공지</li> 
                            </c:when>
                            
                            <c:otherwise>
                            <li class="breadcrumb-item">자유</li>
                            </c:otherwise>
                            </c:choose>
                           
                            <li class="position-absolute pos-top pos-right d-none d-sm-block"><span class="js-get-date"></span></li>
                        </ol>
                        <div class="subheader">
                            <h1 class="subheader-title">
 <!-- 6.11 지원 ------------------------------------------------------->
                                <c:choose>
                            <c:when test="${dd_board_category==1}">
                            <i class='subheader-icon fal fa-table'></i> Notice Board <span class='fw-300'></span> <sup class='badge badge-primary fw-500'>Dodam</sup>
                            </c:when>
                            <c:otherwise>
                            <i class='subheader-icon fal fa-table'></i> Free Board <span class='fw-300'></span> <sup class='badge badge-primary fw-500'>Dodam</sup>
                            </c:otherwise>
                            </c:choose>
                                
<!------------------------------------------------------------------------> 
                            </h1>
                        </div>
                        <div class="row">
                            <div class="col-xl-12">
                                <div id="panel-1" class="panel">
                                    <div class="panel-hdr">
<!--                                         <h2> -->
<!--                                            <span class="fw-300"><i></i></span> -->
<!--                                         </h2> -->
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
                                                <thead>
                                                    <tr>
<!--       6.11 지원                                                  <th>category</th> -->
                                                        <th>no</th>
                                                        <th>title</th>
                                                        <th>User</th>
                                                        <th>date</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                
                                                <c:forEach var="row" items="${boardList}">
                                                
                                               
                                                    <tr onclick="boardDetail(${row.dd_board_no})">
                                                    <!--  6.11 지원 -->
<%--                                                        <c:choose> --%>
<%--                                                        <c:when test="${dd_board_category==1}"> --%>
<!--                                                        <td>공지</td> -->
<%--                                                        </c:when> --%>
<%--                                                        <c:otherwise> --%>
<!--                                                        <td>자유</td> -->
<%--                                                        </c:otherwise> --%>
<%--                                                        </c:choose> --%>
                                                        <td>${row.no }</td>
                                                        <td>${row.dd_board_title }</td>
                                                        <td>${row.dd_user_id }</td>
                                                        <td>${row.dd_insert_date }</td>
                                                    </tr> 
                                                    
                                                 </c:forEach>
                                                </tbody>
                                              
                                            </table>
                                            <br>
                                            <div align="right">
                                             <button type="button" class="btn btn-warning"  onclick="boardInsert('${dd_board_category}')">
                                                    <span class="fal fa-download mr-1"></span>작성</button>
                                                    </div>
<!--                                             datatable end -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>



</body>

<script type="text/javascript">
function boardDetail(dd_board_no){
     location.href='/boardDetail?dd_board_no='+dd_board_no;

}
function boardInsert(dd_board_category){
     location.href='/boardInsertView?dd_board_category='+dd_board_category;

}
</script>

</html>