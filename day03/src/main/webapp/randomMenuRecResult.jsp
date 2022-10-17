<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Random"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점심 메뉴 자동 선택하기</title>
</head>
<body>
	<div style="width: 400px; height: 400px; text-align:center">
	<h3>점심 식당 자동 선택하기</h3>
	
	<%	

		Random ran = new Random();
		
		String[] menu = (String[]) session.getAttribute("menu");
		String[] picture = (String[]) session.getAttribute("pic");
		String name = request.getParameter("name");
		
		int choice = ran.nextInt(menu.length);
		
		if(name == null){
			out.print("오늘의 추천 식당은<br><br><b>" + menu[choice]+"</b><br>" + "<img src=\"" +picture[choice] +"\"width='200px'; height='200px'>");
		}
		else{
			out.print("선택하신 식당은<br><br><b>" + menu[Integer.parseInt(name)] +"</b><br>" + "<img src=\"" +picture[Integer.parseInt(name)] +"\"width='200px'; height='200px'>");
		}
	%>

	</div>
</body>
</html>