package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/sample3/post/add")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String oper = request.getParameter("oper");
		String id = request.getParameter("id");
		
		if (oper != null && id != null && !oper.isEmpty() && !id.isEmpty()) {
			int del = delete(id);
			
			if (del == 1) {
				System.out.println("delete 성공");
			} else {
				System.out.println("delete 오류...");
			}
		}
		response.sendRedirect("main");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("id");
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		
		if (title != null && body != null && !title.isEmpty() && !body.isEmpty() && mid == null) {
			Post post = new Post();
			post.setTitle(title);
			post.setBody(body);
			
			int row = insert(post);
			
			if (row == 1) {
				System.out.println("insert 성공");
			} else {
				System.out.println("insert 오류...");
			}
		} else {
			Post pUpdate = new Post();
			pUpdate.setId(Integer.parseInt(mid));
			pUpdate.setTitle(title);
			pUpdate.setBody(body);
			
			int upRow = update(pUpdate);
			
			if (upRow == 1) {
				System.out.println("update 성공");
			} else {
				System.out.println("update 실패");
			}
		}
		response.sendRedirect("main");
	}
	
	private int delete(String id) {
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password ="admin";
		
		String sql = "DELETE FROM post "
								+"WHERE id=?";
		int del = 0;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
	
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			del = pstmt.executeUpdate();
			
			pstmt.close();
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return del;
	}
	
	private int update(Post pUpdate) {
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password ="admin";

		String sql = "UPDATE post SET title= ?, body= ? "
								+"WHERE id =?";
		int upRow = 0;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
	
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, pUpdate.getTitle());
			pstmt.setString(2, pUpdate.getBody());
			pstmt.setInt(3, pUpdate.getId());
			
			upRow = pstmt.executeUpdate();
			
			pstmt.close();
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return upRow;
	}

	private int insert(Post post) {
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password ="admin";

		String sql = "INSERT INTO post (title, body) "
								+"VALUES (?, ?) ";
		int row = 0;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
	
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, post.getTitle());
			pstmt.setString(2, post.getBody());
			
			row = pstmt.executeUpdate();
			
			
			pstmt.close();
			con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return row;
	}
	
	
	
}
