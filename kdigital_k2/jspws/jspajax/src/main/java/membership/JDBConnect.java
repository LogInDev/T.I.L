package membership;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;

public class JDBConnect {
	public Connection con = null;
	public Statement stmt = null; // +
	public PreparedStatement psmt = null; // ?
	public ResultSet rs = null;
	
	
	public JDBConnect() {
		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "musthave";
		String pwd = "1234";
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("conn 1 성공!!");
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public JDBConnect(String driver,String url,String id, String pwd) {
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("conn 2 성공!!");
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public JDBConnect(ServletContext application) {
		String driver = application.getInitParameter("OracleDriver");
		String url = application.getInitParameter("OracleURL");
		String id = application.getInitParameter("OracleId");
		String pwd = application.getInitParameter("OraclePwd");
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("conn 3 성공!!");
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(psmt != null) psmt.close();
			if(con != null) con.close();
			System.out.println("JDBC 자원 해제");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
