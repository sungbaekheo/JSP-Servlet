<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.member.beans.MemberBean" %>
<jsp:useBean id="ml" class="com.member.beans.MemberManager" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원가입 결과</h3>
	<!-- request 객체에 저장된 값을 getProperty 액션 태그 이용하여 가져오기 -->
	<jsp:useBean id="member" class="com.member.beans.MemberBean" scope="request"/>
	아이디: <jsp:getProperty property="id" name="member"/><br>
	비밀번호: <jsp:getProperty property="pwd" name="member"/><br>
	이름: <jsp:getProperty property="name" name="member"/>
	<br>
	<h3>회원 리스트</h3>
	<table>
		<tr><th>아이디</th><th>비밀번호</th><th>이름</th></tr>
		<%	
			for(MemberBean m : ml.getList()) {
		%>
			<tr>
				<td><%= m.getId() %></td>
				<td><%= m.getPwd() %></td>
				<td><%= m.getName() %></td>
			</tr>
		<%
			}
		%>
	</table>
</body>
</html>