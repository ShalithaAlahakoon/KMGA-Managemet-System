package DBUtill;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/kmga";
	private static String userName = "root";
	private static String password = "@mine9825";
	private static Connection con;

	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
			System.out.println("Database connection is  success!!!");
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
	}
	

}
