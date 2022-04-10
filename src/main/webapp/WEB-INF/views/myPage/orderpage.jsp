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
<title>주문페이지 - 마이페이지 | 머신킹덤</title>

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
							<h1 class="m-0">주문내역 페이지</h1>
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
									<h3 class="card-title">주문내역</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>주문번호</th>
												<th>상품명 (상세보기)</th>
												<th>주소</th>
												<th>금액</th>
												<th>수량</th>
												<th>상태</th>
												<th>주문시간</th>
												<th>수정/취소</th>
											</tr>
										</thead>
										<tbody>
									<!--************* 주문내역 보여주기***************************************************  -->	
											<c:forEach items="${orderList}" var="board">
												<tr>
					    	  <td>${board.orderdata_seq}</td>
				       <td><a href="orderload.do?account_Id=${sessionScope.logname }">${board.product_Name}</a>
				       <input type="hidden" name="account_Id" value="${sessionScope.logname }">
				       </td>
					   <td>${board.account_Addr1},${board.account_Addr2},${board.account_Addr3}</td>
				       <td>${board.pay_price}</td>
					   <td>${board.product_amount}</td>
				       <td>${board.state}</td>
				        <td>${board.order_date}</td>
						<td align="left"><a href="ordermodify.do?account_Id=${sessionScope.logname }">
						<input type="submit" value="수정"  class="btn btn-block bg-gradient-primary btn-sm"></a>
						<a href="canclepage.do?account_Id=${sessionScope.logname }"><input
															value="취소/교환/반품" type="submit"
															class="btn btn-block bg-gradient-danger btn-sm"></a>
													</td>
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
		<%@ include file="../include/myPageInclude/myPageFooter.jsp"%>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED SCRIPTS -->
	<%@ include
		file="../include/myPageInclude/myPageScript/myPageScript.jsp"%>
	<%@ include file="../include/myPageInclude/myPageScript/myPageList.jsp"%>
	

</body>
</html>
