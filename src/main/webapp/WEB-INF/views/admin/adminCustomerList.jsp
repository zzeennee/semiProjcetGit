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
<title>회원 목록 | 관리자 페이지</title>

<%@ include file="../include/adminInclude/adminCSS.jsp"%>
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Navbar -->
		<%@ include file="../include/adminInclude/adminNavbar.jsp"%>

		<!-- Sidebar -->
		<%@ include file="../include/adminInclude/adminSidebar.jsp"%>

		<!-- main -->
		<div class="wrapper">
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<div class="content-header">
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-6">
								<h1 class="m-0">회원 목록</h1>
							</div>
							<!-- /.col -->
							<div class="col-sm-6">
								<ol class="breadcrumb float-sm-right">
									<li class="breadcrumb-item"><a href="adminCustomerList.do">새로
											고침</a></li>
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
										<table id="example1"
											class="table table-bordered table-striped">
											<thead>
												<tr>
													<th width="60px">회원 번호</th>
													<th width="60px">회원 아이디</th>
													<th width="60px">회원 이름</th>
													<th width="110px">회원 이메일</th>
													<th width="110px">회원 전화번호</th>
													<th width="400px">회원 주소</th>
													<th width="100px">회원 가입날짜</th>
													<th width="60px">회원 상태</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${admin_CustomerList }"
													var="admin_customerList">
													<!-- 프라퍼티이름 변경 -->
													<tr>
														<td>${admin_customerList.account_Seq }</td>
														<td>${admin_customerList.account_Id }</td>
														<td>${admin_customerList.account_Name }</td>
														<td>${admin_customerList.account_Email }</td>
														<td>${admin_customerList.account_Tel }</td>
														<td>우편번호 : ${admin_customerList.account_Addr1 } 주소 :
															${admin_customerList.account_Addr2 } 상세주소 :
															${admin_customerList.account_Addr3 }</td>
														<td>${admin_customerList.account_Date }</td>
														<td>
															<c:choose>
																<c:when
																	test="${admin_customerList.account_Leave eq '1' && admin_customerList.account_Status eq '1'}">
																	회원
																</c:when>
																<c:when
																	test="${admin_customerList.account_Leave eq '1' && admin_customerList.account_Status eq '0'}">
																	관리자
																</c:when>
																<c:otherwise>
																	회원탈퇴
																</c:otherwise>
															</c:choose>
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
			<!-- /.content-wrapper -->
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
