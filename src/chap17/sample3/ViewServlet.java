package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class ViewServlet
 */
@WebServlet("/sample3/post/view")
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Post view = getView(id);
		
//		System.out.println("doGet메소드");
		request.setAttribute("view", view);
		
		String path = "/WEB-INF/view/chap17/view.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

	private Post getView(String id) {
		Post post = new Post();
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password ="admin";
		int mid = Integer.parseInt(id);
		String sql = "SELECT title, body "
								+"FROM post "
								+"WHERE id ="+mid;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
	
			Connection con = DriverManager.getConnection(url, user, password);
			Statement stmt = con.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				post.setId(mid);
				post.setTitle(rs.getString("title"));
				post.setBody(rs.getString("body"));
				
			}
			
			stmt.close();
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return post;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
