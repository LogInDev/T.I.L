package org.zerock.sample;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j2
public class DataSourceTests {
	
	@Setter(onMethod_ = {@Autowired})
	private DataSource datasource;

	@Setter(onMethod_ = {@Autowired})
	private SqlSessionFactory sqlsessionfactory;
	
	@Test
	public void testConn() {
		try {
//			Connection conn=datasource.getConnection();
			SqlSession session = sqlsessionfactory.openSession();
			Connection conn = session.getConnection();
			log.info(conn);
			log.info(session);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
