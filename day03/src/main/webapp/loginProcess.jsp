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
		String id = "smart";
		String pwd = "1234";
		
		String getId = request.getParameter("id");
		String getPwd = request.getParameter("pwd");
		
		if(getId.equals(id)) {
			if(getPwd.equals(pwd)) {
				// 1. sendRedirect 방식
				//response.sendRedirect("success.jsp?id="+getId);
				
				// 2. forward() 이용한 페이지 이동
				// 2-1. Request.Dispatcher 객체(인스턴스) 생성
				// 2-2. forward() 메소드 호출
				String name = "홍길동";
				request.setAttribute("name", name);
				RequestDispatcher dispt = request.getRequestDispatcher("success.jsp");
				dispt.forward(request, response);
			
			}
			else response.sendRedirect("fail.jsp");
		}
		else response.sendRedirect("fail.jsp");
	
	%>
</body>
</html>