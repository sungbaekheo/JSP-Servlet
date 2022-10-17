<%@page import="beans.Member"%>
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
		//로그인 정보를 가져와서 member객체에 저장된 값과 일치여부 판단
		//Member 객체 생성
		Member member = new Member();
		//member 값이 있는지 콘솔창에 확인
/* 		System.out.println("id: " + member.getId());
		System.out.println("pwd: " + member.getPwd());
		System.out.println("name: " + member.getName()); */
		
		//전송된 로그인 정보를 가져오기
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		//id, pwd 맞는지 확인하기
		String name = member.checkUser(id,pwd);
		System.out.println("name: " + name);
		if(name != null){
			session.setAttribute("name", name);
			response.sendRedirect("main.jsp");
		}
		else {
			response.sendRedirect("loginForm.jsp");
		}
	%>
</body>
</html>