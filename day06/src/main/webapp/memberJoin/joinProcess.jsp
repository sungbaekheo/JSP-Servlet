<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="ml" class="com.member.beans.MemberManager" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<!-- useBean 이용해서 객체 생성과 데이터 저장
		 => 액션 태그는 XML 표준에 맞추어 작성됨 -->
	<jsp:useBean id="member" class="com.member.beans.MemberBean" scope="request"/>
	<jsp:setProperty property="*" name="member"/>
	<a href="joinView.jsp">회원정보 보기</a>
	<br>
	<%	
		//session.setAttribute("member", member);
		ml.add(member);
 		RequestDispatcher dispt = request.getRequestDispatcher("joinView.jsp");
		dispt.forward(request, response);
		
	%>
</body>
</html>