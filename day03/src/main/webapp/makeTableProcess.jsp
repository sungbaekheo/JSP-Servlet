<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테이블 만들깅</title>
</head>
<body>
	<% String name = request.getParameter("name");
	   int room = Integer.parseInt(request.getParameter("number"));
	%>
	<table border>
		<tr>
		<%
			out.print(name + "<br>");
			for(int i = 1; i <= room; i++) {
				out.print("<td>" + i + "</td>");
			}
		%>
		</tr>
	</table>
</body>
</html>