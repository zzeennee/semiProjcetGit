<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기 | 머신킹덤</title>
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="../resources/dist/css/adminlte.min.css">

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

.btn .btn-info {
	width:299.33px;
}

.h4 {
	text-align:center;
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
			<img src='../resources/dist/img/logo.png' width='100'>
			</a>
		</div>
		<!-- /.card-header -->
		<!-- form start -->
		<form class="form-horizontal" action="loginCheck.do" method='post'>
			
			<div class="card-body">
			<h4 class='h4'>아이디 찾기</h4>
				<div class="form-group row">
					<label for="userid" class="col-md-8 col-form-label">이름</label>
					<input type="text" class="form-control" id="userName" name='account_Name' placeholder="이름" required>
				</div>
				<div class="form-group row">
					<label for="inputPassword3" class="col-md-8 col-form-label">이메일</label>
					<input type="password" class="form-control" id="userPw" name='account_Email' placeholder="이메일" required>
					<p class="check" id="check">${check}</p><br/>
				</div>
				
			</div>
			<!-- /.card-body -->
			<div class="card-bottom">
				<a href=''><button type="button" class="btn btn-info">아이디 찾기</button></a>
			</div>
			<br/>
			<!-- /.card-footer -->
			
		</form>
		<div>
		<a href='/myPage/pwFind.do'>비밀번호 찾기&nbsp;&nbsp;|</a>
		<a href='/myPage/login.do'>&nbsp;&nbsp;로그인&nbsp;&nbsp;|</a>
		<a href='/myPage/signup.do'>&nbsp;&nbsp;회원가입</a>
		</div><br/><br/>
			
	</div>

	<script type="text/javascript">
	$("#userName").focusout(function(){
			
	     if($('#userName').val() == ""){
	   		$('#check').text('이름을 입력해주세요.');
	   	  	$('#check').css('color', 'red');
	   
	     }else{
	    	 $('#check').hide();
	     }
	     });
	     
 		$("#email").focusout(function(){
	     if($('#email').val() == ""){
	   		$('#check').text('이메일을 입력해주세요');
	   	  	$('#check').css('color', 'red');
	     }else{
	    	 $('#check').hide();
	     }
	     });
	</script>
</body>
</html>