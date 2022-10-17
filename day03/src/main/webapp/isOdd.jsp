<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홀수 판별하기</title>
</head>
<body>
	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		int sum = num1 + num2;
		
		boolean result = isOdd(sum);
		
		out.println(num1 + " + " + num2 + " = " + sum + "<br>" + sum + "은" + (result? "홀수입니다.":"짝수입니다."));
	%>
	<h3>홀수, 짝수 판단하기</h3>
	<%!
		boolean isOdd(int num) {
			if(num%2 != 0) return true;
			else return false;
		}
	%>
	
</body>
</html>