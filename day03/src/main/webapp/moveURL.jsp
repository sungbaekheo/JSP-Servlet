<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String portal = request.getParameter("url");
	
		switch(portal) {
			case "네이버": response.sendRedirect("http://www.naver.com"); break;
			case "다음": response.sendRedirect("http://www.daum.net"); break;
			case "구글": response.sendRedirect("http://www.google.com"); break;
		}
	%>
</body>
</html>