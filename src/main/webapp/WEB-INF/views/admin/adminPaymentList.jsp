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
<title>결제 목록 | 관리자 페이지</title>

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
							<h1 class="m-0">결제 목록</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="adminOrderList.do">주문
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
												<th width="20px">결제 번호</th>
												<th width="30px">결제자 이름</th>
												<th width="30px">결제 방식</th>
												<th width="120px">결제자 이메일</th>
												<th width="60px">결제 금액</th>
												<th width="60px">결제 날짜</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${admin_PayList }" var="payList">
												<!-- 프라퍼티이름 변경 -->
												<tr>
													<td>${payList.pay_number }</td>
													<td>${payList.pay_name }</td>
													<td>${payList.pay_select }</td>
													<td>${payList.pay_email }</td>
													<td>${payList.pay_price }</td>
													<td>${payList.pay_date }</td>
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
</body>
</html>
