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



</style>

</head>
<body>


	<div class="card card-info">
		<div>
			<a href='home.jsp'>
			<img src='../resources/dist/img/logo.png' width='100'>
			</a>
		</div><br>
		<div><h3>아이디 찾기</h3></div>
		<!-- /.card-header -->
		<!-- form start -->
		<form class="form-horizontal" action="loginCheck.do" method='post'>
			<div class="card-body">
				<div class="form-group row">
					<label for="userid" class="col-md-8 col-form-label">이메일로 찾기</label>
					<input type="text" class="form-control" id="userid" name='account_Id' placeholder="이메일 입력" required>
				</div>
				
			</div>
			<!-- /.card-body -->
			<div class="card-bottom">
				<button type="submit" class="btn btn-info" id='submit'>아이디 찾기</button><br/><br/>
			</div>
			<!-- /.card-footer -->
			
		</form>
	</div>


</body>
</html>