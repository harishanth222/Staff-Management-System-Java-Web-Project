package com.sms.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
    private static String url = "jdbc:mysql://localhost:3306/sms";
	private static String username = "root";
	private static String password = "2001Hari";
	private static Connection conn;

	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(url, username, password);
			System.out.println("Database connection is success!!!");
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return conn;
	}
	
}
