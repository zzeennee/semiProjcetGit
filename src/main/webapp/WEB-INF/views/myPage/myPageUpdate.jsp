<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원 정보 수정 - 마이페이지 | 머신킹덤</title>

<%@ include file="../include/myPageInclude/myPageCSS.jsp"%>

</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Navbar -->
		<%@ include file="../include/myPageInclude/myPageNavbar.jsp"%>

		<!-- Sidebar -->
		<%@ include file="../include/myPageInclude/myPageSidebar.jsp"%>
		<!-- body title -->
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>회원정보 수정</h1>
						</div>
						<div class="col-sm-6">
							<!-- <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">페이지이동</a></li>
              <li class="breadcrumb-item active">서브 페이지이동->새로고침</li>
            </ol> -->
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /body title -->



			<!-- Main content -->
			<form action="updateAccount.do" enctype="multipart/form-data"
				method="post">
				<input type="hidden" name="account_Id"
					value="${sessionScope.logname }" />
				<section class="content">
					<div class="container-fluid">
						<div class="row">
							<div class="col-3"></div>
							<div class="col-6">
								<!-- Default box -->
								<div class="card">
									<div class="card-header">
										<h3 class="card-title">회원정보수정</h3>

									</div>
									<div class="card-body">
										<!-- /프로필 사진 업로드 -->
										<div class="form-group">
											<label for="InputSubject1">파일첨부</label> 
											<input id="fileInput"
												filestyle="" type="file" data-class-button="btn btn-default"
												data-class-input="form-control" data-button-text=""
												data-icon-name="fa fa-upload" class="form-control"
												tabindex="-1" name="account_File"
												style="position: absolute; clip: rect(0px, 0px, 0px, 0px);">
											<div class="bootstrap-filestyle input-group">
												<input type="text" id="userfile" class="form-control"
													 disabled=""> <span
													class="group-span-filestyle input-group-btn" tabindex="0">
													<label for="fileInput" class="btn btn-default"> <span
														class="glyphicon fa fa-upload"></span>
												</label>
												</span>
											</div>
										</div>


										<!-- /프로필 사진 업로드 -->
										<!-- <input type="text"> -->

										<div class="form-group">
											<label for="exampleInputEmail1">이름</label> <input type="text"
												class="form-control" id="exampleInputEmail1"
												value='${account.account_Name }' readonly>
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">아이디</label> <input
												type="text" class="form-control" id="exampleInputPassword1"
												value='${sessionScope.logname }' readonly>
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">전화번호</label> <input
												type="tel" class="form-control" id="exampleInputEmail1"
												name="account_Tel" value='${account.account_Tel }'
												placeholder="전화번호">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">이메일</label> <input
												type="email" class="form-control" id="exampleInputEmail1"
												name="account_Email" value='${account.account_Email }'>
										</div>
										<div class="form-group" id='addrlabel'>
											<label for="useraddr" class="col-md-8 col-form-label">주소</label>
											<input class="form-control"
												style="width: 40%; display: inline;" placeholder="우편번호"
												name="account_Addr1" id="second_addr" type="text"
												value='${account.account_Addr1 }' readonly>
											<button type="button" class="btn btn-default"
												id='second_addrbtn' onclick="execPostCode();">
												<i class="fa fa-search"></i> 우편번호 찾기
											</button>
										</div>
										<div class="form-group">
											<input class="form-control" style="top: 5px;"
												placeholder="도로명 주소" name="account_Addr2" id="second_addr2"
												type="text" value='${account.account_Addr2 }' readonly />
										</div>
										<div class="form-group">
											<input class="form-control" placeholder="상세주소"
												name="account_Addr3" id="second_addr3"
												value='${account.account_Addr3 }' type="text" />
										</div>
										<!-- 테이블1 끝 -->


										<!-- <button type="submit" class="btn btn-primary" id="updatebtn" style="float: right;">회원수정</button> -->
										<div style="float: right;">
											<input type="submit" class='btn btn-primary btn-sm'
												id='updatebtn' value='회원수정'> <a
												href='myPageLeave.do?account_Id=${account.account_Id}'
												type="button" class='btn btn-primary btn-sm' id='deletebtn'>회원탈퇴</a>
										</div>
									</div>


									<!-- /.card-body -->

									<!-- /.card-footer-->
								</div>
								<!-- /.card -->



								<div class="card-body"></div>
							</div>
						</div>
						<!-- /.container-fluid -->
					</div>
				</section>
			</form>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<!-- Main Footer -->
		<%@ include file="../include/myPageInclude/myPageFooter.jsp"%>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED SCRIPTS -->
	<%@ include
		file="../include/myPageInclude/myPageScript/myPageScript.jsp"%>
	<!-- Page specific script -->
	<%@ include
		file="../include/myPageInclude/myPageScript/myPageHomeScript.jsp"%>
</body>

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	window.onload = function() {
		document
				.getElementById("second_addrbtn")
				.addEventListener(
						"click",
						function() { //주소입력칸을 클릭하면
							//발신자 주소검색 발생
							new daum.Postcode(
									{
										oncomplete : function(data) { //선택시 입력값 세팅
											document
													.getElementById("second_addr").value = data.zonecode;
											document
													.getElementById("second_addr2").value = data.address; // 주소 넣기
										}
									}).open();
						});

	}
	$(document).ready(
			function() {
				$("#fileInput").on(
						'change',
						function() {
							// 값이 변경되면 
							if (window.FileReader) { // modern browser 
								var filename = $(this)[0].files[0].name;
							} else { // old IE 
								var filename = $(this).val().split('/').pop()
										.split('\\').pop(); // 파일명만 추출 
							} // 추출한 파일명 삽입 
							$("#userfile").val(filename);
						});
			});
</script>
</html>
