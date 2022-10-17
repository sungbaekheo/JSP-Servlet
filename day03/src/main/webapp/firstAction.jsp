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
		<h2>첫번째 액션 페이지입니다.</h2>
		<% //String name = (String) session.getAttribute("name"); 
			//String name = request.getParameter("id");%>
		<b><%=name%>님 반갑습니다.</b>
		<a href="logout.jsp">로그아웃</a>
		<p><img src="./images/thenightmarebeforechristmas.jpg" style="width:400px; height:250px">
		<hr>
		<a href="secondAction.jsp">두번째 페이지</a>
		<hr>
		<!-- 액션태그는 XML 표준 기준으로 작성된다. 따라서 시작태그와 종료태그는 반드시 있어야 한다. -->
		오늘 날짜: <jsp:include page="today.jsp"/>
	</div>	
</body>
</html>