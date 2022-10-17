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
	세션 시작 시간: <%=session.getAttribute("sst")%>초<br>
	세션 시간 다시 호출:<br>
	<%
		long presentTime = session.getLastAccessedTime()/1000;
		System.out.println("마지막 서버 요청 시간: " + presentTime + "초");
		
		//세션 유지된 시간: abs(세션 시작 시간 - 현재 시간)
		long stayTime = presentTime - (long) session.getAttribute("sst");
		out.print("로그인 이후 사이트에 머문 시간: " + stayTime + "초");
	
	%>
	<hr>
	<a href="page1.jsp">1 페이지로 이동</a>
</body>
</html>