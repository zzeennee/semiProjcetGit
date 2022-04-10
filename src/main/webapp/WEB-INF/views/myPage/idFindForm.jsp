<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기 | 머신킹덤</title>
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="../resources/dist/css/adminlte.min.css">


<style type="text/css">
body {
	background:#f5f6f7;
}
.head_inner {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	padding-top:100px;
	padding-bottom:70px;
	
}

h3 {
	text-align:center;
	padding-bottom:20px;
}
</style>

</head>
<body>
<header class='header' role='banner'>
	<div class='head_inner'>
		<a href='#'>
			<img src='../resources/dist/img/logo.png' width='100'/>
		</a>
	</div> 
</header>

	<div class="col-4"></div>
	<div class="full">
		<div class="container col-4">
			<div class="area_inputs wow fadeIn">
				<div class="sub_title font-weight-bold">
					<h3>아이디/비밀번호 찾기</h3>
				</div>
				<div style="margin-bottom: 10px;"
					class="custom-control custom-radio custom-control-inline">
					<input type="radio" class="custom-control-input" id="search_1" name="search_total" onclick="search_check(1)" checked="checked">
					<label class="custom-control-label font-weight-bold "	for="search_1">아이디 찾기</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
					<input type="radio" class="custom-control-input" id="search_2" name="search_total" onclick="search_check(2)"> 
					<label class="custom-control-label font-weight-bold" for="search_2">비밀번호 찾기</label>
				</div>
				
				<!-- 아이디 찾기 -->
				<form action="idFindForm">
				<div id="searchI">
					<div class="form-group">
						<label class="font-weight-bold" for="inputName_1">이름</label>
						<div>
							<input type="text" class="form-control" id="inputName_1" name="inputName_1" placeholder="ex) 홍길동">
						</div>
					</div>
					<div class="form-group">
						<label class="font-weight-bold" for="inputPhone_1">휴대폰번호</label>
						<div>
							<input type="text" class="form-control" id="inputPhone_1" name="inputPhone_1" placeholder="ex) 010-1234-5678">
						</div>
					</div>
					<div class="form-group">
						<button id="searchBtn" type="button" onclick="idSearch_click()" class="btn btn-primary btn-block">확인</button>
					<a class="btn btn-danger btn-block"	href="${pageContext.request.contextPath}">취소</a>
					</div>
				</div>
				</form>
				
				
				<!-- 비밀번호 찾기 -->
				<form action="pwFind">
				<div id="searchP" style="display: none;">
					<div class="form-group">
						<label class="font-weight-bold" for="inputId">아이디</label>
						<div>
							<input type="text" class="form-control" id="inputId" name="inputId_2" placeholder="ex) gildong">
						</div>
					</div>
					<div class="form-group">
						<label class="font-weight-bold" for="inputEmail_2">이메일</label>
						<div>
							<input type="email" class="form-control" id="inputEmail_2"	name="inputEmail_2" placeholder="ex) gildong@gmail.com">
						</div>
					</div>
					<div class="form-group">
						<button id="searchBtn2" type="button" class="btn btn-primary btn-block">확인</button>
					<a class="btn btn-danger btn-block"	href="${pageContext.request.contextPath}">취소</a>
				</div>
				</div>
				</form>
			</div>
		</div>
	</div>
<script type="text/javascript">
//체크 버튼에 따라 아이디/비밀번호 기능이 달라진다
function search_check(num) {
	if (num == '1') {
		document.getElementById("searchP").style.display = "none";
		document.getElementById("searchI").style.display = "";	
	} else {
		document.getElementById("searchI").style.display = "none";
		document.getElementById("searchP").style.display = "";
	}
}

</script>
</body>
</html>