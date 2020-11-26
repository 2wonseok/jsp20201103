package chap17;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletEx05
 */
@WebServlet("/ex05")
public class ServletEx05 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx05() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		System.out.println(id);
		System.out.println(name);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		out.print("당신의 이름은 ");
		out.print(name);
		out.println("입니다.");
		out.print("<br/>");
		out.print("당신의 나이는 ");
		out.print(age);
		out.println("입니다.");
		out.print("<br/>");
		out.println("당신의 이메일은 ");
		out.print(email);
		out.println("입니다.");
		out.print("<br/>");
		
		System.out.println(name);
		System.out.println(age);
		System.out.println(email);
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
