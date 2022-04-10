<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" contentType = "text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
var path = "${pageContext.request.contextPath }";
var qustr = "${QnaBoardVO.qustr}";
$(function(){
    $("button[name='button']").on('click',function(){
       alert("버튼클릭");
    });//button click
}); 
</script>
<style type="text/css">

#main_blank{
width : 55%;
display: block; 
margin: 0px auto;
}

li {list-style: none; float: left; padding: 6px;}

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
						<h3 class="breadcrumb-header">이벤트</h3>
						<ul class="breadcrumb-tree">
							<li><a href="/">홈으로</a></li>
							<li class="active"><a href="/homePage/notice.do">공지사항</a></li>
							<li class="active"><a href="/homePage/event.do">이벤트</a></li>
							<li class="active"><a href="/homePage/Qna.do">고객센터</a></li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->


<div id="main_blank">
	<form action='Qna.do' method="get">
       	 <table class="table table-hover">    
                <tr>
                    <th>번호</th>
                    <th>카테고리</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                </tr>
               <c:forEach items="${QnaGetBoardList }" var="board">
				<!-- 프라퍼티이름 변경 -->
				<tr>
					<!-- 번호 -->
					<td align="left">${board.qnaSeq }</td>
					<!-- 카테고리 -->	
					<td>${board.qnaCategory }</td>
					<!-- 제목 -->
					<td><a href="/homePage/QnaGetBoard.do?qnaSeq=${board.qnaSeq }">${board.qnaTitle }</a></td>
					<!-- 글쓴이 -->
					<td>${board.qnaName }</td>
					<!-- 작성일 -->
					<td>${board.qnaDate }</td>
				</tr> 
			</c:forEach>
            </tbody>
        </table>
        <br><br>
        <div class="qnaSearch">
			<select name="searchType">
		      <option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
		      <option value="t"<c:out value="${scri.searchType eq 't' ? 'selected' : '제목'}"/>>제목</option>
		      <option value="c"<c:out value="${scri.searchType eq 'c' ? 'selected' : '내용'}"/>>내용</option>
		      <option value="w"<c:out value="${scri.searchType eq 'w' ? 'selected' : '작성자'}"/>>작성자</option>
		    </select>
			<input type="text" name="keyword" id="keywordInput" value="${scri.keyword}"/>
			<button id="searchBtn" type="button">검색</button>
			<script>
		      $(function(){
		        $('#searchBtn').click(function() {
		          self.location = "Qna.do" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
		        });
		      });   
		    </script>
		</div><!-- container -->
	</form>	
        <br><br>
         

        <br><br>
        <div>
		  <ul>
		    <c:if test="${pageMaker.prev}">
		    	<li><a href="Qna.do${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
		    </c:if> 
		
		    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
		    	<li><a href="Qna.do${pageMaker.makeSearch(idx)}">${idx}</a></li>
		    </c:forEach>
		
		    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		    	<li><a href="Qna.do${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
		    </c:if> 
		  </ul>
		</div>
        
    </div>
		

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