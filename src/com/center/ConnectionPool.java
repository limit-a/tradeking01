package com.center;

import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.apache.commons.dbcp2.ConnectionFactory;
import org.apache.commons.dbcp2.DriverManagerConnectionFactory;
import org.apache.commons.dbcp2.PoolableConnection;
import org.apache.commons.dbcp2.PoolableConnectionFactory;
import org.apache.commons.dbcp2.PoolingDriver;
import org.apache.commons.pool2.impl.GenericObjectPool;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;

public class ConnectionPool extends HttpServlet {

	@Override
	public void init() throws ServletException {

		jdbcDriver();
		ConnectionPoolMethod();

	}

	public void jdbcDriver() {

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

		} catch (ClassNotFoundException e) {

			throw new RuntimeException("driver 로드 실패", e);

		}

	}

	public void ConnectionPoolMethod() {

		try {

			String url = "jdbc:oracle:thin:@175.203.68.186:1521:orcl";
			String user = "tradeking";
			String password = "123456";
			
			ConnectionFactory conn = new DriverManagerConnectionFactory(url,
					user, password);

			PoolableConnectionFactory pool = new PoolableConnectionFactory(conn,
					null);

			GenericObjectPoolConfig<PoolableConnection> poolcon = new GenericObjectPoolConfig<PoolableConnection>();
			
			poolcon.setTimeBetweenEvictionRunsMillis(60000L * 5L);
			poolcon.setTestWhileIdle(true);
			poolcon.setMinIdle(5);
			poolcon.setMaxTotal(100);
			
			GenericObjectPool<PoolableConnection> connpool = new GenericObjectPool<>(
					pool, poolcon);
			
			pool.setPool(connpool);
			Class.forName("org.apache.commons.dbcp2.PoolingDriver");
			PoolingDriver driver = (PoolingDriver) DriverManager
					.getDriver("jdbc:apache:commons:dbcp:");
			driver.registerPool("tradeking", connpool);

		} catch (Exception e) {
			System.out.println(e);
		}

	}

}
