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

input#reply_content{
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

#reply_content{
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
						<h3 class="breadcrumb-header">게시판</h3>
						<ul class="breadcrumb-tree">
							<li><a href="#">Home</a></li>
							<li class="active">게시판</li>
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
			<input name="qnaSeq" type="hidden" value="${board.qnaSeq}" />
			 
        <table class="table table-hover">
            
                <tr>
                    <th id="boardt">제목</th>
                    <td id="boardd" align="left">${board.qnaTitle }</td>
                    <th id="boardt">등록일</th>
                    <td id="boardd" align="left">${board.qnaDate }</td>
                </tr>
                
                <tr>
                    <th id="boardt">카테고리</th>
                    <td align="left">${board.qnaCategory }</td>
                    <th id="boardt">작성자</th>
                    <td id="boardd" align="left">${board.qnaName }</td>
                </tr>
                
                <tr >
                    <th id="boardt">내용</th>
                    <td id="reply_content" align="left" colspan="3">${board.qnaContent }</td>
                </tr>
                <tr >
                    <th id="boardt">내용</th>
                    <td id="reply_content" align="left" colspan="3">${board.qnaContent2 }</td>
                </tr>
                <tr >
                <td colspan="4" align="center">
						<a href='../resources/upload/${board.qnaRealMainImg}'>${board.qnaMainImg }</a><br/><br/><br/><!-- 파일을 다운받거나 새창으로 보여줌. -->
						<img width='300' src='../resources/upload/${board.qnaRealMainImg} '>	<!-- 파일의 진짜이름을 경로뒤에 붙을수있게 적는다. -->				
					</td>
				</tr>
        </table>
</form>
	<div>
        <br><br>
        <a href="Qna.do"><button type="button" id="fbutton" class="btn btn-info float-right" >목록</button></a>&nbsp;
        <a href="/homePage/QnaUpdateBoardForm.do?qnaSeq=${board.qnaSeq }"><button type="button"  id="fbutton"class="btn btn-info" >글수정</button></a>&nbsp; 
		<a href="/homePage/QnaDeleteBoardForm.do?qnaSeq=${board.qnaSeq }"><button type="button" id="fbutton" class="btn btn-info" >글삭제</button></a>
   		<br><br>
   	</div>
   <!-- 댓글	 목록	--------------------------------------------------- -->
	<form name="frm">
	<table class="table table-hover">
	    <c:forEach items="${replyList}" var="replyList">
	       
	        <br/>
	        <p>
	        작성자 : ${replyList.reply_writer}&nbsp;&nbsp;&nbsp;
	        작성 날짜 :  <fmt:formatDate value="${replyList.reply_regdate}" pattern="yyyy-MM-dd" />
	        <p>
	        <p>${replyList.reply_content}</p>
	        <div>
			  <button type="button" class="replyUpdateBtn btn btn-info float-right" name="replyUpdateBtn" data-reply_rno="${replyList.reply_rno}">수정</button>
			  <button type="button" class="replyDeleteBtn btn btn-info float-right" name="replyDeleteBtn" data-reply_rno="${replyList.reply_rno}">삭제</button>
			</div>
	    </c:forEach> 
	    </table>  
	  </form>
<!-- 댓글 목록끝--------------------------------------------------- -->
<br/>
<!-- 댓글작성 시작 -->
	<form name="replyForm" id="replyForm" method="post" action="/homePage/replyWrite.do">
	  <input type="hidden" id="qnaSeq" name="qnaSeq" value="${board.qnaSeq}" />
	  <div>
	    <br/>
	    <label for="reply_writer">댓글 작성자</label><br/>
	    <input type="text" id="reply_writer" name="reply_writer" />
	    <br/>
	    <br/>
	    <label for="reply_content">댓글 내용</label><br/>
	    <input type="text" id="reply_content" name="reply_content" />
	  </div>
	  <div>
	  <br/>
	 	 <button type="submit" class="btn btn-info float-right" id="replyWriteBtn">작성</button>
	  </div>
	</form>
</div>
<!--댓글 작성 끝-->

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
<script>

//댓글 수정 View
$(".replyUpdateBtn").on("click", function(){
	location.href = "/homePage/replyUpdateView.do?qnaSeq=${board.qnaSeq}"
					/* + "&page=${scri.page}"
					+ "&perPageNum=${scri.perPageNum}"
					+ "&searchType=${scri.searchType}"
					+ "&keyword=${scri.keyword}" */
					+ "&reply_rno="+$(this).attr("data-reply_rno");
});

//*************************************************************************

//댓글 삭제 View
$(".replyDeleteBtn").on("click", function(){
	location.href = "/homePage/replyDeleteView.do?qnaSeq=${board.qnaSeq}"
					/* + "&page=${scri.page}"
					+ "&perPageNum=${scri.perPageNum}"
					+ "&searchType=${scri.searchType}"
					+ "&keyword=${scri.keyword}" */
					+ "&reply_rno="+$(this).attr("data-reply_rno");// $(this).attr("data-reply_rno") 클릭 이벤트가 발생한 수정 버튼의 data-rno값을 가져오겠다는 말
});
</script>
</html>