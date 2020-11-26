package wonseok;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class MemberView
 */
@WebServlet("/memberView")
public class MemberView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberView() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String myid = request.getParameter("id");
		request.setCharacterEncoding("utf-8");
		
		List<MemberServlet> list = new ArrayList<MemberServlet>();
  	ServletConfig config = getServletConfig();
  	
  	String url = "jdbc:oracle:thin:@localhost:1522:orcl3";
  	String user = "c##lwsdb";
  	String password = "admin";
  	String sql = "SELECT * FROM member WHERE id='"+myid+"'";
//  	System.out.println(url);
  	try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		try (
				Connection conn = DriverManager.getConnection(url, user, password);
				Statement stmt = conn.createStatement();	
				) {
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					MemberServlet m = new MemberServlet();
					m.setNum(rs.getInt("id"));
					m.setId(rs.getString("userid"));
					m.setPw(rs.getString("password"));
					m.setName(rs.getString("username"));
					m.setEmail(rs.getString("useremail"));
					m.setGender(rs.getString("gender"));
					m.setBirth(rs.getDate("birth"));
					m.setArea(rs.getString("area"));
					m.setHobby(rs.getString("hobby"));
					list.add(m);
					request.setAttribute("view", list);
//					System.out.println(sql);
				}
			
			} catch(Exception e) {
				e.printStackTrace();
			}
		
			String path = "/wonseok/servletView.jsp";
			RequestDispatcher dispatcher
			= request.getRequestDispatcher(path);
			
			dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
