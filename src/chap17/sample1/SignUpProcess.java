package chap17.sample1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SignUpProcess
 */
@WebServlet("/sample1/process")
public class SignUpProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpProcess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 가입 정보 유효하면 가입 처리 후 완료 페이지로 이동 (forward)
		// 유요하지 않으면 form으로 (redirect)
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if (id != null && pw != null && !id.equals(pw)) {
				
//			List<String> list = new ArrayList<>();
//			list.add(id);
//			list.add(pw);
			
			request.setAttribute("userid", id);
			
			String path = "/chap17/lecture/sample1/done.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(path);
			dispatcher.forward(request, response);
			
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("formId", id);
			session.setAttribute("formPw", pw);
			
			String path = request.getContextPath()+"/sample1/signup";
			response.sendRedirect(path);
		}
		
	}

}
