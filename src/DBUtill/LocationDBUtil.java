package DBUtill;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Location;

public class LocationDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null; 

	
	//add new location
	public static boolean addNewLocation(String locID,String mapLetter, String locDescription,String floorSize){
		

		
		boolean isSuccess = false;
			
		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into location values ('"+locID+"','"+mapLetter+"','"+locDescription+"','"+floorSize+"')";
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

	
	
	//display All Locations
	public static List<Location> getLocations (){
		
		ArrayList<Location> loc = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from location";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String locID1 = rs.getString(1);
				String mapLetter = rs.getString(2);
				String locDescription = rs.getString(3);
				String floorSize = rs.getString(4);

				Location l = new Location(locID1,mapLetter,locDescription,floorSize);
				loc.add(l);
				
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return loc;
	}

	
	
	
	
	
	
	//display location details
	public static List<Location> getLocationDetails (String locID){
		
		ArrayList<Location> loc = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from location where locationID='"+locID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String locID1 = rs.getString(1);
				String mapLetter = rs.getString(2);
				String locDescription = rs.getString(3);
				String floorSize = rs.getString(4);

				Location l = new Location(locID1,mapLetter,locDescription,floorSize);
				loc.add(l);
				
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return loc;
	}
	
	
	
	
	//update location details
	public static boolean updateLocation(String locID, String mapLetter, String locDescription, String floorSize) {
		
		System.out.println(locID);
		System.out.println(mapLetter);
		System.out.println(locDescription);
		System.out.println(floorSize);
		
		
		try {
					
					con = DBConnect.getConnection();
					stmt = con.createStatement();
					String sql = "update location set Map_Letter='"+mapLetter+"',Description='"+locDescription+"',Floor_Size='"+floorSize+"' "
									+ "where locationID='"+locID+"'";
					int rs = stmt.executeUpdate(sql);
					
					if(rs>0) {
						isSuccess = true;
					}
					else {
						isSuccess = false;
					}
				}
				catch(Exception e){
					e.printStackTrace();
				}
		
		return isSuccess;
	}
	
	
	
	
	//delete location
	public static boolean deleteLocation(String locID) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from location where locationID='"+locID+"' ";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
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
	
	
	
	
	

}
