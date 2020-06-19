<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   
   
<%--    <button id="update" onclick="boardUpdateView(${boardDetail.dd_board_no})">Update</button> --%>
<!--    <button id="list" onclick="boardList()">목록</button> -->
   
   
   
   <% %>
   <main id="js-page-content" role="main" class="page-content">
                        <ol class="breadcrumb page-breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0);">게시판</a></li>
                             <c:choose>
                            <c:when test="${boardDetail.dd_board_category==1}">
                            <li class="breadcrumb-item">공지</li> <!-- 바꾸기 -->
                            </c:when>
                            
                            <c:otherwise>
                            <li class="breadcrumb-item">자유</li>
                            </c:otherwise>
                            </c:choose>
                            
                    
                            
                          
                           
                            <li class="position-absolute pos-top pos-right d-none d-sm-block"><span class="js-get-date"></span></li>
                        </ol>
                        <div class="subheader">
<!--                             <h1 class="subheader-title"> -->
<!--                                 <i class='subheader-icon fal fa-table'></i> DataTables: <span class='fw-300'>Autofill</span> <sup class='badge badge-primary fw-500'>ADDON</sup> -->
<!--                                 <small> -->
<!--                                     Create headache free searching, sorting and pagination tables without any complex configuration -->
<!--                                 </small> -->
<!--                             </h1> -->
                        </div>
                        <div class="row">
                            <div class="col-xl-12">
                                <div id="panel-1" class="panel">
                                    <div class="panel-hdr">
                                       <h2>TITLE : ${boardDetail.dd_board_title}</h2>
                                       <div align="right"><h2>NO: ${boardDetail.dd_board_no}</h2> </div>
                                        
<!--                                         <h2> -->
<!--                                            <span class="fw-300"><i></i></span> -->
<!--                                         </h2> -->
<!--                                         <div class="panel-toolbar"> -->
<!--                                             <button class="btn btn-panel" data-action="panel-collapse" data-toggle="tooltip" data-offset="0,10" data-original-title="Collapse"></button> -->
<!--                                             <button class="btn btn-panel" data-action="panel-fullscreen" data-toggle="tooltip" data-offset="0,10" data-original-title="Fullscreen"></button> -->
<!--                                             <button class="btn btn-panel" data-action="panel-close" data-toggle="tooltip" data-offset="0,10" data-original-title="Close"></button> -->
<!--                                         </div> -->
                                        
                                    </div>
                                    <div class="panel-container show">
                                        <div class="panel-content">
<!--                                             datatable start     카테고리 번호 -->
  							<c:choose>
                            <c:when test="${boardDetail.dd_board_category==1}">
                                 <p>CATEGORY: 공지</p>
                            </c:when>
                            <c:otherwise>
                             	<p>CATEGORY: 자유</p>
                            </c:otherwise>
                            </c:choose>
                                 <p>USER_ID: ${boardDetail.dd_user_id}</p>
                                 <p>DATE: ${boardDetail.dd_insert_date}</p>
                                 <p>UPDATE_DATE: ${boardDetail.dd_modify_date}</p>
                                 <p>CONTENTS</p> 
                                 <div style="background-color:#DCDCDD; padding:20px;">
                                 ${boardDetail.dd_board_contents}
                                 </div>
                                 
                                            
                                          
                                           
<!--                                             datatable end -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                <div align="right" >
                                         <c:choose>
                                         <c:when test="${boardDetail.dd_user_id != cipalName}">
                                 </c:when>
                                 <c:otherwise>
                                            <button type="button" id="delete" onclick="boardDelete(${boardDetail.dd_board_no},${boardDetail.dd_board_category})" class="btn btn-secondary">삭제</button>    
                                            <button type="button" id="update" onclick="boardUpdateView(${boardDetail.dd_board_no})" class="btn btn-secondary">수정</button>
                                   
                                            </c:otherwise>
                                            </c:choose>
                                            <button type="button" id="list" onclick="boardList(${boardDetail.dd_board_category})" class="btn btn-secondary">목록</button>         
                        </div>
                        <br/>
                        
                  <div>
   <!-- REPLY -->
                     <form action="boardReplyInsert">
                      <div>
                         <input type="hidden" name="dd_board_no" id="dd_board_no" value="${boardDetail.dd_board_no}">
                                <label class="form-label" for="example-textarea"> Reply </label>
                                <textarea class="form-control" name="dd_reply_content" id="dd_reply_content" rows="3"></textarea>
                           </div>
                           <br/>
                           <div align="right">
                              <button type="submit" class="btn btn-secondary btn-pills">저장</button>
                     </div>
                     </form>
                     
                      <div class="input-group inpt-group-lg mb-3">
                           
                        </div>
                        
                     <h5 class="frame-heading">
                                               
                                            </h5>
                                            <div class="frame-wrap">
                                                <table class="table m-0">
                                                    <thead>
                                                        <tr>
                                                            <th>댓글 ${reply_count}개</th>
                                                            
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    
                                                       <c:forEach var="row" items="${boardReplyList}">
                                                       
                                                        <tr>
<!--                                                             <th scope="row">1</th> -->
                                                            <td width="8%">${row.dd_reply_no}</td>
                                                            <td>
                                                            <span>${row.dd_user_id}</span>
                                                            <span>${row.dd_reply_date}</span>
                                                            
                                                            <br>
                                                            <div>${row.dd_reply_content}</div>
                                                            <br/>
                                                            
                                                            </td>
                                                            <td width="5%">
                                                            <c:choose>
                                                        <c:when test="${row.dd_user_id != cipalName}">
                                                </c:when>
                                                <c:otherwise>
                                                             
                                                            <a href="javascript:void(0);" class="btn btn-outline-danger btn-xs btn-icon rounded-circle" onclick="boardReplyDelete(${boardDetail.dd_board_no},${row.dd_reply_no})">
                                                                 <i class="fal fa-times"></i>
                                                            </a>
                                                             </c:otherwise>
                                                              </c:choose>
                                                            </td>
                                                        </tr>
                                                       
                                          
                                                        
                                                        </c:forEach>
                                                       
<!--                                                         <tr> -->
<!--                                                             <th scope="row">4</th> -->
<!--                                                             <td colspan="2">Larry the Bird</td> -->
<!--                                                             <td>@twitter</td> -->
<!--                                                         </tr> -->
                                                    </tbody>
                                                </table>
                                            </div>
                     
                     
                  </div>                       
                    </main>
   
</body>
<script>
function boardDelete(dd_board_no,dd_board_category){
   location.href='/boardDelete?dd_board_no='+dd_board_no+"&dd_board_category="+dd_board_category;
}

function boardUpdateView(dd_board_no,dd_user_id){
   
   location.href='/boardUpdateView?dd_board_no='+dd_board_no;
}

function boardList(dd_board_category){
      location.href='/boardList?dd_board_category='+dd_board_category;
}

function boardReplyDelete(dd_board_no, dd_reply_no){
      location.href='/boardReplyDelete?dd_reply_no='+dd_reply_no+'&dd_board_no='+dd_board_no;
   
}

function boardReplyUpdateShow(dd_reply_no){
       document.getElementById("dd_reply_no").style.display = "block";

}

function boardReplyUpdateHide(dd_reply_no){
      document.getElementById("dd_reply_no").style.display = "none";
}









</script>

</html>