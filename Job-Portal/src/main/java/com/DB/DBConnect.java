package com.DB;

import java.sql.*;

public class DBConnect {

		private static Connection conn;
		public static Connection getConn() {
			
			try {
				if(conn == null) {
					Class.forName("com.mysql.cj.jdbc.Driver");
					
					String url = "jdbc:mysql://localhost:3306/job_portal";
					
					conn = DriverManager.getConnection(url,"root","rekildo3012");
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
				
				
			
			
			return conn;
		}
}
