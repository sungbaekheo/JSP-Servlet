<%
	String userId = (String) session.getAttribute("userId");
	if (userId == null) {
		response.sendRedirect("loginForm.jsp");
	}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=userId%>님 환영합니다. <a href="logout.jsp">로그아웃</a>
	<hr>
	<a href="page2.jsp">2 페이지로 이동</a>
</body>
</html>