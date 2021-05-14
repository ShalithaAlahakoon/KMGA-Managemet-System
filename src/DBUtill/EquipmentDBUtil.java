package DBUtill;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Equipment;

public class EquipmentDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null; 

	
	//insert equipments
	public static boolean insertEquipment(String eqID,String eqName,String eqDescription,String qty,String owner, String width,String height,String length) {
		
		boolean isSuccess = false;
		
		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into equipment values ('"+eqID+"','"+eqName+"','"+eqDescription+"','"+qty+"','"+owner+"','"+width+"','"+height+"','"+length+"')";
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
	
	
	
	
	
	
	
	//display All Equipments
	public static List<Equipment> getEquipments (){
		
		ArrayList<Equipment> eq = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from equipment";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String eqID = rs.getString(1);
				String eqName = rs.getString(2);
				String eqDescription = rs.getString(3);
				String qty = rs.getString(4);
				String owner = rs.getString(5);
				String width = rs.getString(6);
				String height = rs.getString(7);
				String length = rs.getString(8);
	
				Equipment equi = new Equipment(eqID,eqName,eqDescription,qty,owner,width,height,length);
				eq.add(equi);
				
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return eq;
	}
	
	
	
	
	
	
	
	//display location details
	public static List<Equipment> getEquipmentDetails (String eqID){
		
		
		ArrayList<Equipment> eq = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from equipment where EquipmentID='"+eqID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String eqID1 = rs.getString(1);
				String eqName = rs.getString(2);
				String eqDescription = rs.getString(3);
				String qty = rs.getString(4);
				String owner = rs.getString(5);
				String width = rs.getString(6);
				String height = rs.getString(7);
				String length = rs.getString(8);
				
				
				Equipment equi = new Equipment(eqID1,eqName,eqDescription,qty,owner,width,height,length);
				eq.add(equi);
				
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return eq;
	}
	
	
	
	
	
	
	//update Equipment details
	public static boolean updateEquipment(String eqID,String eqName,String eqDescription,String qty,String owner, String width,String height,String length) {
		
		System.out.println(eqID);
		System.out.println(eqName);
		System.out.println(eqDescription);
		System.out.println(qty);
		System.out.println(owner);
		System.out.println(width);
		System.out.println(height);
		System.out.println(length);

		try {
					
					con = DBConnect.getConnection();
					stmt = con.createStatement();
					String sql = "update equipment set Name='"+eqName+"', Description='"+eqDescription+"', Qty='"+qty+"', Owner='"+owner+"', Width='"+width+"', Height='"+height+"', Length='"+length+"' "
									+ "where EquipmentID='"+eqID+"'";
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
	
	
	
	
	
	
	//delete Equipment
	public static boolean deleteEquipment(String eqID) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from equipment where EquipmentID='"+eqID+"' ";
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






