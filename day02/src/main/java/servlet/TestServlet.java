package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/testServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TestServlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 전송데이터에 한글이 포함될 경우 인코딩 방식 지정
		// 인코딩 방식을 지정할 경우에는 getParameter() 이전에 한다.
		request.setCharacterEncoding("utf-8");
		
		// 1. 전송데이터 가져오기(get 방식)
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// 2. 출력 문서에 한글 포함될 경우 인코딩 방식 지정
		response.setContentType("text/html; charset = utf-8");
		
		// 3. 출력스트림 가져오기
		PrintWriter out = response.getWriter();
		
		// 4. 로직처리 및 HTML 출력
		// id님 환영합니다. 출력
		
		out.print("<html><head><title>로그인결과</title></head>");
		out.print("<body>");
		out.print("<b>" + id + "</b>님 환영합니다.");
		out.print("</body>");
		out.print("</html>");
		


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
