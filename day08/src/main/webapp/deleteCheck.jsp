<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${username}님의 정보를 삭제하시겠습니까?<p>
	<form action="deleteMember" method="post">
	<input type="submit" value="확인">
	</form>
</body>
</html>