<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제성공 | 머신킹덤</title>
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="../resources/dist/css/adminlte.min.css">

<!-- AdminLTE App -->
<!--<script src="../resources/dist/js/adminlte.min.js"></script> -->

<style type="text/css">
.card-info {
	background: #f5f6f7;
	display: flex;
	flex-direction: column;
	width: 100%;
	justify-content: center;
	align-items: center;
	box-sizing: border-box;
	margin: 0;
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
	background: #00c2cb;
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
			<a href='home.jsp'> <img src='../resources/dist/img/logo.png'
				width='200'>
			</a>
		</div>
		<!-- /.card-header -->
		<!-- form start -->
		<form class="form-horizontal" action="/paymentOrder/payment.do" method='post'>
		<div class="card card-info">
						<div class="card-header">
							<h3 class="card-title">주문결과</h3>
						</div>
						<div class="card-body">
							<label>주문이 완료되었습니다.</label> <br></br> <label>보내시는 분</label>
							<hr />
							<div class="input-group mb-3">

								<label>고객명: ${reUser.sender_name }</label>
							</div>
							<hr />

							<div class="input-group mb-3">
								<label>전화번호: ${reUser.sender_tel }</label>
							</div>
							<hr />


							<br></br> <label>받으시는 분</label>
							<hr />
							<div class="input-group mb-3">
								<label>수신자: ${reUser.receiver_name }</label>
							</div>
							<hr />

							<div class="input-group mb-3">
								<label>이메일: ${reUser.receiver_email }</label>
							</div>
							<hr />


							<div class="input-group mb-3">
								<label>전화번호: ${reUser.receiver_tel }</label>
							</div>
							<hr />


							<div class="input-group">
								<label>주소: ${reUser.receiver_address },
									${reUser.receiver_daddress }</label>
							</div>
							<hr />

							<br></br>
							<hr />
							<div class="input-group mb-3">
								<label>총 결제금액: ${reUser.price}원</label>
							</div>

							<div class="card-footer">

								<button type="submit" class="btn btn-info float-right">완료</button>
							</div>



							<!-- /.col-lg-6 -->

							<!-- /input-group -->
						</div>


					</div>
			<!-- /.card-body -->
		</form>
	</div>
	<!-- jQuery -->
	<script src="../resources/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="../resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="../resources/dist/js/adminlte.min.js"></script>

</body>
</html>