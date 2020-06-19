<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
</head>
<body>

	<main id="js-page-content" role="main" class="page-content">
                        <ol class="breadcrumb page-breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0);">게시판</a></li>
                            <li class="breadcrumb-item">공지게시판</li>
                            
                            <li class="position-absolute pos-top pos-right d-none d-sm-block"><span class="js-get-date"></span></li>
                        </ol>
                        <div class="subheader">
                            <h1 class="subheader-title">
                                <i class='subheader-icon fal fa-edit'></i> 게시물 수정
                                <small>
                                    Default input elements for forms
                                </small>
                            </h1>
                        </div>
                        <div class="row">
                            <div class="col-xl-6">
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
                                    <div class="panel-container show">
                                        
                                        <div class="panel-content">
                                        
                                            <form method="get" action="boardUpdate">
                                             <div class="btn-group btn-group-toggle" data-toggle="buttons"> 
                                               <label class="btn btn-info active"> 
                                                        <input type="radio" name="dd_board_category" id="dd_board_category"  value="1" checked="checked"> 공지 
                                                </label> 
                                                <label class="btn btn-info"> 
                                                     <input type="radio" name="dd_board_category" id="dd_board_category" value="2"> 자유
                                                </label> 
                                            </div> 
                                            <br><br>
                                            	<input type="hidden" name="dd_board_no" id="dd_board_no" value='${boardDetail.dd_board_no}'/>
                                                <div class="form-group">
                                                    <label class="form-label" for="simpleinput">Title</label>
                                                    <input type="text" name="dd_board_title" id="dd_board_title" class="form-control" value='${boardDetail.dd_board_title}' required/>
                                                </div>
                                                <div class="form-group">
                                                    <label class="form-label text-muted" for="simpleinput-disabled">Writer</label>
                                                    <input type="text" name="dd_user_id"id="dd_user_id" class="form-control" value="${dd_board_writer}" disabled>
                                                </div>
                                             
                                                <div class="form-group">
                                                    <label class="form-label" for="example-textarea">Contents</label>
                                                    <textarea class="form-control" name="dd_board_contents" id="dd_board_contents" rows="10" required="required">${boardDetail.dd_board_contents}</textarea>
                                                </div>
                                                <div align="right">
                                               		
                                          	 <button type="button" id="list" onclick="boardDetail(${boardDetail.dd_board_no})" class="btn btn-outline-default">취소</button>
														<button type="submit" class="btn btn-primary">수정</button>
                                                	
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
function boardDetail(dd_board_no){
	  location.href='/boardDetail?dd_board_no='+dd_board_no;

}
</script>
</html>