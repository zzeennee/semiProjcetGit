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
  <title>메일 보내기 | 관리자 페이지</title>

<%@ include file="../include/adminInclude/adminCSS.jsp" %> 
  
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
 
 <!-- Navbar -->
<%@ include file="../include/adminInclude/adminNavbar.jsp" %> 

<!-- Sidebar -->
<%@ include file="../include/adminInclude/adminSidebar.jsp" %> 

<!-- main -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>메일 보내기</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="adminMailWrite.do">새로 고침</a></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
	
    <!-- Main content -->
    <form action="adminMailSend.do" method="post">
    <section class="content">
        <div class="col-md-12">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title"></h3>
            </div>
            <div class="card-body">
              <div class="form-group">
                <label for="inputName">메일 제목</label>
                <input type="text" id="inputName" class="form-control" name="mail_Title" placeholder="메일 제목" required>
              </div>
              <div class="form-group">
                <label for="inputEstimatedBudget">작성자</label>
                <input type="text" id="inputEstimatedBudget" value="${sessionScope.logname }" class="form-control" name="account_Id" readOnly>
              </div>
              <div class="form-group">
                <label for="inputEstimatedBudget">받는 사람 이메일</label>
               	<input type="text" id="inputName" class="form-control" name="mail_ReceiveMail" placeholder="받는 사람 이메일" required>
              </div>
              <div class="form-group">
                <label for="inputStatus">메일 카테고리</label>
                <select id="inputStatus" class="form-control custom-select" name="mail_Category">
                  <option selected disabled>카테고리 선택</option>
                  <option>공지사항</option>
                  <option>이벤트</option>
                  <option>광고</option>
                </select>
              </div>
              <div class="form-group">
                <label for="inputDescription">메일 내용</label>
                <textarea id="inputDescription" class="form-control" rows="15" name="mail_Content" required></textarea>
              </div>
              <div class="form-group">
                <a href="adminBoardList.do" class="btn btn-secondary">취소</a>
          		<input type="submit" value="작성" class="btn btn-success float-right" id="boardinput">
              </div>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
    </section>
    </form>
    <!-- /.content -->
  </div>
<!-- main end-->
<!-- Main Footer -->
<%@ include file="../include/adminInclude/adminFooter.jsp" %>   
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<%@ include file="../include/adminInclude/adminPageScript/adminScript.jsp" %> 
<!-- Page specific script -->
<script type="text/javascript">
		$(function() {
			$("#boardForm").submit(function() {
				if ($("#inputStatus").val() == null) {
					alert('카테고리를 선택하세요.')
					return false
				}
			});
		});
	</script>
</body>
</html>
