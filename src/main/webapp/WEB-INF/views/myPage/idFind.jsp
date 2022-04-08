<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기 | 머신킹덤</title>
<!-- Bootstrap 3.3.6 -->
<script src="../resources/plugins/jquery/jquery.min.js"></script>
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
		</div><br/>

		<div><h5>아이디 찾기</h5></div>
		
		<form class="form-horizontal" action="loginCheck.do" method='post'>
		 	<div>
		 	</div>




		</form>
		
	</div> 




</body>
</html>