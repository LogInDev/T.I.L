package org.zerock.sample;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j2;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j2
public class JDBCTest {
	
	static {
		String oracle = "oracle.jdbc.driver.OracleDriver";
		String mysql = "com.mysql.cj.jdbc.Driver";
		try {
			Class.forName(mysql);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testConn() {
		String ourl = "jdbc:oracle:thin:@localhost:1521:XE";
		String ouser = "book_ex";
		String opass = "book_ex";
		String murl = "jdbc:mysql://192.168.0.17/mysqlhello?serverTimezone=UTC&amp;useSSL=false&amp;useUnicode=true&amp;characterEncoding=UTF-8";
		String muser = "foke1";
		String mpass = "Foke1234";
		try {
			Connection conn = DriverManager.getConnection(murl,muser,mpass);
			log.info(conn);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}


