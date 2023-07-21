package dbtest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JDBCUtil {
	public static Connection getMySqlConnection() {
		Connection conn = null;
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
			System.out.println("conn ok!!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	//select close
	public static void close(ResultSet rs, PreparedStatement pstmt, Connection conn) {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//insert, update, delete close
	public static void close(PreparedStatement pstmt, Connection conn) {
		try {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
