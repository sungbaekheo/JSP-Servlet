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
		String id = "test";
		String pwd = "12345";
		
		String getId = request.getParameter("id");
		String getPwd = request.getParameter("pw");
		
		if((getId == null) || (getPwd == null)) {
			response.sendRedirect("loginAction.html");
		}
		else{
		
			if((getId.equals(id)) && (getPwd.equals(pwd))) {
				
				String name = "허성백";
				session.setAttribute("name", name);
				// 1. sendRedirect 방식
				response.sendRedirect("firstAction.jsp");
				
				// 2. forward() 이용한 페이지 이동
				// 2-1. Request.Dispatcher 객체(인스턴스) 생성
				// 2-2. forward() 메소드 호출
				//RequestDispatcher dispt = request.getRequestDispatcher("firstAction.jsp");
				//dispt.forward(request, response);
			}
			else {
				response.sendRedirect("loginAction.html");
			}
		}
	%>
</body>
</html>