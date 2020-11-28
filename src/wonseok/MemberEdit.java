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

import DbCrudTest.Member;

/**
 * Servlet implementation class MemberEdit
 */
@WebServlet("/modify")
public class MemberEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberEdit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		List<MemberServlet> list = new ArrayList<MemberServlet>();
  	
  	String mid = request.getParameter("mid");
  	
  	if (mid == null) {
  		doInsert(request, response);
  		return;
  	}
  	
  	String pw = request.getParameter("pw");
  	String uname = request.getParameter("username");
  	String umail = request.getParameter("useremail");
  	String birth = request.getParameter("birth");
  	String area = request.getParameter("area");
  	String hobby = request.getParameter("hobby");
  	
  	String url = "jdbc:oracle:thin:@localhost:1522:orcl3";
  	String user = "c##lwsdb";
  	String password = "admin";
  	String sql = "UPDATE member SET password='"+pw+"',"+"username='"+uname+"',"+"useremail='"+umail+"',"+"birth='"+birth+"',"+"area='"+area+"',"+"hobby='"+hobby+"'"
								+"WHERE id="+mid+"";
  		
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
					m.setPw(rs.getString("password"));
					m.setEmail(rs.getString("useremail"));
					m.setBirth(rs.getDate("birth"));
					m.setArea(rs.getString("area"));
					m.setHobby(rs.getString("hobby"));
					list.add(m);
					request.setAttribute("list", list);
				}
			
			} catch(Exception e) {
				e.printStackTrace();
			}
		
		response.sendRedirect(request.getContextPath()+"/memberList");
		
	}
	
	private void doInsert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		List<MemberServlet> list = new ArrayList<MemberServlet>();
  	
  	String uid = request.getParameter("userid");
  	String gender = request.getParameter("gender");
  	String pw = request.getParameter("pw");
  	String uname = request.getParameter("username");
  	String umail = request.getParameter("useremail");
  	String birth = request.getParameter("birth");
  	String area = request.getParameter("area");
  	String hobby = request.getParameter("hobby");
  	
  	String url = "jdbc:oracle:thin:@localhost:1522:orcl3";
  	String user = "c##lwsdb";
  	String password = "admin";
  	String sql = "INSERT INTO MEMBER VALUES("+ "'" +uid+"'"+"," + "'" +pw+"'"+","+ "'" +uname+"'"+"," + "'" +umail+"'"+","
				+ "'" +gender+"'"+"," + "'" +birth+"'"+"," +"'" +area+"'"+"," 
				+"'" +hobby+"'"+",''"+")";
  	
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
					m.setId(rs.getString("userid"));
					m.setPw(rs.getString("password"));
					m.setName(rs.getString("username"));
					m.setEmail(rs.getString("useremail"));
					m.setGender(rs.getString("gender"));
					m.setBirth(rs.getDate("birth"));
					m.setArea(rs.getString("area"));
					m.setHobby(rs.getString("hobby"));
					list.add(m);
					request.setAttribute("list", list);
				}
			
			} catch(Exception e) {
				e.printStackTrace();
			}
		
		response.sendRedirect(request.getContextPath()+"/memberList");
		
	}

}
