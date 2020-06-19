<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
	<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>

</head>
<body class="mod-bg-1 ">

    <sec:authentication var="principal" property="principal" />
   <input type="hidden" value='${principal.username}' name="dd_user_id" id="dd_user_id"> 
<%--    <input type="hidden" value='${readAuthority}' name="readAuthority" id="readAuthority">  --%>
 <!-- BEGIN Left Aside -->
 
                <aside class="page-sidebar">
                
                    <!-- BEGIN PRIMARY NAVIGATION -->
                    <nav id="js-primary-nav" class="primary-nav" role="navigation">
                        <div class="nav-filter">
                            <div class="position-relative">
                                <input type="text" id="nav_filter_input" placeholder="Filter menu" class="form-control" tabindex="0">
                                <a href="#" onclick="return false;" class="btn-primary btn-search-close js-waves-off" data-action="toggle" data-class="list-filter-active" data-target=".page-sidebar">
                                    <i class="fal fa-chevron-up"></i>
                                </a>
                            </div>
                        </div>
                 
                            <!-- 200522 지원 -->
                       <div class="info-card">
                            <img src="/resource/img/icon.png" class="profile-image rounded-circle cursor-pointer" alt="cover" onclick="toMain()">
                            <div class="info-card-text">
                               <a href="#" class="d-flex align-items-center text-white">
                                    <span class="text-truncate text-truncate-sm d-inline-block cursor-default">
                                       <h2>DoDam</h2>
                                    </span>
                                </a>
                            </div>
                            <img src="/resource/img/card-backgrounds/cover-1-lg.png" class="cover" alt="cover" style="width: 320px; height: 155px;">
<!--                             <a href="#" onclick="return false;" class="pull-trigger-btn" data-action="toggle" data-class="list-filter-active" data-target=".page-sidebar" data-focus="nav_filter_input"> -->
<!--                                 <i class="fal fa-angle-down"></i> -->
<!--                             </a> -->
                        </div>
                            
                            
<!--                             이미지를 넣어주세요 -->
                   

                        <ul id="js-nav-menu" class="nav-menu">
                            <li class="nav-title">Tools & Components</li>
                           
                            <li>
                                <a href="/maps" title="Font Icons" data-filter-tags="font icons">
                                    <i class="fal fa-map-marker-alt"></i>
                                    <span class="nav-link-text" data-i18n="nav.font_icons">병원 예약</span>
                                </a>
                            </li>
                            
                            <li>
                                <a href="/maskMaps" title="Font Icons" data-filter-tags="font icons">
                                    <i class="fal fa-map-marker-alt"></i>
                                    <span class="nav-link-text" data-i18n="nav.font_icons">공적 마스크</span>
                                </a>
                            </li>
                            
                            <li>
                                <a href="/hospitalMenu" title="Font Icons" data-filter-tags="font icons" >
                                    <i class="fal fa-edit"></i>
                                    <span class="nav-link-text" data-i18n="nav.font_icons">진료과 별 병원</span>
                                </a>
                            </li>
                            
                            
                          <li class="active open">
                                <a href="/boardList?dd_board_category=1" title="Tables" data-filter-tags="tables">
                                    <i class="fal fa-th-list"></i>
                                    <span class="nav-link-text" data-i18n="nav.tables">테이블</span>
                                </a>
                                <ul>
                                     <li class="active">
                                        <a href="/boardList?dd_board_category=1" title="Basic Tables" data-filter-tags="tables basic tables">
                                            <span class="nav-link-text" data-i18n="nav.tables_basic_tables" >공지 게시판</span>
                                        </a>
                                    </li>
                                   <li class="active" >
                                        <a href="/boardList?dd_board_category=2" title="Generate Table Style" data-filter-tags="tables generate table style">
                                            <span class="nav-link-text" data-i18n="nav.tables_generate_table_style">자유 게시판</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                          
         
                               
                            <c:if test="${principal.username == 'admin' }">
                           		<li>
                                	<a href="/admin" title="Notifications" data-filter-tags="notifications">
                                    	<i class="fal fa-exclamation-circle"></i>
                                    	<span class="nav-link-text" data-i18n="nav.notifications">관리자 페이지</span>
                                	</a>
                            	</li>
                            </c:if>
                        </ul>
                        
                    </nav>
                </aside>
</body>

<script type="text/javascript">
function submitAtag(){
       let form = document.logOutForm;
       form.submit();
   }

function toMain(){
	location.href="main";
}
</script>


</html>

