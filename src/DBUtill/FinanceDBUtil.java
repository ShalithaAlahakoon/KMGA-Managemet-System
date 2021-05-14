package DBUtill;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Finance;

public class FinanceDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet hk = null;
	
	
	//insert records
	public static boolean insertFinance(String transactionId, String date, String description, String amount, String type, String balance) {
		
		boolean isSuccess = false;
				
		try {
			
            con = DBConnect.getConnection();
            stmt = con.createStatement();
			String sql = "Insert into finance values ('"+transactionId+"','"+date+"','"+description+"','"+amount+"','"+type+"','"+balance+"')";
			int hk = stmt.executeUpdate(sql);
			
			if(hk > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	
	
	
	//view records
		public static List<Finance> getRecords() {
			
			ArrayList<Finance> fin = new ArrayList<>();
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from Finance";
				hk = stmt.executeQuery(sql);
				
				while(hk.next()) {
					String transactionId1 = hk.getString(1);
					String date = hk.getString(2);
					String description = hk.getString(3);
					String amount = hk.getString(4);
					String type = hk.getString(5);
					String balance = hk.getString(6);
					
					Finance f = new Finance(transactionId1,date,description,amount,type,balance);
					fin.add(f);
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return fin;
		}
		
		
		
	
	
	//view finance Details
	public static List<Finance> getFinanceDetails(String transactionId) {
		
		
		
		ArrayList<Finance> fin = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from finance where TransactionID='"+transactionId+"' ";
			hk = stmt.executeQuery(sql);
			
			while(hk.next()) {
				String transactionId1 = hk.getString(1);
				String date = hk.getString(2);
				String description = hk.getString(3);
				String amount = hk.getString(4);
				String type = hk.getString(5);
				String balance = hk.getString(6);
				
				Finance f = new Finance(transactionId1,date,description,amount,type,balance);
				fin.add(f);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return fin;
	}
	
	
	
	
	
	//update records
	public static boolean updatefinance(String transactionId, String date, String discription, String amount, String type, String balance) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Update finance set date='"+date+"',Description='"+discription+"',amount='"+amount+"',Type='"+type+"',Balance='"+balance+"'"
					+ "where TransactionID = '"+transactionId+"'";
			int hk = stmt.executeUpdate(sql);
			
			if(hk > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		
		
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	
	
	
	//delete records
	public static boolean deletefinance(String transactionId) {
		 
		
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from finance where transactionId = '"+transactionId+"'";
			int hk = stmt.executeUpdate(sql);
			
			if(hk >0){
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
