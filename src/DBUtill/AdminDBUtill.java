package DBUtill;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Admin;




public class AdminDBUtill {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String name,String pass){
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where admin_name='"+name+"' and password='"+pass+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
				
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
	}

	public static List<Admin> getAdmin(String username) {
		
		ArrayList<Admin> admin = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where admin_name='"+username+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String password = rs.getString(3);
				
				Admin adminObj = new Admin(id, name, password);
				admin.add(adminObj);
			}
			
		} catch (Exception e) {
			
		}
		
		return admin;	
	}
		
}
