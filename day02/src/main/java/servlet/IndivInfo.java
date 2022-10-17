package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/indivInfo")
public class IndivInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String[] food = request.getParameterValues("food");
		String gender = request.getParameter("gender");
		String[] interest = request.getParameterValues("interest");
		
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		out.print("<body>");
		out.print("이름: " + name + "<br>");
		out.print("나이: " + age + "(" + Integer.parseInt(age)/10*10 + "대)<br>");
//		int ages = Integer.parseInt(age);
//		out.print("나이: " + age);
//		if (ages >= 50) {
//			out.print("(50대 이상)");
//		}
//		else if(ages >= 40) {
//			out.print("(40대)");
//		}
//		else if(ages >= 30) {
//			out.print("(30대)");
//		}
//		else if(ages >= 20) {
//			out.print("(20대)");
//		}
//		else {
//			out.print("(10대 이하)");
//		}
//		switch(ages/10) {
//			case 1: out.print("(10대)"); break;
//			case 2: out.print("(20대)"); break;
//			case 3: out.print("(30대)"); break;
//			case 4: out.print("(40대)"); break;
//			case 5: out.print("(50대)"); break;
//			case 6: out.print("(60대)"); break;
//			case 7: out.print("(70대)"); break;
//		}
		
		out.print("<br>");
		out.print("성별: " + gender + "<br>");
		out.print("좋아하는 음식: ");
		for(String fd : food) {
			out.print(fd + " ");
		}
		out.print("<br>");
		out.print("관심분야: ");
		for(String it : interest) {
			out.print(it + " ");
		}
		out.print("</body>");
		
		
	}

}
