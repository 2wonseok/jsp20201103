package DbCrudTest;

import java.util.*;
import java.sql.*;

public class MemberDao {
	public static List<Member> memberSearch(String searchN, String searchKey) {
		List<Member> search = new ArrayList<Member>();
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##lwsdb";
		String password = "admin";
		String searchName = searchN;
		String searchKeyword = searchKey;
		String sql ="SELECT userid, username, useremail, gender, birth, area, hobby, id "
				   +"FROM member " 
				   +"WHERE "+searchName+" LIKE '"+"%"+searchKeyword+"%"+"'";
		
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
//				System.out.println(sql);
				while (rs.next()) {
					Member mem = new Member();
					mem.setNum(rs.getInt("id"));
					mem.setId(rs.getString("userid"));
					mem.setName(rs.getString("username"));
					mem.setEmail(rs.getString("useremail"));
					mem.setGender(rs.getString("gender"));
					mem.setBirth(rs.getDate("birth"));
					mem.setArea(rs.getString("area"));
					mem.setHobby(rs.getString("hobby"));
					search.add(mem);
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		
		
		return search;
	}
	
	public static List<String> memberDelete(String del, String mid) {
		List<String> dels = new ArrayList<String>();
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##lwsdb";
		String password = "admin";
		
		String sql = "DELETE FROM member WHERE id='"+mid+"'";
		
		
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
			} catch(Exception e) {
				e.printStackTrace();
			}
	
		
		return dels;
	}
	
	
	public static List<Member> memberUpdate(String mid, String pw, String uname, String umail, String birth, 
											String area, String hobby) {
		List<Member> list = new ArrayList<Member>();
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
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
					Member m = new Member();
					m.setPw(rs.getString("password"));
					m.setName(rs.getString("username"));
					m.setEmail(rs.getString("useremail"));
					m.setBirth(rs.getDate("birth"));
					m.setArea(rs.getString("area"));
					m.setHobby(rs.getString("hobby"));
					list.add(m);
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		
		return list;
	}
	
	public static List<Member> memberInsert(String uid, String pw, String uname, String umail, String gender, 
											String birth, String area, String hobby) {
		List<Member> add = new ArrayList<Member>();
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##lwsdb";
		String password = "admin";
		
		String sql = "INSERT INTO MEMBER VALUES("+ "'" +uid+"'"+"," + "'" +pw+"'"+","+ "'" +uname+"'"+"," + "'" +umail+"'"+","
				+ "'" +gender+"'"+"," + "'" +birth+"'"+"," +"'" +area+"'"+"," 
				+"'" +hobby+"'"+",''"+")";
//		System.out.println(sql);
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
				Member m = new Member();
				m.setNum(rs.getInt("id"));
				m.setId(rs.getString("userid"));
				m.setPw(rs.getString("password"));
				m.setName(rs.getString("username"));
				m.setEmail(rs.getString("useremail"));
				m.setGender(rs.getString("gender"));
				m.setBirth(rs.getDate("birth"));
				m.setArea(rs.getString("area"));
				m.setHobby(rs.getString("hobby"));
				add.add(m);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}

		
		return add;
	}
	
	public static List<Member> memberList(String mid) {
		List<Member> list = new ArrayList<Member>();
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##lwsdb";
		String password = "admin";
		String myid = mid; 
		String sql = "SELECT * FROM member WHERE id='"+myid+"'";
		
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
				Member m = new Member();
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
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	public static List<Member> memberList() {
		List<Member> list = new ArrayList<Member>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##lwsdb";
		String password = "admin";
		
		String sql = "SELECT * FROM member order by id DESC";
		try {
			// 1. 클래스 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2. 커넥션 생성
			conn = DriverManager.getConnection(url, user, password);
			// 3. statement 생성
			stmt = conn.createStatement();
			// 4. 쿼리 실행
			rs = stmt.executeQuery(sql);
			
			// 5. 결과 처리
			while (rs.next()) {
				Member m = new Member();
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
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			// 6. statement 닫기
			try {
				if (stmt != null) {
					stmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			// 7. connection 닫기
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
}
