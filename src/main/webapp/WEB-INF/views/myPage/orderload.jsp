<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>주문상세보기 - 마이페이지 | 머신킹덤</title>

<%@ include file="../include/myPageInclude/myPageCSS.jsp"%>
<style>
#imgSize{
 border-radius: 4px;
 width: 75px;
}

</style>

</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Navbar -->
		<%@ include file="../include/myPageInclude/myPageNavbar.jsp"%>
		<!-- Navbar end -->

		<!-- Sidebar -->
		<%@ include file="../include/myPageInclude/myPageSidebar.jsp"%>
		<!-- Sidebar end -->

		<div class="content-wrapper">
		
		<!-- @@@@@@@ account_Id @@@@@@@@@@@@@@ -->
		<form action="">
		<input type="hidden" name="account_Id" value="${sessionScope.logname }">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">주문상세 보기</h1>
						</div>
						<!-- /.col -->
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->
			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<!-- /.card -->
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">주문정보</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>주문번호</th>
												<th>상품이미지</th>
												<th>상품명</th>
												<th>수량</th>
												<th>금액</th>
												<th>주소</th>
												<th>상태</th>
											</tr>
										</thead>
										<tbody>
												<tr>
				             <td>${board.orderdata_seq}</td>
		 					<td><img id='imgSize' src="../resources/upload/default.jpg" alt="${board.product_realMainImg}"></td>
							 <td>${board.product_Name}</td>
							 <td>${board.product_amount}</td>
							 <td>${board.pay_price}</td>
					         <td>${board.account_Addr1},${board.account_Addr2},${board.account_Addr3}</td>
							  <td>${board.state}</td>
												</tr>
										</tbody>
									</table>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
							<!-- /.card -->
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">결제정보</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>결제자 이름</th>
												<th>결제금액</th>
												<th>결제시간</th>
												
											</tr>
										</thead>
										<tbody>
												<tr>
					        <td>${board.pay_name}</td>
							<td>${board.pay_price}</td>
							<td>${board.pay_date}</td>
												</tr>
										</tbody>
									</table>
								</div>
								<!-- /.card-body -->
								</div>
								
								<!-- /.card -->
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">배송정보</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table class="table table-bordered table-striped">
										<thead>
											<tr>
												
								
										<th>받는분 이름</th>
									    <th>받는분 주소</th>
									  <th>배송요청사항</th>
											</tr>
										</thead>
										<tbody>
												<tr>
													<td>${board.receiver_name}</td>
													<td>${board.receiver_zonecode},${board.receiver_address},${board.receiver_daddress}</td>
													<td>${board.user_require}</td>
												</tr>
										</tbody>
									</table>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
							<!-- /.card -->
							
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<div class="row">
					<div class="col-6">
						<a href="orderpage.do?account_Id=${sessionScope.logname }"><input type="button" name="submit" id="submit"
							value="확인" class="btn btn-success float-right"></a>
					</div>
				</div>
			</form>
			<!-- /.content -->
		</div>
		<!-- main end -->

		<!-- Main Footer -->
		<%@ include file="../include/myPageInclude/myPageFooter.jsp"%>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED SCRIPTS -->
	<%@ include
		file="../include/myPageInclude/myPageScript/myPageScript.jsp"%>
	<%@ include file="../include/myPageInclude/myPageScript/myPageList.jsp"%>


</body>
</html>
