<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fieldset style="width:500px">
		<legend>로그인</legend>
		<form action="login.jsp" method="post">
			<input type="text" name="id" placeholder="아이디 입력">
			<input type="password" name ="pwd" placeholder="비밀번호 입력">
			<input type="submit" value="로그인">
		</form>
	</fieldset>
</body>
</html>