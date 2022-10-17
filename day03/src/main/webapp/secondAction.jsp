<%
	String name = (String) session.getAttribute("name");
	if(name==null){
		response.sendRedirect("loginAction.html");
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
	<div style="width: 600px; height: 500px; border: 1px solid gray; text-align: center">
		<h2>두번째 액션 페이지입니다.</h2>
		<% //String name = (String) session.getAttribute("name"); %>
		<b><%=name%>님 환영합니다.</b>
		<a href="logout.jsp">로그아웃</a>
		<p><img src="./images/jack.png" style="width:150px; height:250px">
		<hr>
		<a href="firstAction.jsp">첫번째 페이지</a>
		<hr>
		오늘 날짜: <jsp:include page="today.jsp"/>
	</div>	
</body>
</html>