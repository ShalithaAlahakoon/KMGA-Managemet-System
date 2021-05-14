package DBUtill;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Athlete;
import model.Attendance;

public class AttendanceDbUtil {
	
	public static boolean getAttendance(String ID, String Date, String InTime, String OutTime) {
		
		boolean isSuccess = false;
		//create db connection
		
		try {
			
			Connection con = DBConnect.getConnection();
			Statement stmt = con.createStatement();
			String sql = "insert into attendance values('"+ID+"','"+Date+"','"+InTime+"','"+OutTime+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				
				isSuccess = true;
				
			}else {
				
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return isSuccess;
		
	}
	
	public static List<Attendance> view() {
		
		ArrayList<Attendance> Ath = new ArrayList<>();
		
		try {
			
			Connection con = DBConnect.getConnection();
			Statement stmt = con.createStatement();
			
			String sql = "select at.AthleteID, at.FullName, a.inTime, a.outTime, a.dates from athlete at, attendance a where at.AthleteID = a.Athlete_ID";
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				String AID = rs.getString(1);
				String AName = rs.getString(2);
				String inTime = rs.getString(3);
				String outTime = rs.getString(4);
				String date = rs.getString(5);
				
				
				Attendance a = new Attendance(AID,AName,inTime,outTime,date);
				Ath.add(a);
				
			}
		}
		
		catch(Exception e) {
			
		}
		
		
		
		return Ath;
		
	}
	
public boolean edit(Attendance ath) throws ClassNotFoundException {
		
		String athleteID = ath.getaID();
		//String name = ath.getName();
		String inTime = ath.getInTime();
		String outTime = ath.getOutTime();
		String date = ath.getDate();
		
		boolean isSuccess = false;

		
		try {

			String sql = "update attendance set inTime='"+inTime+"', outTime='"+outTime+"', dates='"+date+"' where Athlete_ID='"+athleteID+"'";
			Connection con = DBConnect.getConnection();
			Statement stmt = con.createStatement();
			
			
			int rs = stmt.executeUpdate(sql);
			
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return isSuccess;

		
	}

public boolean delete(String aID) throws ClassNotFoundException {
	
	boolean isSuccess = false;
	
	try {
	
		String sql = "delete from attendance where Athlete_ID='"+aID+"'";
		Connection con = DBConnect.getConnection();
		Statement stmt = con.createStatement();
	
		int rs = stmt.executeUpdate(sql);
	
		if(rs > 0) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	return isSuccess;
	
}

}
