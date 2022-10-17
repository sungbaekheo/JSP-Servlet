<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 장바구니</title>
<style>
	tr {border-bottom: 1px solid gray;}
	tr:hover {background-color: #D6EEEE;}
	tr:nth-child(even) {background-color: #D6EEEE;}
	td {text-align: center;}
</style>
</head>
<body>
	<h3> 책 장바구니 쿠키 구현 </h3>
	<form action="shoppingCart.jsp" method="post">
		<table style="width: 400px; border-collapse: collapse">
			<tr><th>책 제목</th><th> 가 격 </th><th>장바구니 담기</th></tr>
			<tr><td>서블릿</td><td>22000</td><td><input type="checkbox" name="book" value="서블릿"></td></tr>
			<tr><td>자바</td><td>24000</td><td><input type="checkbox" name="book" value="자바"></td></tr>
			<tr><td>파이썬</td><td>20000</td><td><input type="checkbox" name="book" value="파이썬"></td></tr>
			<tr><td>머신러닝</td><td>28000</td><td><input type="checkbox" name="book" value="머신러닝"></td></tr>
			<tr><td>영상처리</td><td>33000</td><td><input type="checkbox" name="book" value="영상처리"></td></tr>
			<tr><td colspan="3"><input type="submit" value="장바구니 담기"></td></tr>	
		</table>
	</form>
	<div style="width:200px; height:100px; border: 1px solid gray; text-align:center">
		장바구니 목록
		<br>
		<%
			//쿠키 정보 읽기
			Cookie[] cookies = request.getCookies();
			//쿠키 정보 중에 name이 book~인 것을 찾고 value 출력
			for(int i = 0; i < cookies.length; i++) {
				String name = cookies[i].getName();
				out.print(cookies[i].getValue()+"<br>");
				if (name.contains("book")) {
					out.print(i + ". " + cookies[i].getValue()+"<br>");
				}
			}
		%>
	</div>
</body>
</html>