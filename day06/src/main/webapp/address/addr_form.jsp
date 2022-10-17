<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<TITLE>회원 가입</TITLE>
</HEAD>
<BODY>
<div align="center">
<% 
	boolean grade = (boolean) session.getAttribute("grade");
	if(grade==true) {
%>
		<H2> 회원 추가 </H2>
<%
	}else {
%>
		<H2>회원 가입</H2>
<%
	}
%>

<HR>
<form name=form1 method="post" action=addr_add.jsp>
<table border=1 cellspacing="1" cellpadding="5">
<tr>
<td>아이디</td>
<td><input type=text size=20 name=userid></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input type=password size=20 name=userpwd></td>
</tr>
<tr>
<td>이 름</td>
<td><input type=text size=20 name=username></td>
</tr>
<tr>
<td>전화번호</td>
<td><input type=text size=20 name=tel></td>
</tr>
<tr>
<td>이메일</td>
<td><input type=text size=20 name=email></td>
</tr>
<tr>
<td>성별</td>
<td>
<select name=gender >
	<option selected>남</option>
	<option>여</option>
</select>
</td>
</tr>
<%
	if(grade==true){
%>
		<tr>
		<td>관리자 여부</td>
		<td><input type=checkbox name=grade value=true></td>
		</tr>
<%
	}
%>
<tr><td colspan=2 align=center>
	<input type=submit value="확인">
	<a href="main.jsp"><input type=button value="취소"></a>
</td></tr>
</table>
</form>
</div>
</BODY>
</HTML>