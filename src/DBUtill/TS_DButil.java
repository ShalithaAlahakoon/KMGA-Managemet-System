package DBUtill;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


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
    	    String sql = "insert into sampath_schedule values('"+idschedule+"','"+athleteId+"','"+date+"','"+day+"','"+time+"','"+description+"')";
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
			String sql = "update sampath_schedule set idschedule ='"+idschedule+"', athleteId='"+athleteId+"', date='"+date+"', day='"+day+"',time='"+time+"',description ='"+description+"' where athleteId='"+athleteId+"'";
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
			String sql ="delete from sampath_schedule where idschedule='"+idschedule+"'";
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
	
}
