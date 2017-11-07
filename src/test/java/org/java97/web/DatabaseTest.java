package org.java97.web;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class DatabaseTest {
	
	@Test
	public void testConnection() throws Exception{
		
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://192.168.0.109:3306/five_db";
		String user = "java97";
		String pw = "java97";
		
		
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, user, pw);
		
		System.out.println(con);
		
		con.close();
		
	}
	
	
}
