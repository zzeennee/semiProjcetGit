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
<title>상품 수정 | 관리자 페이지</title>

<%@ include file="../include/adminInclude/adminCSS.jsp"%>

</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Navbar -->
		<%@ include file="../include/adminInclude/adminNavbar.jsp"%>

		<!-- Sidebar -->
		<%@ include file="../include/adminInclude/adminSidebar.jsp"%>

		<form id="frm" name="formBoard" id="formBoard"
			enctype="multipart/form-data" method="post">
			<input name="product_Seq" type="hidden"
				value="${admin_Product.product_Seq}" />
			<!-- main -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-6">
								<h1>상품 수정 및 삭제</h1>
							</div>
							<div class="col-sm-6">
								<ol class="breadcrumb float-sm-right">
									<li class="breadcrumb-item"><a href="adminProductList.do">상품
											목록</a></li>
								</ol>
							</div>
						</div>
					</div>
					<!-- /.container-fluid -->
				</section>

				<!-- Main content -->
				<section class="content">
					<div class="row">
						<div class="col-md-6">
							<div class="card card-primary">
								<div class="card-header">
									<h3 class="card-title">상품 수정 및 삭제</h3>
								</div>
								<div class="card-body">
									<div class="form-group">
										<label for="inputName">상품명</label> <input type="text"
											id="inputName" class="form-control" name="product_Name"
											value="${admin_Product.product_Name}" required> <label
											for="inputPssword">비밀번호</label> <input type="Password"
											id="inputPssword" class="form-control"
											name="product_Password" required>
									</div>
									<div class="form-group">
										<label for="inputFile">기존 이미지</label> <input type="text"
											class="form-control" name="product1_File"
											value=${admin_Product.product_MainImg }> <label
											for="inputFile">상품 대표 이미지 첨부</label> <input type="file"
											id="inputFile" class="form-control" name="product1_File">
									</div>
									<div class="form-group">
										<label for="inputFile">기존 이미지</label> <input type="text"
											class="form-control" name="product2_File"
											value=${admin_Product.product_BrandImg }> <label
											for="inputFile3">상품 브랜드 이미지 첨부</label> <input type="file"
											id="inputFile3" class="form-control" name="product2_File">
									</div>
									<div class="form-group">
										<label for="inputStatus">상품 카테고리</label> <select
											id="inputStatus" class="form-control custom-select"
											name="product_Category">
											<option selected>${admin_Product.product_Category }</option>
											<option>스마트폰</option>
											<option>데스크탑</option>
											<option>노트북</option>
											<option>태블릿</option>
											<option>가전 제품</option>
											<option>음향기기</option>
										</select>
									</div>
									<div class="form-group">
										<label for="inputNum">재고량</label> <input type="number"
											id="inputNum" class="form-control" name="product_Vol"
											value="${admin_Product.product_Vol}" pattern="^[0-9]+$"
											placeholder="숫자만 입력" required>
									</div>
									<div class="form-group">
										<label for="inputDescription">상품 내용</label>
										<textarea id="inputDescription" class="form-control" rows="21"
											name="product_Content">${admin_Product.product_Content}</textarea>
									</div>

								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
						<div class="col-md-6">
							<div class="card card-secondary">
								<div class="card-header">
									<h3 class="card-title">추가 정보 입력</h3>
								</div>
								<div class="card-body">
									<div class="form-group">
										<label for="inputEstimatedBudget">작성자</label> <input
											type="text" id="inputEstimatedBudget"
											value="${admin_Product.account_Id }" class="form-control"
											readOnly>
									</div>
									<div class="form-group">
										<label for="inputModel">상세 모델명</label> <input type="text"
											id="inputModel" class="form-control" name="product_ModelName"
											value="${admin_Product.product_ModelName}" required>
									</div>
									<div class="form-group">
										<label for="inputModel2">상품 요약 설명</label> <input type="text"
											id="inputModel2" class="form-control"
											name="product_ShortContent"
											value="${admin_Product.product_ShortContent}" required>
									</div>
									<div class="form-group">
										<label for="inputModelPrice">상품 가격</label> <input
											type="number" id="inputModelPrice" class="form-control"
											name="product_Price" pattern="^[0-9]+$"
											value="${admin_Product.product_Price}" placeholder="숫자만 입력"
											required>
									</div>
									<div class="form-group">
										<label for="inputFile">기존 이미지</label> <input type="text"
											class="form-control" name="product3_File"
											value="${admin_Product.product_SubImg}"> <label
											for="inputFile2">상품 추가 이미지</label> <input type="file"
											id="inputFile2" class="form-control" name="product3_File">
									</div>
									<div class="form-group">
										<label for="inputEstimatedDuration">추가 작성내용</label>
										<textarea id="inputEstimatedDuration" class="form-control"
											rows="20" name="product_Content2">${admin_Product.product_Content2}</textarea>
									</div>
									<div class="form-group">
										<a href="adminProductList.do" class="btn btn-secondary">취소</a> <input
								type="button" id="productDeleteButton" value="삭제"
								class="btn btn-danger float-right"> <input type="button"
								id="productUpdateButton" value="수정"
								class="btn btn-success float-right">
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
					</div>
				</section>
				<!-- /.content -->
			</div>
			<!-- main end-->
		</form>
		<!-- Main Footer -->
		<%@ include file="../include/adminInclude/adminFooter.jsp"%>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED SCRIPTS -->
	<%@ include
		file="../include/adminInclude/adminPageScript/adminScript.jsp"%>
	<!-- Page specific script -->
	<%@ include
		file="../include/adminInclude/adminPageScript/adminChange.jsp"%>

</body>
</html>
