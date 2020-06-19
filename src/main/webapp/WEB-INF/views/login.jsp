<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<meta name="description" content="login">
		<meta name="description" content="SweetAlert2">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no, minimal-ui">
        <!-- Call App Mode on ios devices -->
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <!-- Remove Tap Highlight on Windows Phone IE -->
        <meta name="msapplication-tap-highlight" content="no">
        <!-- base css -->
        <link rel="stylesheet" media="screen, print" href="/resource/css/vendors.bundle.css">
        <link rel="stylesheet" media="screen, print" href="/resource/css/app.bundle.css">
        <!-- Place favicon.ico in the root directory -->
        <link rel="apple-touch-icon" sizes="180x180" href="/resource/img/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="/resource/img/favicon/favicon-32x32.png">
        <link rel="mask-icon" href="/resource/img/favicon/safari-pinned-tab.svg" color="#5bbad5">
        <!-- Optional: page related CSS-->
        <link rel="stylesheet" media="screen, print" href="/resource/css/fa-brands.css">
        <link rel="stylesheet" media="screen, print" href="/resource/css/notifications/sweetalert2/sweetalert2.bundle.css">
</head>

<body>

        <div class="page-wrapper">
            <div class="page-inner bg-brand-gradient">
                <div class="page-content-wrapper bg-transparent m-0">
                    <div class="height-10 w-100 shadow-lg px-4 bg-brand-gradient">
                        <div class="d-flex align-items-center container p-0">
                            
                            
                        </div>
                    </div>
<!--                     <div class="flex-1" style="background: url(img/svg/pattern-1.svg) no-repeat center bottom fixed; background-size: cover;"> -->
<!--                     <div class="flex-1" style="background-size: cover;"> -->
                        <div class="container py-4 py-lg-5 my-lg-5 px-4 px-sm-0">
                            <div class="row">
                                
                                <div class="col-sm-12 col-md-6 col-lg-5 col-xl-4 ml-auto" style="margin: auto;">
                                    <h1 class="text-white fw-300 mb-3 d-sm-block d-md-none">
                                        Secure login
                                    </h1>
                                    <div class="card p-4 rounded-plus bg-faded" style="margin: auto;">
                                    
                                        <form id="js-login" action="/login" method="post">
                                            <div class="form-group">
                                                <label class="form-label" for="username">Username</label>
                                                <input type="text" id="dd_user_id" name="dd_user_id" class="form-control form-control-lg" placeholder="your id " required>
<!--                                                 <div class="invalid-feedback">No, you missed this one.</div> -->
                                                <div class="help-block">아이디를 작성해주세요.</div>
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label" for="password">Password</label>
                                                <input type="password" id="dd_user_pw" name="dd_user_pw" class="form-control form-control-lg" placeholder="password" required>
<!--                                                 <div class="invalid-feedback">Sorry, you missed this one.</div> -->
                                                <div class="help-block">비밀번호를 작성해주세요.</div>
                                            </div>
                                            

 											<div class="form-group text-left">
                                                <div class="custom-control custom-checkbox">
                                               		<c:if test="${param.error != null}"> 
                                                    	<span class="text-danger">아이디와 비밀번호가 잘못되었습니다.</span>
                                                	</c:if>
                                                </div>
                                            </div>

                                            <div class="row no-gutters">
                                                <div class="col-lg-6 pr-lg-1 my-2">
                                                    <button type="button" class="btn btn-info btn-block btn-lg" onclick="location.href='${pageContext.request.contextPath}/signUp'">Sign UP </button>
          <!--           	<button type="button" id="user_signUp" class="btn btn-info btn-block btn-lg" onclick="location.href='${pageContext.request.contextPath}/signUp'">Sign UP </button>-->   
                                                </div>
                                                <div class="col-lg-6 pl-lg-1 my-2">
                                                    <button id="js-login-btn" type="submit" class="btn btn-danger btn-block btn-lg">Login</button>
                                                </div>
                                            </div>
                                        </form>
                                        
                                        

                                        
                                        
                                        
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
<!--         </div> -->
        
   <script src="/resource/js/notifications/sweetalert2/sweetalert2.bundle.js"></script>     
        <script>
            $("#js-login-btn").click(function(event)
            {

                // Fetch form to apply custom Bootstrap validation
                var form = $("#js-login")

                if (form[0].checkValidity() === false)
                {
                    event.preventDefault()
                    event.stopPropagation()
                }

                form.addClass('was-validated');
                // Perform ajax submit here...
            });



            /영어라 몰라 그냥 감으로 치는중
            $.get("/user", function(data) {
                $("#user").html(data.userAuthentication.details.name);
                $(".unauthenticated").hide()
                $(".authenticated").show()
            });

        </script>
        
        




        
</body>
</html>