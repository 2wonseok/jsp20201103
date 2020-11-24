package chap14;

import java.sql.*;
import java.util.*;

public class EmployeeDao {
	public static List<Employee> getMemberView(String id) {
		List<Employee> list = new ArrayList<Employee>();
		
		String url = "jdbc:oracle:thin:@localhost:1522:orcl3";
		String user = "c##mydbms";
		String password = "admin";
		int eno = Integer.parseInt(id);
		
		String sql = "SELECT e.eno eeno, e.ename, m.eno, m.ename MANAGER, e.hiredate, e.salary, d.dname, e.job, s.grade "
					+"FROM employee e, employee m, department d, salgrade s "
					+"WHERE e.dno = d.dno "
					+"AND e.salary BETWEEN s.losal AND s.hisal "
					+"AND e.manager = m.eno(+) "
					+"AND e.eno ="+eno+"";
	
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
				Employee m = new Employee();
				m.setEno(rs.getInt("eeno"));
				m.setEname(rs.getString("ename"));
				m.setHireDate(rs.getTimestamp("hiredate").toLocalDateTime());
				m.setSalary(rs.getInt("salary"));
				m.setDname(rs.getString("dname"));
				m.setJob(rs.getString("job"));
				m.setGrade(rs.getInt("grade"));
				m.setMename(rs.getString("MANAGER"));
				
				list.add(m);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
		
	}
	public static List<String> getNameLike(String name, boolean asc) {
		List<String> list = new ArrayList<String>();
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password = "admin";
//		String sql = "SELECT ename"
//				+ " FROM employee "
//				+ "WHERE ename LIKE '%" + name + "%' "
//				+ "ORDER BY ename";
		
		String sql = "SELECT ename "
				+ "FROM employee "
				+ "WHERE UPPER(ename) LIKE UPPER('%" + name + "%') "
				+ "ORDER BY ename";
		
		if (asc) {
			sql += " ASC";
		} else {
			sql += " DESC";
		}

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
				list.add(rs.getString("ename"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	
	public static List<String> getNameLike(String name) {
		List<String> list = new ArrayList<String>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password = "admin";
		
//		String sql = "SELECT ename "
//				+ "FROM employee "
//				+ "WHERE ename LIKE '%" + name + "%'";
		
		String sql = "SELECT ename "
				+ "FROM employee "
				+ "WHERE UPPER(ename) LIKE UPPER('%" + name + "%'"+")";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				list.add(rs.getString("ename"));
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null) {
					stmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
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
	
	
	
	public static List<String> listEmployeeName() {
		List<String> list = new ArrayList<String>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password = "admin";
		
		String sql = "SELECT ename FROM employee";
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
				list.add(rs.getString("ename"));
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
