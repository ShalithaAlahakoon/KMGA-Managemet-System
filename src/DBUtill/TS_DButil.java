package DBUtill;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Preparation;
import model.schedule;

public class TS_DButil {
	
	//----------------------DB-connection------------------------
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	//---------------------------------CREATE NEW TRAINING SECHEDULE---------------------------------------
	
	public static boolean CreateTSchedule(String idschedule, String athleteId, String date, String day, String time, String description) {
		
		boolean isSuccess = false;
		
		
		try {
			System.out.println("TS_DBUTill.java idschedule= "+idschedule);
			con = DBConnect.getConnection();
			stmt = con.createStatement();
    	    String sql = "insert into schedule values('"+idschedule+"','"+athleteId+"','"+date+"','"+day+"','"+time+"','"+description+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs>0) {
    			isSuccess=true;
    		}else {
    			isSuccess=false;
    		}
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		return isSuccess;
		
	}

	//----------------------------------------UPDATE SCHEDULE--------------------------------------------------
	
	public static boolean updateSchedule(String idschedule,String athleteId, String date, String day, String time, String description) {
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update schedule set idschedule ='"+idschedule+"', athleteId='"+athleteId+"', date='"+date+"', day='"+day+"',time='"+time+"',description ='"+description+"' where athleteId='"+athleteId+"'";
    	    int rs = stmt.executeUpdate(sql);
    	    
    		if(rs>0) {
    			isSuccess=true;
    		}else {
    			isSuccess=false;
    		}
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		
		return isSuccess;
	}

	//-----------------------------------------DELETE SCHEDULE-------------------------------------------------
	
	public static boolean deleteSchedule(String idschedule) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql ="delete from schedule where idschedule='"+idschedule+"'";
			int rs = stmt.executeUpdate(sql);
		
    		if(rs>0) {
    			isSuccess=true;
    		}
    		else {
    			isSuccess=false;
    		}
			
		}
		catch(Exception e){
			e.printStackTrace();			
		}
		
		return isSuccess;
	}

	public static List<schedule> getSchedules() {
		List<schedule> Schedule = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from kmga.schedule ";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				String scheduleID = rs.getString(1);
				System.out.println(scheduleID);
				
				schedule obj = new schedule(scheduleID);
				Schedule.add(obj);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
			}
		
		
		
		return Schedule;	
	}

	public static List<schedule> findAthleteSchedule(String athid) {
			List<schedule> Schedule = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from kmga.athlete_schedule where athleteID = '"+athid+"'; ";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				String athleteID = rs.getString(1);
//				System.out.println(scheduleID);
				String scheduleID = rs.getString(1);
//				System.out.println(scheduleID);
				
				schedule obj = new schedule(scheduleID);
				Schedule.add(obj);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
			}
		
		
		
		return Schedule;	
	}
	
	public static List<Preparation> getPreaparationList() {
		List<Preparation> Preparation = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from kmga.preparation ";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				String preparationID = rs.getString(1);
				String preparationName = rs.getString(2);
				int set = rs.getInt(3);
				int reps= rs.getInt(4);
				
				
				Preparation obj = new Preparation(preparationID, preparationName, set, reps);
				Preparation.add(obj);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
			}
		
		
		
		return Preparation;	
	}
	
	public static boolean insertPreparation(String prepID, String name, int set, int reps) {
		
		
		boolean isSuccess = false;
		if(prepID != null) {
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
		    String sql = "INSERT INTO preparation VALUES ('"+prepID+"', '"+name+"', '"+set+"', '"+reps+"');";

		    int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		}
		return isSuccess;
		
	}

	public static boolean updatePreparation(String prepID, String name, int set, int reps) {
try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "UPDATE preparation p SET preparationID = '"+prepID+"', Preparation_name = '"+name+" ', p.Set = '"+set+"', Reps = '"+reps+"' WHERE (preparationID = '"+prepID+"');";
    	    int rs = stmt.executeUpdate(sql);
    	    
    		if(rs>0) {
    			isSuccess=true;
    		}else {
    			isSuccess=false;
    		}
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		
		return isSuccess;
	
	}

	public static boolean deletePreparation(String prepID) {
try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql ="DELETE FROM kmga.preparation WHERE (preparationID = '"+prepID+"');";
			int rs = stmt.executeUpdate(sql);
		
    		if(rs>0) {
    			isSuccess=true;
    		}
    		else {
    			isSuccess=false;
    		}
			
		}
		catch(Exception e){
			e.printStackTrace();			
		}
		
		return isSuccess;
	}

}
