<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
< page import="beans.Member" %>
-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	
		//request 객체로부터 데이터 분리하기
		request.setCharacterEncoding("utf-8");
		//String id = request.getParameter("id");
		//String pwd = request.getParameter("pwd");
		//String name = request.getParameter("name");
		
		//Member 객체 생성하고 데이터 저장
/* 		Member member = new Member();
		
		member.setId(request.getParameter("id"));
		member.setPwd(request.getParameter("pwd"));
		member.setName(request.getParameter("name"));
		session.setAttribute("member", member);
		request.setAttribute("member", member); */
		
		//userBean 이용한 객체 생성과 데이터 저장
	%>
	<!-- useBean 이용해서 -->
	<jsp:useBean id="member" class="beans.Member" scope="request"/>
	<jsp:setProperty property="*" name="member"/>
	<!-- jsp:setProperty property="pwd" name="member"/-->
	<!-- jsp:setProperty property="name" name="member"/-->
	
	<%
		RequestDispatcher dispt = request.getRequestDispatcher("joinView.jsp");
		dispt.forward(request, response);
		//결과 피드백
	%>
	<!--
	<h3>회원가입 결과</h3>
	아이디: < id %><br>
	비밀번호: < pwd %><br>
	이름: < name %><br><br>
	
	<h3>회원가입 결과 (Beans)</h3>
	아이디: < member.getId() %><br>
	비밀번호: < member.getPwd() %><br>
	이름: < member.getName() %><br><br>
	-->
</body>
</html>