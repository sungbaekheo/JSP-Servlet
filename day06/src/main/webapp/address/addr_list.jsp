<%@page import="com.addr.app.AddrManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.addr.app.*"%>
<!DOCTYPE html>
<jsp:useBean id="am" class="com.addr.app.AddrManager" scope="application"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 목록</title>
</head>
<body>
<div align=center>
<H2>회원 목록</H2>
<HR>
<%
	boolean grade = (boolean) session.getAttribute("grade");
	
	if(grade==true){
%>
<a href="addr_form.jsp">회원정보 추가</a><p>
<%
	}
%><a href="main.jsp">로그아웃</a><P>
<table border=1 width=600>
<form action="addr_list.jsp" method="post">
<%
	if(grade==true){
%>
<tr><td>아이디</td><td>비밀번호</td>
<%
	}
%>
<td>이름</td><td>전화번호</td><td>이메일</td>
<%
	if(grade==true){
%>
<td>성별</td><td>등급</td></tr>
<%
	}
%>
<%
	for(AddrBean ab : am.getAddrList()) {
%>
	<tr>
<%
	if(grade==true){
%>
	<td><%=ab.getUserid() %></td>
	<td><%=ab.getUserpwd() %></td>
<%
	}	
%>
	<td><%=ab.getUsername() %></td>
	<td><%=ab.getTel() %></td>
	<td><%=ab.getEmail() %></td>
<% 
	if(grade==true){
%>
	<td><%=ab.getGender() %></td>
	<td><select name="setting">
		<% if(ab.isGrade()==true){
		%>	
		<option value="true" selected>관리자
		<option value="false">회원</select></td></tr>
		<%}else{
		%>
		<option value="true">관리자
		<option value="false" selected>회원</select></td></tr>
		<%}
		%>
<%
	}
%>
<%	
	} request.getAttribute("id", ab.getUserid());
%>
	<input type="submit" value="확인">
</form>
</table>
</div>
</body>
</html>


