<%@page import="com.addr.app.AddrBean"%>
<%@page import="com.addr.app.AddrManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="am" class="com.addr.app.AddrManager" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		AddrBean ab = am.getAddr(id);
		
 		if(ab != null){
			if(ab.isGrade()==true && pwd.equals(ab.getUserpwd())){
				session.setAttribute("grade", ab.isGrade());
				response.sendRedirect("addr_list.jsp");
				
			}
			else if(id.equals(ab.getUserid()) && pwd.equals(ab.getUserpwd())){
				session.setAttribute("grade", ab.isGrade());
				response.sendRedirect("addr_list.jsp");
			}
			else {
				response.sendRedirect("loginForm.jsp");
			}
		}
		else {
			response.sendRedirect("loginForm.jsp");
		}
	
	%>
</body>
</html>