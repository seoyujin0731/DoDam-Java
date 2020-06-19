<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>    
	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Login</title>
<meta name="description" content="Login">


<!-- Optional: page related CSS-->
<link rel="stylesheet" media="screen, print" href="${pageContext.request.contextPath}/resource/css/fa-brands.css">
<link rel="stylesheet" media="screen, print" href="${pageContext.request.contextPath}/resource/css/notifications/sweetalert2/sweetalert2.bundle.css">
<link rel="stylesheet" media="screen, print" href="${pageContext.request.contextPath}/resource/css/theme-demo.css">

<head>

<title>Insert title here</title>
</head>
<body>

        <main id="js-page-content" role="main" class="page-content">
                       
                        <div class="row">
                            <div class="col-xl-6" style="margin: auto;">
                          
                          <div class="subheader">
                            <h1 class="subheader-title" >
                                <i class='subheader-icon fal fa-edit'></i> Sign-Up
                               
                            </h1>
                        </div>
                          
                                <div id="panel-2" class="panel">

                                    <div class="panel-container show">
                                        
                                        <div class="panel-content p-0">
                                        
                                            <form class="needs-validation" novalidate id="js-login" method="post" name="signUp" >
                                                <div class="panel-content">
                                                    <div class="form-row">
                                                    
                                                    <div class="form-row form-group">
                                                        <div class="col-md-7 mb-3">
                                                            <label class="form-label" for="validationCustom03">User Id <span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" id="dd_user_id" name="dd_user_id" placeholder="Id 4~10자리로 작성해 주세요." required>
                                                            <div class="invalid-feedback">
                                                                	아이디를 작성해주세요.
                                                            </div>
                                                            <p id="id_check" name="id_check" />
                                                        </div>
                                                   
                                                
                                                        <div class="col-md-6 mb-3">
                                                            <label class="form-label" for="validationCustom03">PassWord <span class="text-danger">*</span></label>
                                                            <input type="password" class="form-control" id="dd_user_pw_test" name="dd_user_pw_test" placeholder="User Password 8자리이상 작성해 주세요." required>
                                                            <div class="invalid-feedback">
                                                                	비밀번호를 작성해주세요.
                                                            </div>
                                                        </div>
<!--                                                          <p id="pw_check" name="pw_check" /> -->
                                                   
                                                    <div class="col-md-6 mb-3">
                                                            <label class="form-label" for="validationCustom03">PassWord <span class="text-danger">*</span></label>
                                                            <input type="password" class="form-control" id="dd_user_pw" name="dd_user_pw" placeholder="re-password" required>
                                                            <div class="invalid-feedback">
                                                                	비밀번호를 확인해주세요.
                                                            </div>
                                                    </div>
                                                     <div class="col-md-7 mb-3">
                                                    <p id="pw_check" name="pw_check" />
                                                    </div>
                                                     <div class="col-md-7 mb-3">
                                                            <label class="form-label" for="validationCustom03">E-Mail <span class="text-danger">*</span></label>
                                                            <input type="email" class="form-control" id="dd_user_email" name="dd_user_email" placeholder="e-mail" required>
                                                            <div class="invalid-feedback">
                                                                	이메일을 작성해주세요.
                                                            </div>
                                                            <p id="email_check" name="email_check" />
                                                     </div>
                                                       
<!--                                                     </div> -->
                                                    
                                                
                                               
                                                        <div class="col-md-6 mb-3">
                                                            <label class="form-label" for="validationCustom03">phone number <span class="text-danger">*</span></label>
                                                            <input type="tel" class="form-control" id="dd_user_tel" name="dd_user_tel" placeholder="phone number '-'없이 입력해주세요" required>
                                                            <div class="invalid-feedback">
                                                                	핸드폰 번호를 입력해주세요.
                                                            </div>
                                                        </div>
                                           
                                                        <div class="col-md-6 mb-3">
                                                            <label class="form-label" for="validationCustom03"> Birth <span class="text-danger">*</span></label>
                                                            <input type="date" class="form-control" id="dd_user_brith" name="dd_user_brith" placeholder="birth" required>
                                                            <div class="invalid-feedback">
                                                                	생년월일을 입력해주세요.
                                                            </div>
                                                        </div>
                                                        
                                                        
                                                        
                                                        
                                                <div class="col-12">
                                                    <label class="form-label mb-2">Please disclose your gender profile <span class="text-danger">*</span></label>
                                                    <div class="custom-control custom-radio mb-2">
                                                    	<input type="radio" class="custom-control-input" id="GenderMale" name="dd_user_gender" required value="M">
                                                        <label class="custom-control-label" for="GenderMale">Male</label>
                                                    </div>
                                                    <div class="custom-control custom-radio mb-2">
                                                        <input type="radio" class="custom-control-input" id="GenderFemale" name="dd_user_gender" required value="F">
                                                        <label class="custom-control-label" for="GenderFemale">Female</label>
                                                    </div>
                                                    <div class="custom-control custom-radio">
                                                        <input type="radio" class="custom-control-input" id="genderPrivate" name="dd_user_gender" required value="P">
                                                        <label class="custom-control-label" for="genderPrivate">Prefer not to say</label>
                                                        <div class="invalid-feedback">성별을 선택해주세요.</div>
                                                    </div>
                                                </div>
                                                
                                                
                                                    </div>
                                                </div>
                                                </div>
                                                <div class="panel-content border-faded border-left-0 border-right-0 border-bottom-0 d-flex flex-row align-items-center">

                                                    <button id="js-login-btn" class="btn btn-primary ml-auto" type="button" style="margin: auto;" onclick="UserSignUp()" >회원가입</button>
                                                </div>
                                            </form>

                                            
                                            
        									
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </main>

				<script src="/resource/js/formplugins/inputmask/inputmask.bundle.js"></script>
				<script src="${pageContext.request.contextPath}/resource/js/notifications/sweetalert2/sweetalert2.bundle.js"></script>
                    <script>
					// 회원가입 버튼 눌렀을때
        			$("#js-login-btn").click(function(event) {
        				var form = $("#js-login")
        				if (form[0].checkValidity() === false) {
        					event.preventDefault()
        					event.stopPropagation()
        				}
        				form.addClass('was-validated');
        			});
        			
        			$("#js-sweetalert2-example-6").on("click", function()
        		                {
        		                    Swal.fire(
        		                    {
        		                        position: "top-end",
        		                        type: "success",
        		                        title: "Your work has been saved",
        		                        showConfirmButton: false,
        		                        timer: 1500
        		                    });
        		   }); //A confirm dialog, with a function attached to the "Confirm"-button...

                   
            			$(document).ready(function(){
                			$(":input").inputmask();
            			});


            			



        		</script>
</body>


<script>

		let pattern_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		let pattern_eng = /[a-zA-Z]/;
		let patton = /[\{\}\[\]\/?.,;:|\)*~`!^\-+<>@\#$%&\\\=\(\'\"]/gi; //특수문자 거르기
		let pattonNum = /[^0-9]/g; //숫자 
		let arr = new Array();
		
// 		alert("test123");
// 		아이디 유효성 검사
		$("#dd_user_id").blur(
						function() {
							let dd_user_id = $('#dd_user_id').val();
							if (!patton.test(dd_user_id)
									&& dd_user_id.replace(/\s/gi, "").length == dd_user_id.length
									&& dd_user_id.length > 3) {
								$.ajax({
											//controller 확인 주소
											url : '${pageContext.request.contextPath}/overlapName?dd_user_id='
													+ dd_user_id,
											type : 'GET',
											success : function(data) {
												if (data === 1) {
													arr[0] = false;
													$("#id_check").text(
															"사용중인 아이디입니다 :p");
													$("#id_check").css("color",
															"red");
													$("#reg_submit").attr(
															"disabled", true);
												} else {
													arr[0] = true;
													$("#id_check").text(
															"사용 가능한 아이디 입니다. :)");
													$("#id_check").css("color",
															"blue");
													$("#reg_submit").attr(
															"disabled", true);
												}
											},
											error : function() {
												console.log("실패");
											}
										});
							} else {
								arr[0] = false;
								$("#id_check").text("공백 & 특수문자가 포함되어 있습니다 :p");
								$("#id_check").css("color", "red");
								$("#reg_submit").attr("disabled", true);
							}
		
						});

		// 이메일 유효성 검사		
		$("#dd_user_email").blur(
				function() {
					let dd_user_email = $('#dd_user_email').val();
					if (dd_user_email.replace(/\s/gi, "").length == dd_user_email.length
							&& dd_user_email.length > 5) {
						$.ajax({
									//controller 확인 주소
									url : '${pageContext.request.contextPath}/overlapName?dd_user_email='
											+ dd_user_email,
									type : 'GET',
									success : function(data) {
										if (data === 1) {
											arr[1] = false;
											$("#email_check").text(
													"사용중인 이메일입니다 :p");
											$("#email_check").css("color",
													"red");
											$("#reg_submit").attr(
													"disabled", true);
										} else {
											arr[1] = true;
											$("#email_check").text(
													"사용 가능한 이메일입니다. :)");
											$("#email_check").css("color",
													"blue");
											$("#reg_submit").attr(
													"disabled", true);
										}

									},
									error : function() {
										console.log("실패");
									}
								});
					} else {
						arr[1] = false;
						$("#email_check").text("공백이 포함되어 있습니다 :p");
						$("#email_check").css("color", "red");
						$("#reg_submit").attr("disabled", true);
					}
				});

				// 비밀번호 유효성검사
				$("#dd_user_pw")
				.blur(
						function() {

							let dd_user_pw = $('#dd_user_pw').val();
							let dd_user_pw_test = $('#dd_user_pw_test').val();

							if (dd_user_pw.replace(/\s/gi, "").length == dd_user_pw.length
									&& dd_user_pw.length > 7
									&& dd_user_pw_test.replace(/\s/gi, "").length == dd_user_pw_test.length
									&& dd_user_pw_test.length > 7) {

								arr[2] = true;
								$("#pw_check").text("사용가능한 비밀번호입니다. :)");
								$("#pw_check").css("color", "blue");
								$("#reg_submit").attr("disabled", true);

							} else {
								arr[2] = false;
								$("#pw_check").text(
										"비밀번호 형식이 아닙니다.(공백,글자 수 제한,비밀번호가 다릅니다) :p");
								$("#pw_check").css("color", "red");
								$("#reg_submit").attr("disabled", true);
							}
						});

// 						// 	회원가입 성공 시
		    			function UserSignUp(){

		    				let form = document.signUp;
		    				for (var i = 0; i < 3; i++) {
		    					if (arr[i] === false || arr.length != 3) {
		    						return;
		    					}
		    				}

		    				result();
// 		    				 Swal.fire(
// 		    		                 {
// 		    		                     type: "success",
// 		    		                     title: "가입해주셔서 감사합니다.",
// 		    		                     showConfirmButton: false,
// 		    		                     timer: 1500
// 		    		                 }).then((value) => {
// 		    		                	 form.submit();
// 		    		                	 location.href="/login";
// 		    		                 });
// 							alert(가입해주셔서 감사합니다 :));
		    				 location.href="/login";
		        			}

		    			function result() {
		    				$.ajax({
		    					async : true,
		    					url : '${pageContext.request.contextPath}/UserSignUp',
		    					type : 'POST',
		    					data : {
		    						dd_user_id : $('#dd_user_id').val(),
		    						dd_user_pw : $('#dd_user_pw').val(),
		    						dd_user_email : $('#dd_user_email').val(),
		    						dd_user_tel : $('#dd_user_tel').val(),
		    						dd_user_brith : $('#dd_user_brith').val(),
		    						dd_user_gender : $('#dd_user_gender').val()
		    					},
		    					success : function(data) {
		    					},
		    					error : function() {
		    						console.log("실패");
		    					}
		    				});
		    			}					
					
</script>
</html>