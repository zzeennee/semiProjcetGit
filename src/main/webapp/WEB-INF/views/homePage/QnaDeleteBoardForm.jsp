<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<style type="text/css">

.main_blank{
width : 55%;
display: block; 
margin: 0px auto;
text-align: center;
}

form{
border: 1px solid #E4E7ED;

}

#boardt{
width: 150px;
background-color:#00c2cb;
color:#fff;
}

#boardd{
width:800px;
}

#content{
width:1000px;
height: 500px;
}

a>#fbutton{
position: absolute;
  text-align: center;
}


</style>
		
		<!-- 여기에 헤드 -->
	<%@ include file="../include/homeInclude/head.jsp" %> 
<body>
	<!-- 여기에 헤더 -->	
	<%@ include file="../include/homeInclude/header.jsp" %>
	<!-- 여기에 top -->
	<%@ include file="../include/homeInclude/top.jsp" %>

		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<h3 class="breadcrumb-header">게시판</h3>
						<ul class="breadcrumb-tree">
							<li><a href="#">Home</a></li>
							<li class="active">고객센터</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->


<div class="main_blank">
        
        <h1>글 삭제</h1>		
		<hr>
		<!-- 1. 폼태그에 속성 추가  -->
		<form class="main_blank" name="QnaDeleteForm" action="QnaDeleteBoard.do" method="GET" enctype="multipart/form-data"> 	 
        <input name="qnaSeq" type="hidden" value="${board.qnaSeq}" />	 
        <table class="table table-hover">              
                <!-- 추가항목 시작 -->
				<tr>
					<th id="boardt">비밀번호</th>
					<td align="left" colspan="3"><input type="password" id="password" name="qnaPassword"/></td>
				</tr>
				<!-- 추가항목 끝 -->
				<tr>
					<td colspan="4" align="center"><button type="submit" onclick="fn_check_password();" id="fbutton" class="btn btn-info" >글 삭제</button></td>
				</tr>
			</table>
		</form>
        <br>
        <a href="Qna.do"><button type="button" id="fbutton" class="btn btn-info" >목록</button></a>
		<br><br><br>
</div>

		<!-- 여기에 푸터 -->
	<%@ include file="../include/homeInclude/footer.jsp" %>
	<!-- js -->
	<%@ include file="../include/homeInclude/js.jsp" %>
</body>
<script>

function fn_check_password(){
	var password_val = document.getElementById("password").value.trim(); 
	if(password_val == ""){
		alert("비밀번호를 입력해 주세용");
	} else {
		//폼전송
		document.QnaDeleteForm.submit();
	}
}

</script>
</html>