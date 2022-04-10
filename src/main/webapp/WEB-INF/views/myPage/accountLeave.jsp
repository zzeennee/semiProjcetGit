<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴 | 머신킹덤</title>
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



</style>

</head>
<body>


	<div class="card card-info">
		<!-- <div class="card-header">
			<img src='../resources/dist/img/logo.png' width='200' height='200'>
			<h3 class="card-title">로그인</h3>
		</div> -->
		<div>
			<a href='home.jsp'>
			<img src='../resources/dist/img/logo.png' width='200'>
			</a>
		</div>
		<!-- /.card-header -->
		<!-- form start -->
		<form class="form-horizontal">
			<div class="card-body">
				<div class="form-group row">
					<div class="h3">회원탈퇴됐음</div>
				</div>
			</div>
			<!-- /.card-body -->
			<div class="card-bottom">
				<div>
				<a href='/'><button type="button" class="btn btn-info">홈으로</button></a>
				</div>
			</div>
			<!-- /.card-footer -->
		</form>
	</div>
</body>
</html>