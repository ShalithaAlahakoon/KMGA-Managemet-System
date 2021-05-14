package DBUtill;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.schedule;

public class AthleteTrainigScheduleDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<schedule> validate(String athleteId){
	
	ArrayList<schedule> sch = new ArrayList<>();
	
	//----------------------DB-connection------------------------

	
	//validate
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql ="Select * from sampath_schedule where athleteId='"+athleteId+"'";
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()) {
			String idschedule = rs.getString(1);
			String athleteId1 = rs.getString(2);
			String date = rs.getString(3);
			String day = rs.getString(4);
			String time = rs.getString(5);
			String description = rs.getString(6);
			
			schedule s = new schedule(idschedule,athleteId1,date,day,time,description);
			
			sch.add(s);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return sch;
	}
	
	
	public static boolean validateAthleteID(String athleteId){
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Select * from sampath_schedule where athleteId='"+athleteId+"'";
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
	
	
	//display All schedule details
		public static List<schedule> getschedule(){
			
			ArrayList<schedule> loc = new ArrayList<>();
			
			
			
			
			
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from sampath_schedule";
				ResultSet rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					String idschedule = rs.getString(1);
					String athleteId = rs.getString(2);
					String date = rs.getString(3);
					String day = rs.getString(4);
					String time = rs.getString(5);
					String description = rs.getString(6);

					schedule l = new schedule(idschedule,athleteId,date,day,time,description);
					loc.add(l);
					
				}
			}
			catch(Exception e){
				e.printStackTrace();
			}
			
			return loc;
		}
}