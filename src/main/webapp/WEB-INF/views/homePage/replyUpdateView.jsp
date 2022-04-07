<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<style type="text/css">
#root{
display: flex;
justify-content: center;
}

#updateForm{
border: 1px solid #E4E7ED;
border-radius: 5px;
width: 450px;
padding: 5px; 
}

input#content{
width: 200%;
height: 100px;
}

</style>
	<%@ include file="../include/homeInclude/head.jsp" %> 
	<body>
		<div id="root">
			<section id="container">
				<form id="updateForm" name="updateForm" role="form" method="post" action="/homePage/replyUpdate">
					<input type="hidden" name="bno" value="${replyUpdate.bno}" readonly="readonly"/>
					<input type="hidden" id="rno" name="rno" value="${replyUpdate.rno}" />
					<table>
						<tbody>
							<tr>
								<td>
									<label for="content">작성자</label><br/>
									<label for="content">${replyUpdate.writer}</label><br/>
									<label for="content">댓글 내용</label><br/>
									<input type="text" id="content" name="content" value="${replyUpdate.content}"/>
								</td>
							</tr>	
							
						</tbody>			
					</table>
					<div>
						<button type="submit" class="update_btn btn btn-info float-right" >저장</button>
						<button type="button" class="cancel_btn btn btn-info float-right">취소</button>
					</div>
				</form>
			</section>
		</div>
	</body>
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='updateForm']");
			
			$(".cancel_btn").on("click", function(){
				location.href = "/homePage/QnaGetBoard.do?board_Seq=${replyUpdate.bno}";
								   /* + "&page=${scri.page}"
								   + "&perPageNum=${scri.perPageNum}"
								   + "&searchType=${scri.searchType}"
								   + "&keyword=${scri.keyword}"; */

			})
		})
		
	</script>
</html>
 