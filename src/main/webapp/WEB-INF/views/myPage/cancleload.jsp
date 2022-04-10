<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


<title>주문 상태 변경 - 마이페이지 | 머신킹덤</title>

<%@ include file="../include/myPageInclude/myPageCSS.jsp"%>

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
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">취소/교환/반품 상태표시 페이지</h1>
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
									<h3 class="card-title">취소/교환/반품 표시</h3>
								</div>
								<!-- /.card-header -->
								<form class="form-horizontal" action="cancle.do" method='get'>
									<input type="hidden" name="account_Id" value="${sessionScope.logname }">
									<div class="card-body">
										<table id="example1"
											class="table table-bordered table-striped">
											<thead>
												<tr>
													<th>주문번호</th>
													<th>상품명</th>
													<th>상태</th>
													<th>변경 사유</th>
												</tr>
											</thead>
											<!--*********************** 취소/교환 보여주기 ********************************************************** -->
											<tbody>
												<c:forEach items="${cancleList }" var="board">
													<tr>
														<td>${board.orderdata_seq}</td>
														<td>${board.product_Name}</td>
														<td>${board.state}</td>
														<td>${board.user_require}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</form>
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
		<%@ include file="../include/myPageInclude/myPageFooter.jsp"%>
	</div>
	<!-- ./wrapper -->
	<!-- REQUIRED SCRIPTS -->
	<%@ include
		file="../include/myPageInclude/myPageScript/myPageScript.jsp"%>
	<%@ include file="../include/myPageInclude/myPageScript/myPageList.jsp"%>