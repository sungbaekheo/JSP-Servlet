<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.addr.app.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addr" class="com.addr.app.AddrBean"/>
<jsp:setProperty name="addr" property="*"/>

<jsp:useBean id="am" class="com.addr.app.AddrManager" scope="application"/>
<%
	boolean grade = (boolean) session.getAttribute("grade");
	
	am.add(addr);
	application.setAttribute("am", am);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addr_add.jsp</title>
</head>
<body>
<div align="center">
<H2>등록내용</H2>
아이디 : <jsp:getProperty property="userid" name="addr"/><P>
비밀번호 : <jsp:getProperty property="userpwd" name="addr"/><P>
이름 : <jsp:getProperty property="username" name="addr"/><P>
전화번호 : <%=addr.getTel() %><P>
이메일 : <%=addr.getEmail() %> <P>
성별 : <%=addr.getGender() %>
<HR>
<a href="loginForm.jsp">로그인하러 가기</a>
</div>
</body>
</html>










