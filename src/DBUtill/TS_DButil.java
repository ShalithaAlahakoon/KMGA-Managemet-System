package DBUtill;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

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
	
}
