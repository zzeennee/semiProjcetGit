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


<div id="main_blank">
        
        <h1>삭제 완료</h1>		
		
        <br><br>
        <a href="Qna.do"><button type="button" id="fbutton" class="btn btn-info" >목록</button></a>
		<br><br>
</div>

		<!-- 여기에 푸터 -->
	<%@ include file="../include/homeInclude/footer.jsp" %>
	<!-- js -->
	<%@ include file="../include/homeInclude/js.jsp" %>
</body>
</html>