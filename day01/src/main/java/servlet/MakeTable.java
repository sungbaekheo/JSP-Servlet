package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MakeTable
 */
@WebServlet("/makeTable")
public class MakeTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MakeTable() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html; charset = utf-8");
		PrintWriter out = response.getWriter();
		int count = Integer.parseInt(request.getParameter("roomCnt"));
		out.print("<html><head><title>테이블 만들기</title></head><body>");
		out.print("<Table border>");
		for(int i = 3; i <= 6; i++) {		
			out.print("<tr>");
			for(int j = 1; j <= 9; j++) {
				out.print("<td>"+i+"x"+j+"="+(i*j)+"</td>");
			}
			out.print("</tr>");
		}
		
		out.print("</Table>");
		out.print("</body>");
		out.print("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
