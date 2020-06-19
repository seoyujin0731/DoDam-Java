<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko-KR">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>마스크마스크넷</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

  <!-- Custom styles for this template -->
  <link href="css/business-frontpage.css" rel="stylesheet">
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

  <script type="text/javascript">
		  function filter(){

			var value, name, item, i;

			value = document.getElementById("value").value.toUpperCase();
			item = document.getElementsByClassName("col-md-4");

			for(i=0;i<item.length;i++){
			  name = item[i].getElementsByClassName("card-title");
			  if(name[0].innerHTML.toUpperCase().indexOf(value) > -1){
				item[i].style.display = "flex";
			  }else{
				item[i].style.display = "none";
			  }
			}
		  }
		  
		  function searchByLocation() {	//searchByLocation
		  if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(showPosition, showError);
			} else { 
				alert('죄송합니다. 접속하신 환경에서는 지원하지 않습니다.');
			}
		  }
		  
		  function showPosition(position) {
			var x = position.coords.latitude;
			var y = position.coords.longitude
			document.getElementById('demo1').value = x;
			document.getElementById('demo2').value = y;
			document.getElementById('demo3').value = "조회 중..";
			$('#searchByLocation').modal('show');
		  }
		  
		  function showError(error) {
		  switch(error.code) {
			case error.PERMISSION_DENIED:
			  swal({
			  text: "위치 정보로 조회하기 위해서 새로운 창을 실행합니다.",
			  icon: "info",
			  buttons: true,
			  dangerMode: false,
			})
			.then((willDelete) => {
			  if (willDelete) {
				swal("감사합니다! 새로운 창에서 위치 정보로 조회하기 버튼을 다시 눌러주세요!", {
				  icon: "success",
				});
				setTimeout(function() {
					function openInNewTab(url) {
						var win = window.open(url, '_blank');
						win.focus();
					}
					openInNewTab('https://maskmask.net/');
				}, 700);
			  }
			});
			  $('#searchByLocation').modal('hide');
			  break;
			case error.POSITION_UNAVAILABLE:
			  alert("위치정보를 사용할 수 없습니다.");
			  $('#searchByLocation').modal('hide');
			  break;
			case error.TIMEOUT:
			  alert("위치 서비스를 불러오는데 시간이 초과했습니다.");
			  $('#searchByLocation').modal('hide');
			  break;
			case error.UNKNOWN_ERROR:
			  alert("알 수 없는 오류가 발생했습니다.");
			  $('#searchByLocation').modal('hide');
			  break;
		  }
		}
  </script>
	<!-- 마스크 구매방법 -->
	<div class="modal fade" id="mask5" tabindex="-1" role="dialog"
		aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myLargeModalLabel">마스크 5부제 알아보기</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
				</div>
				<div class="modal-body">
					<p>마스크 5부제는 정부가 3월 5일, 마스크 수요 금증에
					대응하기 위해 발표한 수급 안정화 대책에 포함되어있는 정책입니다.
					</p><p>마스크 5부제가 3월 9일부터 시행되면서 출생연도 끝자리를
					기준으로 1과 6이면 월요일, 2와 7이면 화요일, 3과 8이면
					수요일, 4와 9이면 목요일, 5와 0이면 금요일에만 마스크를
					구매할 수 있습니다.
					</p><p>주중에 구매하지 못한 경우 주말에 구매할 수 있습니다.
					</p><p>굿바이코로나 공적 마스크 재고현황 안내 카드 위에서 매일 마스크 구매가능한 대상이 업데이트 됩니다.</p>
					<p align="center"><strong><u>- - - [본인확인 방법 및 대리구매 방법] - - -</u></strong></p>
					<p><b>대리구매 대상:</b> 장애인, 장기요양급여 수급자, 2010년 포함 그 이후 출생한 어린이, 
					1940년 포함 그 이전 출생한 어르신</p>
					<p><b>대리구매 방식:</b> 주민등록상 동거인(장애인은 대리인)이 대리구매 대상자(어린이 등)의 
					5부제 요일에 구매 가능</p>
					<p><b>본인확인 방법:</b> <span style="color: #006dd7;">성인[주민등록증, 
					운전면허증 또는 여권], <span style="color: #009a87;">미성년자
					[여권, 학생증+주민등록등본]</span></span><span style="color: #009a87;">,</span>
					<span style="color: #8a3db6;">법정대리인과 함께 방문한 미성년자[법정대리인의 
					신분증+주민등록등본]</span>, <span style="color: #f3c000;">장애인[대리인의
					장애인등록증 지참],</span> <span style="color: #ee2323;">외국인[건강보험증
					+외국인등록증]</span></p>								
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->	
	<!-- searchBySearch -->
	<div id="searchBySearch" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">주소 입력</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
				</div>
				<div class="modal-body">
				<div class="alert alert-info" role="alert">
					본 서비스는 <strong><u>시도/시군구 방식</u></strong>으로 조회됩니다.
					<br><br>
					"서울특별시 강남구"의 공적 마스크 재고를 확인하려면 <strong>"서울특별시 강남구"</strong>를 입력하고 
					<strong>"서울특별시 강남구"가 포함되어있는(세부주소 상관X) 도로명주소 또는 지번 주소를</strong> 눌러주세요. 
				</div>
				<div id="wrap" style="display:none;border:1px solid;width:100%;height:200px;margin:5px 0;position:relative">
					</div>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	<!-- searchBySearchAfter -->
	<div id="searchBySearchAfter" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">조회 지역 확인</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
				</div>
				<div class="modal-body">
				<div class="alert alert-success" role="alert">
					<h3><strong>★ 조회 지역 확인!</strong></h3>
					본 서비스는 <strong><u>시도/시군구 방식</u></strong>으로 조회됩니다.
					<br><br>
					선택하신 주소입니다. 조회하고자 하시는 주소가 맞으면 검색하기 버튼을, 주소가 틀리다면 검색창을 다시 눌러주세요.
				</div>				
				<form method="post" action="/list">
				<div class="input-group">
				  <input autocomplete="off" type="text" onclick="sample3_execDaumPostcode(); searchBySearchReSearch();" value="" name="sigungu" placeholder="지역 검색 (ex: 서울특별시 강남구)" id="searchInput" 	class="form-control is-valid" style="background-color: #ffffff;" readonly/>
				  <input value="searchBySearch" name="method" style="display:none">
				<div class="input-group-append">
				</div>
				</div>
								  <button type="submit" style="width:100%" class="btn waves-effect waves-light btn-success">검색하기</button>

				</form>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->	
	<!-- searchByLocation -->
	<div id="searchByLocation" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">위치정보로 조회하기</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
				</div>
				<div class="modal-body">
				<div class="alert alert-success" role="alert">
					<h3><strong>★ 위치 정보 조회 완료!</strong></h3>
					본 서비스는 <strong><u>사용자의 위치 기반에서 반경 1km 이내</u></strong>에서 조회됩니다.
					<br><br>
					위치 정보 서비스가 부정확하다면 검색해서 조회해보세요.
				</div>
				<form method="post" action="/test1/list">
				<div class="input-group">			
				  <input autocomplete="off" type="text" value="" name="demo1" placeholder="X" id="demo1" style="display:none" class="form-control is-valid" style="background-color: #ffffff;" readonly/>
				  <input autocomplete="off" type="text" value="" name="demo2" placeholder="X" id="demo2" style="display:none" class="form-control is-valid" style="background-color: #ffffff;" readonly/>
				  <input value="searchByLocation" name="method" style="display:none">
				<div class="input-group-append">
				</div>
				</div>
				<button type="submit" style="width:100%"
					  class="btn waves-effect waves-light btn-success">검색하기</button>
				</form>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->	
	<!-- 다음 우편번호 API -->
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		// 우편번호 찾기 찾기 화면을 넣을 element
		var element_wrap = document.getElementById('wrap');

		function foldDaumPostcode() {
			// iframe을 넣은 element를 안보이게 한다.
			element_wrap.style.display = 'none';
		}

		function sample3_execDaumPostcode() {
			// 현재 scroll 위치를 저장해놓는다.
			var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
			new daum.Postcode({
				oncomplete: function(data) {
					// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var addr = ''; // 주소 변수
					var extraAddr = ''; // 참고항목 변수

					//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						addr = data.roadAddress;
					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						addr = data.jibunAddress;
					}

					// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
					if(data.userSelectedType === 'R'){
						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
							extraAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if(data.buildingName !== '' && data.apartment === 'Y'){
							extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if(extraAddr !== ''){
							extraAddr = ' (' + extraAddr + ')';
						}
					}
					
					// 우편번호와 주소 정보 POST
					var j1 = data.sido;
					if(j1 == '서울'){
						var j1 = '서울특별시';
					} else if (j1 == '강원'){
						var j1 = '강원도';
					} else if (j1 == '경기'){
						var j1 = '경기도';
					} else if (j1 == '경남'){
						var j1 = '경상남도';
					} else if (j1 == '경북'){
						var j1 = '경상북도';
					} else if (j1 == '광주'){
						var j1 = '광주광역시';
					} else if (j1 == '대구'){
						var j1 = '대구광역시';
					} else if (j1 == '대전'){
						var j1 = '대전광역시';
					} else if (j1 == '부산'){
						var j1 = '부산광역시';
					} else if (j1 == '울산'){
						var j1 = '울산광역시';
					} else if (j1 == '인천'){
						var j1 = '인천광역시';
					} else if (j1 == '전남'){
						var j1 = '전라남도';
					} else if (j1 == '전북'){
						var j1 = '전라북도';
					} else if (j1 == '제주특별자치도'){
						var j1 = '제주특별자치도';
					} else if (j1 == '충남'){
						var j1 = '충청남도';
					} else if (j1 == '충북'){
						var j1 = '충청북도';
					} else {
						var j1 = '확인중';
					}

					var j2 = data.sigungu;
					var j3 = j1.concat(" ", j2);
					document.getElementById('searchInput').value = j3;
					$('#searchBySearch').modal('hide');
					$('#searchBySearchAfter').modal('show');

					// iframe을 넣은 element를 안보이게 한다.
					// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
					element_wrap.style.display = 'none';

					// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
					document.body.scrollTop = currentScroll;
				},
				// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
				onresize : function(size) {
					element_wrap.style.height = size.height+'px';
				},
				width : '100%',
				height : '100%'
			}).embed(element_wrap);

			// iframe을 넣은 element를 보이게 한다.
			element_wrap.style.display = 'block';
		}
		
		function searchBySearchReSearch() {
		$('#searchBySearchAfter').modal('hide');
		$('#searchBySearch').modal('show');
		}
	</script>
	
</head>
			
<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
      <a class="navbar-brand" href=""><strong>마스크마스크넷</strong></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="">공적 마스크 재고 조회
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" target="_blank" href="https://corona-19.kr">코로나19 실시간 정보 얻기</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" target="_blank" href="https://github.com/dhlife09/maskmask">GitHub</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Header -->
  <br>

  <!-- Page Content -->
  <div class="container">

    <div class="row">
      <div class="col-md-8 mb-5">
			<div class="card">
				<div class="card-header">         
				<h4 class="card-title mb-0">
				<small id="name13"
				class="badge badge-default badge-warning form-text text-white">BETA
				</small> 공적 마스크 재고현황
				</h4>
				</div>
				<div class="card-body">
							<u><strong>★</strong> 20.05.13(수) 오늘 마스크를 구매할 수 있는 출생연도 끝자리는 <strong>3,8</strong> 입니다.</u><br>			</p>
					<div class="btn-list">
					<br>
						<button style="width:100%" name="demo3" id="demo3" type="button" onClick="searchByLocation()" class="btn btn-success"><i class="xi-gps"></i>
							위치정보로 조회하기
						</button>
						<br>
						<br>
						<button style="width:100%" type="button" data-toggle="modal" data-target="#searchBySearch" class="btn btn-info" onclick="sample3_execDaumPostcode()"><i class="xi-search"></i>
							검색해서 조회하기
						</button>
						</div>
						<br>
						<br>
						
			<div class="alert alert-danger" role="alert">
				<i class="dripicons-danger mr-2"></i><strong><u>위치선택 필요</u> - </strong>검색해서 조회하기 또는 위치정보로 조회하기 버튼을 눌러서 위치를 선택해 주세요. 위치는 저장되지 않습니다.
			</div><!-- <div class="alert alert-success" role="alert"><strong><u></u></strong>에서 0건을 찾았습니다!</div>-->				</div>
			</div>
      </div>
      <div class="col-md-4 mb-5">
		<div class="alert alert-success" role="alert">
			<strong><i class="xi-info"></i> 수량 표기 기준:</strong>
			<span style="color: #009a87;"><small id="name13"
			class="badge badge-default badge-success form-text text-white">많음
			</small>(100개 이상)</span><span style="color: #009a87;">
					</span><span style="color: #f3c000;"><small id="name13"
			class="badge badge-default badge-warning form-text text-white">보통
			</small>(30~99개)</span><span style="color: #f3c000;">
					</span><span style="color: #ee2323;"><small id="name13"
			class="badge badge-default badge-danger form-text text-white">적음
			</small>(2~29개)</span><span style="color: #ee2323;">
					</span><span style="color: #9d9d9d;"><small id="name13"
			class="badge badge-default badge-secondary form-text text-white">매진
			</small>(0~1개)</span> <small id="name13"
				class="badge badge-default badge-primary form-text text-white">확인중
			</small><span> : 수량이 확인중인 경우</span>
		</div>
		<button type="button" style="width: 100%" data-toggle="modal" data-target="#mask5" class="btn btn-secondary""><i class="ti-book"></i>
			마스크 5부제 알아보기
		</button>
		<br>
		<br>
		<p>해당 정보는 건강보험심사평가원에서 실시간으로 가져옵니다. 5-10분정도 실제 상황과 차이가 있을 수 있습니다.</p>
		<p>코로나19 확산 방지를 위해 전국에서 노력해주시는 모든분들께 진심으로 감사드립니다!</p>
      </div>
    </div>
    <!-- /.row -->

    <div class="row">
		    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; 굿바이코로나(Goodbye-Corona), 마스크마스크넷(MASKMASK.NET) All Rights Reserved.</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
