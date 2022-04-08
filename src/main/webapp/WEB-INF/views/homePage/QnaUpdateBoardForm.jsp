<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<style type="text/css">

#main_blank{
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
						<h3 class="breadcrumb-header">고객센터</h3>
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


<div id="main_blank">
        
        <h1>글 수정</h1>		
		<hr>
		<!-- 1. 폼태그에 속성 추가  -->
		<form id="main_blank " name="QnaUpdateForm" action="QnaUpdateBoard.do" method='post' enctype="multipart/form-data"> 	 
        <input name="qnaSeq" type="hidden" value="${board.qnaSeq}" />	 
        <table class="table table-hover">
        
            
                <tr>
                    <th id="boardt">제목</th>
                    <td align="left" colspan="4"><input type="text" name="qnaTitle" value="${board.qnaTitle }"/></td>
                    
                </tr>
                
                <tr>
                    <th id="boardt">카테고리</th>
                    <td align="left">
					<select name="qnaCategory">
					    <option value="자주묻는 질문">자주묻는 질문</option>
					    <option value="문의">문의</option>
					</select>
					</td>
                    <th id="boardt">작성자</th>
                    <td align="left"><input type="text" size="10" name="qnaName" value="${board.qnaName }"/></td>
                </tr>
                <tr >
                    <th id="boardt">문의 내용</th>
                    <td align="left" colspan="4"><textarea cols="40" rows="10" name="qnaContent" >${board.qnaContent }</textarea></td>
                </tr>
                <tr >
                    <th id="boardt">내용추가</th>
                    <td align="left" colspan="4"><textarea cols="40" rows="10" name="qnaContent2">${board.qnaContent2 }</textarea></td>
                </tr>
                <!-- 추가항목 시작 -->
				<tr>
					<th id="boardt">비밀번호</th>
					<td align="left" colspan="3"><input type="password" id="password" name="qnaPassword"/></td>
				</tr>
				<tr>
					<th id="boardt">파일추가</th><td align="left" colspan="3">
					<input type="file" maxlength="60" size="40" name="qnaFile" ></td>
				</tr>
				<!-- 추가항목 끝 -->
				<tr>
					<td colspan="4" align="center"><button type="button" onclick="fn_check_password();" id="fbutton" class="btn btn-info" >글 수정</button></td>
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
		document.QnaUpdateForm.submit();
	}
}

</script>


</html>