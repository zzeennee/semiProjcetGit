<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ page isELIgnored="false" contentType = "text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<style type="text/css">

#main_blank{
width : 50%;
display: block; 
margin: 0px auto;
} 
#frm{
border: 1px solid #E4E7ED;
border-radius: 5px;
width: 800px;
padding: 5px; 
}

input#content{
width: 100%;
height: 150px;
}
#replyForm{
border: 1px solid #E4E7ED;
}

ul{
text-align:center;
}
#reply{
text-align:center;
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
						<h3 class="breadcrumb-header">공지사항/이벤트</h3>
						<ul class="breadcrumb-tree">
							<li><a href="#">Home</a></li>
							<li class="active">공지사항/이벤트</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->


<div id="main_blank">
       <br>
        <h1>글 상세</h1>		
	
		<form id="frm" method="post" action="replyWrite.do">
			<input name="board_Seq" type="hidden" value="${admin_Board.board_Seq}" />
			 
        <table class="table table-hover">
            
                <tr>
                    <th id="boardt">제목</th>
                    <td id="boardd" align="left">${admin_Board.board_Title }</td>
                    <th id="boardt">등록일</th>
                    <td id="boardd" align="left">${admin_Board.board_Date }</td>
                </tr>
                
                <tr>
                    <th id="boardt">카테고리</th>
                    <td align="left">${admin_Board.board_Category }</td>
                    <th id="boardt">작성자</th>
                    <td id="boardd" align="left">${admin_Board.account_Id }</td>
                </tr>
                
                <tr >
                    <th id="boardt">내용</th>
                    <td id="content" align="left" colspan="3">${admin_Board.board_Content }</td>
                </tr>
                <tr >
                    <th id="boardt">내용</th>
                    <td id="content" align="left" colspan="3">${admin_Board.board_Content2 }</td>
                </tr>
                <tr >
                <td colspan="4" align="center">
						<a href='../resources/upload/${admin_Board.board_RealMainImg}'>${admin_Board.board_MainImg }</a><br/><br/><br/><!-- 파일을 다운받거나 새창으로 보여줌. -->
						<img width='300' src='../resources/upload/${admin_Board.board_RealMainImg} '>	<!-- 파일의 진짜이름을 경로뒤에 붙을수있게 적는다. -->				
					</td>
				</tr>
        </table>
</form>
	<div>
        <br><br>
        <a href="Qna.do"><button type="button" id="fbutton" class="btn btn-info float-right" >목록</button></a>&nbsp;
        <c:if test="${sessionScope.admin eq 'ok'}">
           <a href="/admin/adminBoardChange.do?board_Seq=${admin_Board.board_Seq }"><button type="button"  id="fbutton"class="btn btn-info" >글 수정/삭제</button></a>
         </c:if>
   		<br><br>
   	</div>
</div>
   	<br/>
		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- 여기에 푸터 -->
	<%@ include file="../include/homeInclude/footer.jsp" %>
	<!-- js -->
	<%@ include file="../include/homeInclude/js.jsp" %>	
</body>
</html>