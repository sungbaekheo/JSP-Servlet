package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/join")
public class Lab2Join extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String cpw = request.getParameter("pwCheck");
		String gender = request.getParameter("gender");
		String btype = request.getParameter("bloodtype");
		String birth = request.getParameter("birth");
		String[] hobby = request.getParameterValues("hobby");
		String favColor = request.getParameter("color");
		String comment = request.getParameter("comment");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>Post</title></head>");
		out.print("<body>");
		out.print("아이디: " + id + "<br>");
		out.print("비밀번호: " + pw + "<br>");		
		if(cpw.equals(pw)) {
			out.print("rpw: " + cpw + "<br>");
		}
		else {
			out.print("비밀번호가 일치하지 않습니다.<br>");
		}
		out.print("성별: " + gender + "<br>");
		out.print("혈액형: " + btype + "<br>");
		out.print("생일: " + birth + "<br>");
		out.print("취미: ");
		for(String i : hobby) {
			out.print(i);
		}
		out.print("<br>");
		out.print("좋아하는 색: " + favColor + "<br>");
		out.print("<div style='height:200px; width:200px; background:"+favColor+"'></div>");
		out.print("남기고 싶은 말: " + comment);
		
	}

}
