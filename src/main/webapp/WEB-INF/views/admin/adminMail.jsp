<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>메일 테스트 페이지</title>
<%@ include file="../include/adminInclude/adminCSS.jsp"%>
</head>
<body class="hold-transition sidebar-mini">
	<h3 class='title'>mail</h3>
	<div class='contact-us'>
		<form action="adminMailSend.do" method="post">
			<div class="col-md-6 col-sm-6 col-xs-6 styled-input">
				<input type="text" name="name" placeholder="이름">
			</div>
			<div class="col-md-6 col-sm-6 col-xs-6 styled-input">
				<input type="email" name="email" placeholder="이메일">
			</div>
			<div class="col-md-6 col-sm-6 col-xs-6 styled-input">
				<input type="text" name="phone" placeholder="연락처">
			</div>
			<div class="col-md-6 col-sm-6 col-xs-6 styled-input">
				<input type="text" name="message" placeholder="전송내용">
			</div>
			<div class="click">
				<input type="submit" value="전송">
			</div>
		</form>
	</div>

	<!-- REQUIRED SCRIPTS -->
	<%@ include
		file="../include/adminInclude/adminPageScript/adminScript.jsp"%>
</body>
</html>
