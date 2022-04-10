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
		<form class="form-horizontal" action="idConfirm.do" method='post'>
			<div class="card-body">
				<div class="form-group row">
					<label for="acount_Name" class="col-md-8 col-form-label">이름</label>
					<input type="text" class="form-control" id="acount_Name" name='acount_Name' placeholder="이름">
				</div>
				<div class="form-group row">
					<label for="account_Tel" class="col-md-8 col-form-label">전화번호</label>
					<input type="text" class="form-control" id="account_Tel" name='account_Tel' placeholder="전화번호">
				</div>
		
			</div>
			<!-- /.card-body -->
			<div class="card-bottom">
				<button type="submit" class="btn btn-info" id='submit'>확인</button><br/>
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
//아이디 & 스토어 값 저장하기 위한 변수
var idV = "";
// 아이디 값 받고 출력하는 ajax
var idSearch_click = function(){
	$.ajax({
		type:"POST",
		url:"${pageContext.request.contextPath}/myPage/idFindForm?account_Name="
				+$('#account_Name').val()+"&account_Tel="+$('#account_Tel').val(),
		success:function(data){
			if(data == 0){
				$('#id_value').text("회원 정보를 확인해주세요!");	
			} else {
				$('#id_value').text(data);
				// 아이디값 별도로 저장
				idV = data;
			}
		}
	});
}

</script>
</body>
</html>