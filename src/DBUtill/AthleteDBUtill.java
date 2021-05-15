package DBUtill;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Achivement;
import model.Athlete;
import model.AthleteEvent;
import model.schedule;

public class AthleteDBUtill {
	
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	public static boolean isSuccess;
	
public static List<Athlete> getAthletes() {
		
		ArrayList<Athlete> athlete = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from athlete";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				 String athleteID = rs.getString(1);
				 String fullName = rs.getString(2);
				 String Dob  = rs.getString(3);
				 String gender  = rs.getString(4);
				 String Address  = rs.getString(5);
				 String Height = rs.getString(6);
				 String  weight = rs.getString(7);
				 String SLSGARegistrationNo = rs.getString(8);
				 String NIC  = rs.getString(9);
				 String psd = rs.getString(10);
				
				Athlete athleteObj = new Athlete(athleteID, fullName, Dob, gender, Address, Height, weight, SLSGARegistrationNo, NIC,psd);
				athlete.add(athleteObj);           
				
			}
			
		} catch (Exception e) {
			
		}
		
		return athlete;	
	}

public static boolean insertAthlete(String fullName,String Dob,String gender,String  Address,String Height,String weight,String SLSGARegistrationNo,String NIC,String psd) {
	
	String id = getid(gender);
	System.out.println(id);
	boolean isSuccess = false;
	if(id != null) {
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
	    String sql = "insert into athlete values ('"+id+"','"+fullName+"','"+Dob+"','"+gender+"','"+Address+"','"+Height+"','"+weight+"','"+SLSGARegistrationNo+"','" +NIC+"','" +psd+ "')";

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

private static java.lang.String getid(String gender) {
	System.out.println(gender);
	int count = 0;
	if(gender.equals("MALE") )
	{
		System.out.println("Male executed");
		try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select Mcount from athlete_count;";
		rs = stmt.executeQuery(sql);
			if(rs.next()) {
				 count = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		++count;
		if(count<10) {
			return "M000"+count;	
		}
		else if (count<100 ) {
			return "M00"+count;
			
		}
		else if (count<1000 ) {
			return "M0"+count;
			
		}
		
		else {
			return "M"+count;
		}
		
	}
	else if(gender.equals("FEMALE"))
	{
		try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		 String sql = "select Fcount from athlete_count;";
		rs = stmt.executeQuery(sql);
			if(rs.next()) {
				 count = rs.getInt(1);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		++count;
		if(count<10) {
			return "F000"+count;	
		}
		else if (count<100 ) {
			return "F00"+count;
			
		}
		else if (count<1000 ) {
			return "F0"+count;
			
		}
		
		else {
			return "F"+count;
		}
		
		
	}
	else {
		return null;
	}
	
}


public static List<Athlete> getAthleteById(String id){
	
	
	ArrayList<Athlete> athlete = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from athlete where AthleteID='"+id+"'";
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			String athleteID = rs.getString(1);
			String fullName = rs.getString(2);
			String dob = rs.getString(3);
			String gender = rs.getString(4);
			String address = rs.getString(5);
			String height = rs.getString(6);
			String weight = rs.getString(7);
			String sLSGARegistrationNo = rs.getString(8);
			String nIC = rs.getString(9);
			String psd = rs.getString(10);
			
			Athlete athletenObj = new Athlete(athleteID, fullName, dob, gender, address, height, weight, sLSGARegistrationNo, nIC,psd);
			athlete.add(athletenObj);
		}
		
	} catch (Exception e) {
		
	}
	
	return athlete;	
	
}

public static boolean DeleteAthleteByID(String id) {
	
try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from athlete where AthleteID='"+id+"'";
		int r = stmt.executeUpdate(sql);
	
		
		if (r > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
	} catch (Exception e) {
		
	}

	return isSuccess;
	
}

public static boolean updateathlete(String id,String fullName,String Dob,String gender,String  Address,String Height,String weight,String SLSGARegistrationNo,String NIC,String psd) {
	
	
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
	    String sql = "Update athlete set AthleteID='"+id+"',FullName='"+fullName+"',DoB= '"+Dob+"',Gender='"+gender+"',Address='"+Address+"',Height='"+Height+"',Weight='"+weight+"',SLSGARegistrationNo='"+SLSGARegistrationNo+"',NIC='" +NIC+"',password='" +psd+ "'WHERE (AthleteID = '"+id+"')";

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
	
	return isSuccess;
	
	
	
	
		
}



public static List<Achivement> getAthleteAchivementById(String id) {
	
ArrayList<Achivement> achivements = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select a.achivement,c.Cmp_Name,c.venue,c.Date from athlete_competition a, competion c where athleteID='"+id+"'and a.competitionID = c.Cmp_id";
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			String achivement = rs.getString(1);
			String CmpName = rs.getString(2);
			String venue = rs.getString(3);
			String Date = rs.getString(4);
			
			Achivement obj = new Achivement(achivement, CmpName, venue, Date);
			achivements.add(obj);
			
			
		}
		
	} catch (Exception e) {
		
	}
	
	return achivements;	
}

public static ArrayList<AthleteEvent> getAthleteEventById(String id) {
	
ArrayList<AthleteEvent> ae = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select e.EventName,e.EventSymbol from athlete_event ae, event e where AthleteID = '"+id+"' and ae.EventID = e.EventID" ;
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			String eventName = rs.getString(1);
			String eventSymbol = rs.getString(2);

			AthleteEvent obj =new AthleteEvent(eventName, eventSymbol);
			ae.add(obj);	
		}
		
	} catch (Exception e) {
		
	}
	
	return ae;	
}

public static List<Achivement> getAthleteAchivements() {
	
ArrayList<Achivement> achivements = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select a.achivement,c.Cmp_id,c.Cmp_Name,c.venue,c.Date from athlete_competition a, competion c where  a.competitionID = c.Cmp_id";
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			String achivement = rs.getString(1);
			String CmpID = rs.getString(2);
			String CmpName = rs.getString(3);
			String venue = rs.getString(3);
			String Date = rs.getString(5);
			
			System.out.println("data from AthleteDBUtill get athlete achivemnts");
			System.out.println(achivement);
			System.out.println(CmpName);
			System.out.println(venue);
			System.out.println(Date);
			
			Achivement obj = new Achivement(achivement, CmpName, venue, Date,CmpID);
			achivements.add(obj);
			
			
		}
		
	} catch (Exception e) {
		
	}
	
	return achivements;	
}

public static List<schedule> getAthleteScheduleById(String id) {
	
ArrayList<schedule> Schedule = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select scheduleID from kmga.athlete_schedule where AthleteID = '"+id+"'";
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			String scheduleID = rs.getString(1);
			
			schedule obj = new schedule(scheduleID);
			Schedule.add(obj);
			
			
		}
		
	} catch (Exception e) {
		
	}
	
	return Schedule;	
}



}
