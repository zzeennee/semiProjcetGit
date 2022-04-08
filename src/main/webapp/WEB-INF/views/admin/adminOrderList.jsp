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
<title>주문 목록 | 관리자 페이지</title>

<%@ include file="../include/adminInclude/adminCSS.jsp"%>

</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Navbar -->
		<%@ include file="../include/adminInclude/adminNavbar.jsp"%>

		<!-- Sidebar -->
		<%@ include file="../include/adminInclude/adminSidebar.jsp"%>

		<!-- main -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">주문 목록</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="adminPaymentList.do">결제
										목록으로</a></li>
							</ol>
						</div>
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
									<h3 class="card-title"></h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th width="30px">주문 번호</th>
												<th width="30px">결제 번호</th>
												<th width="40px">주문 아이디</th>
												<th width="135px">주문자 정보</th>
												<th width="135px">받는자 정보</th>
												<th width="135px">주문 요청사항</th>
												<th width="40px">주문 금액</th>
												<th width="60px">주문 날짜</th>
												<th width="30px">주문 상태</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${admin_OrderList }" var="order">
												<!-- 프라퍼티이름 변경 -->
												<tr>
													<td>${order.orderdata_seq }</td>
													<td>${order.pay_number }</td>
													<td>${order.account_Id }</td>
													<td>
														<div>
															<i class="fa fa-plus-square" data-toggle="collapse"
																href="#collapseExample" aria-expanded="false"
																aria-controls="collapseExample"></i> <span
																style="margin-left: 10px;">${order.sender_name }</span>
														</div>
														<div class="collapse" id="collapseExample">
															<div class="well">이메일 : ${order.sender_email }</div>
															<div class="well">연락처 : ${order.sender_tel }</div>
														</div>
													</td>
													<td>
														<div>
															<i class="fa fa-plus-square" data-toggle="collapse"
																href="#collapseExample" aria-expanded="false"
																aria-controls="collapseExample"></i> <span
																style="margin-left: 10px;">${order.receiver_name }</span>
														</div>
														<div class="collapse" id="collapseExample">
															<div class="well">이메일 : ${order.receiver_email }</div>
															<div class="well">연락처 : ${order.receiver_tel }</div>
														</div>
													</td>
													<td>${order.user_require }</td>
													<td>${order.price }</td>
													<td>${order.order_date }</td>
													<td>${order.state }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
		<!-- main end -->
		<!-- Main Footer -->
		<%@ include file="../include/adminInclude/adminFooter.jsp"%>
	</div>
	<!-- ./wrapper -->
	<!-- REQUIRED SCRIPTS -->
	<%@ include
		file="../include/adminInclude/adminPageScript/adminScript.jsp"%>
	<!-- Page specific script -->
	<%@ include
		file="../include/adminInclude/adminPageScript/adminList.jsp"%>
	<script>
		// Collapse로 화면이 펼치기 전에 호출
		$('.collapse').on('show.bs.collapse', function() {
			// icon을 + 마크로 변경한다.
			var target = $("[href='#" + $(this).prop("id") + "']");
			target.removeClass("fa-plus-square");
			target.addClass("fa-minus-square");
		});
		// Collapse로 화면이 펼친 후에 호출
		$('.collapse').on('shown.bs.collapse', function() {
			// icon을 + 마크로 변경한다.
			var target = $("[href='#" + $(this).prop("id") + "']");
			target.removeClass("fa-plus-square");
			target.addClass("fa-minus-square");
		});
		// Collapse로 화면에 접기 전에 호출
		$('.collapse').on('hide.bs.collapse', function() {
			// icon을 - 마크로 변경한다.
			var target = $("[href='#" + $(this).prop("id") + "']");
			target.removeClass("fa-minus-square");
			target.addClass("fa-plus-square");
		});
		// Collapse로 화면에 접고 난 후에 호출
		$('.collapse').on('hidden.bs.collapse', function() {
			// icon을 - 마크로 변경한다.
			var target = $("[href='#" + $(this).prop("id") + "']");
			target.removeClass("fa-minus-square");
			target.addClass("fa-plus-square");
		});
	</script>
</body>
</html>
