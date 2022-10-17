<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HAP</title>
</head>
<body>
	<%
		int hap = 0;
		for(int i = 1; i <= 100; i++) {
			hap += i;
		}
		out.println("1부터 100까지의 합 = " + hap);
	%>
</body>
</html>