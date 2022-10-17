package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalcProcess
 */
@WebServlet("/calcProcess")
public class CalcProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalcProcess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//1. data 가져오기
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		String op = request.getParameter("op");
		//2. HTML 문서 내 한글 인코딩 방식 지정
		response.setContentType("text/html; charset = utf-8");
		//3. 출력 스트림 가져오기
		PrintWriter out = response.getWriter();
		//4. 로직 처리
		double result = 0;
		switch(op){
			case "+": result = Integer.parseInt(num1) + Integer.parseInt(num2); break;
			case "-": result = Integer.parseInt(num1) - Integer.parseInt(num2); break;
			case "*": result = Integer.parseInt(num1) * Integer.parseInt(num2); break;
			case "/": result = (double) Integer.parseInt(num1) / Integer.parseInt(num2);
		}
		out.print(num1 + op + num2 + " = " + result);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
