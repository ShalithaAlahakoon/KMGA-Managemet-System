package DBUtill;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Location;
import model.LocationEquipment;

public class LocationEquipmentDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null; 
	
	
	
	//Assign Equipment
	public static boolean assignEquipment(String locID,String eqID){

		boolean isSuccess = false;
		
		try {
	
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into assigned_equipment values ('"+locID+"','"+eqID+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	
	
	
	
	//Get Assigned Details
	public static ArrayList<LocationEquipment> getAssignedDetails() {
		
		
		ArrayList<LocationEquipment> locEQ = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select l.Map_Letter,e.Name from location l,equipment e, assigned_equipment ae where l.locationID=ae.locationID and e.EquipmentID= ae.EquipmentID;";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String mapLetter = rs.getString(1);
				String eqName = rs.getString(2);

				LocationEquipment leq = new LocationEquipment(mapLetter,eqName);
				locEQ.add(leq);
				
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return locEQ;
	}

	

}
