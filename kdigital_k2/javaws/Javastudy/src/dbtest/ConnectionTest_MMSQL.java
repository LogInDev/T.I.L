package dbtest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionTest_MMSQL {

	public static void main(String[] args) {
		Connection conn = null;
	    Statement stmt = null;
	    ResultSet rs = null;
	    
		String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		try {
			Class.forName(driver);
			
			String url = "jdbc:sqlserver://localhost:1433;databasename=hello;";
			url += "?ServerTimezone=UTC";
			String user = "sa";
			String password = "sapass";
			
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("ok!!");
			
			String sql = "select * from member";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				int age = rs.getInt("age");
				
				System.out.println(id);
				System.out.println(pw);
				System.out.println(name);
				System.out.println(age);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
				try {
					if(rs != null) rs.close();
					if(stmt != null) stmt.close();
					if(conn != null) conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
	}

}
