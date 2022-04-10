<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디/비밀번호 찾기 | 머신킹덤</title>
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="../resources/dist/css/adminlte.min.css">
	<%@ include file="../myPageInclude/myPageCSS.jsp" %>

<!-- Remember to include jQuery :) -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

<!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
</head>
<!-- Modal HTML embedded directly into document -->
<div id="ex1" class="modal hidden">
  <h3>고객님의 아이디는</h3><br>
  <h3>입니다.</h3>
  <button type='button' id="pwSearch_btn">비밀번호 찾기</button><br><br><br>
  
  <a href="#" rel="modal:close">Close</a>
</div>

<!-- Link to open the modal -->
<p><a href="#ex1" rel="modal:open">Open Modal</a></p>

