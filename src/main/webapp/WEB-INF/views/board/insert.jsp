<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert</title>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>

  <main id="js-page-content" role="main" class="page-content">
                        <ol class="breadcrumb page-breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0);">게시판</a></li>
                            
                          <c:choose>
                            <c:when test="${dd_board_category==1}">
                            <li class="breadcrumb-item">공지</li> <!-- 바꾸기 -->
                            </c:when>
                            
                            <c:otherwise>
                            <li class="breadcrumb-item">자유</li>
                            </c:otherwise>
                            </c:choose>
                            
                            <li class="position-absolute pos-top pos-right d-none d-sm-block"><span class="js-get-date"></span></li>
                        </ol>
                        <div class="subheader">
                            <h1 class="subheader-title">
                                <i class='subheader-icon fal fa-edit'></i> 게시물 작성
                                <small>
                                    Default input elements for forms
                                </small>
                            </h1>
                        </div>
                        <div class="row">
                            <div class="col-xl-12">
                                <div id="panel-1" class="panel">
                                    <div class="panel-hdr">
                                   
                                        <h2>
                                            General <span class="fw-300"><i>inputs</i></span>
                                        </h2>
                                   
                                        <div class="panel-toolbar">
                                            <button class="btn btn-panel" data-action="panel-collapse" data-toggle="tooltip" data-offset="0,10" data-original-title="Collapse"></button>
                                            <button class="btn btn-panel" data-action="panel-fullscreen" data-toggle="tooltip" data-offset="0,10" data-original-title="Fullscreen"></button>
                                            <button class="btn btn-panel" data-action="panel-close" data-toggle="tooltip" data-offset="0,10" data-original-title="Close"></button>
                                        </div>
                                    </div>
                                    <div class="panel-content p-0">   
                                    <div class="panel-container show">
                                       <form action="boardInsert" class="needs-validation" novalidate>
                                           <div class="panel-content">
<!--                                          <div class="frame-wrap mb-0"> -->
                                           <div id="rate" class="btn-group btn-group-toggle" data-toggle="buttons">  <!-- 공지/자유 설정 -->
                                               <label class="btn btn-info active"> 
                                                        <input type="radio" name="dd_board_category" id="dd_board_category" value="1" checked="checked"> 공지  
                                                </label> 
                                                <label class="btn btn-info"> 
                                                     <input type="radio" name="dd_board_category" id="dd_board_category" value="2"> 자유
                                                </label> 

                                            </div> 
                                             <br>
                                             <br>
                                                <div class="form-group">
                                                <div class="col-md-6 mb-3">
                                                    <label class="form-label" for="validationCustom03">Title<span class="text-danger">*</span></label>
                                                    <input type="text" name="dd_board_title" id="dd_board_title" class="form-control" required/>
                                                    <div class="invalid-feedback">
                                          Please enter a message in the title.
                                       </div>
                                                </div>
                                                </div>
                                                <div class="form-group">
                                                <div class="col-12 mb-3">
                                                    <label class="form-label text-muted" for="simpleinput-disabled">Writer</label>
                                                    
                                                    <input type="text" name="dd_user_id"id="dd_user_id" class="form-control" value="${dd_board_writer}" disabled> <!-- disabled="" -->
                                                </div>
                                             
                                                <div class="form-group">
                                                <div class="col-12 mb-3">
                                                    <label class="form-label" for="validationTextarea2">Contents <span class="text-danger">*</span></label>
                                                    <textarea class="form-control" name="dd_board_contents" id="dd_board_contents" placeholder="Required example textarea" rows="5" required="required"></textarea>
                                                   <div class="invalid-feedback">
                                          Please enter a message in the textarea.
                                       </div>                           
                                                </div>
                           
                                                <div align="right">
                                                     <button type="button" id="list" onclick="boardList(${dd_board_category})" class="btn btn-outline-default">취소</button>
                                                   <button type="submit" class="btn btn-primary">저장</button>
                                               </div>
<!--                                           </div> -->
                                          </div>
                                        </form>
                                        
                                        
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                      
                           
                    </main>



</body>

<script>
(function() {
     'use strict';
     window.addEventListener('load', function() {
      // Fetch all the forms we want to apply custom Bootstrap validation styles to
      var forms = document.getElementsByClassName('needs-validation');
      // Loop over them and prevent submission
      var validation = Array.prototype.filter.call(forms, function(form) {
        form.addEventListener('submit', function(event) {
         if (form.checkValidity() === false) {
           event.preventDefault();
           event.stopPropagation();
         }
         form.classList.add('was-validated');
        }, false);
      });
     }, false);
   })();




function boardList(dd_board_category){
      location.href='/boardList?dd_board_category='+dd_board_category;
      
}



</script>
</html>