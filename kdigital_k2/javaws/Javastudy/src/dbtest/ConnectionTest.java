package dbtest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class ConnectionTest {

	public static void main(String[] args) {
		Connection conn = null;
		Statement stmt = null;  //옛날 쿼리창
		ResultSet rs = null;
		
		String driver = "com.mysql.cj.jdbc.Driver";
		try {
			//1. driver loading
			Class.forName(driver);
			//2. Connection
			String url = "jdbc:mysql://localhost:3306/mysqlhello";
			url += "?ServerTimezone=UTC";
			String user = "root";
			String password = "rpass";
			
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
		} finally {
				try {
					if(rs !=null) rs.close();
					if(stmt !=null) stmt.close();
					if(conn !=null) conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
		}
	}

}
