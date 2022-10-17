<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>절대값 계산</title>
</head>
<body>
	<h3>절대값 계산하는 메소드 선언</h3>
	<%!
		public int abs(int num){
			if(num>0) return num;
			else return -num;
		}
	%>
	<h3>abs()메소드 호출하기</h3>
	<%	
		int data = 5;
		int result = abs(data);
		out.println(data + "의 절대값은 " + result);
		
		out.print("<br>");
		
		data = -5;
		out.println(data + "의 절대값은" + abs(data));
	%>
</body>
</html>