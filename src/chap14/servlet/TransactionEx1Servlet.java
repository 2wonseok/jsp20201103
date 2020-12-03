package chap14.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TransactionEx1Servlet
 */
@WebServlet("/sample/transaction")
public class TransactionEx1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TransactionEx1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection con = getConnection();
		try {
			con.setAutoCommit(false);
			
			// 1. ironman의 잔고 (50 빼고)
			update1(con);
			// 2. captain의 잔고 (50 더하고)
			update2(con);
			
			con.commit();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if (con != null) {
				try {
					con.rollback();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
	}
	
	private Connection getConnection() {
		String url = "jdbc:oracle:thin:@localhost:1522:orcl3";
		String user = "c##mydbms";
		String password ="admin";
		
		Connection con = null;
		
		try {
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		con = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}

	private void update1(Connection con) {

		String sql = "UPDATE bank "
								+"SET money=(money-50) "
								+"WHERE name = 'ironman'";
		
		try {
			Statement stmt = con.createStatement();
			int row = stmt.executeUpdate(sql);
			
			if (row == 0) {
				con.rollback();
			}
			
			stmt.close();
		} catch (SQLException e) {
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
	}

	private void update2(Connection con) {

		String sql = "UPDATE bank "
								+"SET money=(money+50) "
								+"WHERE name = 'captain2'";
		
		try {
			Statement stmt = con.createStatement();
			
			int row = stmt.executeUpdate(sql);
			
			if (row == 0) {
				con.rollback();
			}
			
			stmt.close();
		} catch (SQLException e) {
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
