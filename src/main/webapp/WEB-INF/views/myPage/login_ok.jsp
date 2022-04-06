<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${sessionScope.logname } 로그인중입니다.

<a href="myPageHome.do?account_Id=${sessionScope.logname }">${sessionScope.logname }마이페이지</a>
<a href='/myPage/logout.do'>로그아웃</a>


</body>
</html>