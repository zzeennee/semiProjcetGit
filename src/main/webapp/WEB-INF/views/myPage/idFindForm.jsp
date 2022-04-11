<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기 | 머신킹덤</title>
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="../resources/dist/css/adminlte.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <!-- AdminLTE App -->
<!--<script src="../resources/dist/js/adminlte.min.js"></script> -->

<style type="text/css">

.card-info {
	background:#f5f6f7;
	display: flex;
	flex-direction: column;
	width: 100%;
	height: 100vh;
	justify-content: center;
	align-items: center;
	box-sizing: border-box; margin:0;
	
}

.card-header {
	background: none;
}

.card-bottom {
	display: flex;
	flex-direction: column;
	align-items: center;
}


.btn-info {
	padding: 6px 120px;
	background:#00c2cb;
	border: #00c2cb;
}

a:link, a:visited,  a:hover, a:active
{
    color: #AAAA99;
    text-decoration: none;
}

</style>

</head>
<body>


	<div class="card card-info">
		<!-- <div class="card-header">
			<img src='../resources/dist/img/logo.png' width='200' height='200'>
			<h3 class="card-title">로그인</h3>
		</div> -->
		<div>
			<a href='/'>
			<img src='../resources/dist/img/logo.png' width='80'>
			</a>
		</div>
		<!-- /.card-header -->
		<!-- form start -->
		<form class="form-horizontal" action="idConfirm.do" method='post' id='form' name='form'>
			<div class="card-body">
				<div class="form-group row">
					<label for="account_Name" class="col-md-8 col-form-label">이름</label>
					<input type="text" class="form-control" id="account_Name" name='account_Name' placeholder="이름을 입력해주세요.">
				</div>
				<div class="form-group row">
					<label for="account_Tel" class="col-md-8 col-form-label">전화번호</label>
					<input type="text" class="form-control" id="account_Tel" name='account_Tel' placeholder="전화번호를 입력해주세요.">
				</div>
		
			</div>
			<!-- /.card-body -->
			<div class="card-bottom">
				<button type="submit" class="btn btn-info" id='submit'>찾기</button><br/>
			</div>
			<br/>
			<!-- /.card-footer -->
			
		</form>
		<div>
		<a href='/myPage/pwFindForm.do'>비밀번호 찾기&nbsp;&nbsp;&nbsp;|</a>
		<a href='/myPage/login.do'>&nbsp;&nbsp;로그인</a>
		</div><br/><br/>
			<div>
				<a href='signup.do'>회원가입</a>
			</div>
	</div>


<script type="text/javascript">
window.onload = finction() {
function idFind(form) {
	if(isNowLoading()) {
		alert('처리중입니다.');
		return;
	}
	
	form.account_Name.value = form.account_Name.value.trim();
	form.account_Name.value = form.account_Name.value.replaceAll('-', '');
	form.account_Name.value = form.account_Name.value.replaceAll('_', '');
	form.account_Name.value = form.account_Name.value.replaceAll(' ', '');
	
	if(form.account_Name.value==0) {
		form.account_Name.focus();
		alert('이름을 입력해주세요.');
		
		return;
	}
	
	form.account_Tel.value = form.account_Tel.value.trim();
	form.account_Tel.value = form.account_Tel.value.replaceAll(' ', '');
	
	if(form.account_Tel.value==0) {
		form.account_Email.focus();
		alert('이메일을 입력해주세요.');
		
		return;
	}
	
	form.submit();
	startLoading();
}
}
</script>
</body>
</html>