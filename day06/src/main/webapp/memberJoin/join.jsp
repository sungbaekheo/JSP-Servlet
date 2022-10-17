<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fieldset style="width:300px">
		<legend>회원가입</legend>
		<form action="joinProcess.jsp" method="post">
			아이디: <input type="text" name="id" placeholder="아이디를 입력해주세요."><br>
			비밀번호: <input type="password" name="pwd" placeholder="비밀번호를 입력해주세요."><br>
			이름: <input type="text" name="name" placeholder="이름을 입력해주세요."><br>
			<input type="submit" value="가입하기">
			<input type="reset" value="초기화">
		</form>
	</fieldset>
</body>
</html>