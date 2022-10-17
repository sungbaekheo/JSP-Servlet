<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>쿠키 생성 과정</h3>
	
	<%
		//1. 쿠키 생성 id, name, age
		// 쿠키 저장할 배열 객체 생성
		Cookie[] cookie = new Cookie[3];
		String[] name = {"id", "name", "age"};
		String[] value = {"smart", "허성백", "28"};
		// 쿠키 생성하면서 배열에 저장
		for(int i = 0; i < cookie.length; i++){
			cookie[i] = new Cookie(name[i], value[i]);
			// 쿠키 정보 유지 기간 설정(30분)
			cookie[i].setMaxAge(60*30);
			// 클라이언트에 쿠키 전송(response 객체에 담기);
			response.addCookie(cookie[i]);
		}
	%>
</body>
</html>