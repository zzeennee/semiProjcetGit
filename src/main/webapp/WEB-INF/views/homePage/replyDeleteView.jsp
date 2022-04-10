<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<style type="text/css">
#root{
display: flex;
justify-content: center;

}

div h3{
text-aligh:center;
}

#updateForm{
border: 1px solid #E4E7ED;
border-radius: 5px;
width: 350px;
padding: 5px; 
}

input#content{
width: 200%;
height: 100px;
}

</style>
<%@ include file="../include/homeInclude/head.jsp" %> 
	<body>
	<!-- 여기에 헤더 -->	
	<%@ include file="../include/homeInclude/header.jsp" %>
	<!-- 여기에 top -->
	<%@ include file="../include/homeInclude/top.jsp" %>
	<br/><br/>
		<div id="root">
			<section id="container">
				<form id="updateForm" name="updateForm" role="form" method="post" action="/homePage/replyDelete">
					<input type="hidden" name="qnaSeq" value="${replyDelete.qnaSeq}" readonly="readonly"/>
					<input type="hidden" id="reply_rno" name="reply_rno" value="${replyDelete.reply_rno}" />
					<div>
						<h3>삭제 하시겠습니까?</h3>
						<button type="submit" class="delete_btn btn btn-info float-right">예 삭제합니다.</button>
						<button type="button" class="cancel_btn btn btn-info float-right">아니오. 삭제하지 않습니다.</button>
					</div>
				</form>
			</section>
		</div>
		<br/><br/>
		<!-- 여기에 푸터 -->
	<%@ include file="../include/homeInclude/footer.jsp" %>
	<!-- js -->
	<%@ include file="../include/homeInclude/js.jsp" %>	
	</body>
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='updateForm']");
			
			$(".cancel_btn").on("click", function(){
				location.href = "/homePage/QnaGetBoard.do?qnaSeq=${replyDelete.qnaSeq}";
					   /* + "&page=${scri.page}"
					   + "&perPageNum=${scri.perPageNum}"
					   + "&searchType=${scri.searchType}"
					   + "&keyword=${scri.keyword}"; */
			})
			
		})
		</script>
</html>