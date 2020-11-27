package chap17.sample2;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class DetailServlet
 */
@WebServlet("/sample2/detail")
public class DetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// list에서 idx에 해당하는 post를 꺼내서 
		// request에 attribute로 담아서 
		// deatil.jsp에 forward
		int id = Integer.parseInt(request.getParameter("id"));
		
		ServletContext application = getServletContext();
		request.setCharacterEncoding("utf-8");
		
		List<Post> list = (List<Post>) application.getAttribute("posts");
		request.setAttribute("postView", list.get(id));
		
		String path = "/chap17/lecture/sample2/detail.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
