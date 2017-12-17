package com.hy.assj;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:/config/spring/*.xml"})
public class DataSourceTest {
	
	@Autowired
	private DataSource ds;
	
	@Test
	public void testConnection() {
		try (Connection con = ds.getConnection()) {
			System.out.println("커넥션 테스트:" + con);
		} catch (SQLException e) {
			e.printStackTrace();
		} 
	}
	
}
