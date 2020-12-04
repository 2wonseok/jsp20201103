package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
 * Servlet implementation class MainServlet
 */
@WebServlet("/sample3/post/main")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Post> posts = getPosts();
		
		request.setAttribute("posts", posts);
		
		// forward
		String path = "/WEB-INF/view/chap17/main.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);

		
	}

	private List<Post> getPosts() {
		List<Post> list = new ArrayList<Post>();
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password ="admin";

		String sql = "SELECT id, title "
								+"FROM post ";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
	
			Connection con = DriverManager.getConnection(url, user, password);
			Statement stmt = con.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				Post p = new Post();
				p.setId(rs.getInt(1));
				p.setTitle(rs.getString(2));
				
				list.add(p);
			}
			
			stmt.close();
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
