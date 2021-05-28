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
	private static Double finalBalance = 0.0;
	
	
	//insert records
	public static boolean insertFinance(String transactionId, String date, String description, Double amounts, String type) {
		
		boolean isSuccess = false;
		
		if(type.contentEquals("capital")) {
			finalBalance = getBalance()+amounts;
		}
		else if(type.contentEquals("income")) {
			finalBalance = getBalance()+amounts;
		}
		else if(type.contentEquals("expenses")) {
			finalBalance = getBalance()-amounts;
		}
		
				
		try {
			
            con = DBConnect.getConnection();
            stmt = con.createStatement();
			String sql = "Insert into finance values ('"+transactionId+"','"+date+"','"+description+"','"+amounts+"','"+type+"','"+finalBalance+"')";
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
					Double amounts = hk.getDouble(4);
					String type = hk.getString(5);
					Double balance = hk.getDouble(6);
					
					Finance f = new Finance(transactionId1,date,description,amounts,type,balance);
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
				Double amounts = hk.getDouble(4);
				String type = hk.getString(5);
				Double balance = hk.getDouble(6);
				
				Finance f = new Finance(transactionId1,date,description,amounts,type,balance);
				fin.add(f);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return fin;
	}
	
	
	
	
	
	//update records
	public static boolean updatefinance(String transactionId, String date, String description, Double amounts, String type) {
		
		if(type.contentEquals("capital")) {
			finalBalance = getBalance()+amounts;
		}
		else if(type.contentEquals("income")) {
			finalBalance = getBalance()+amounts;
		}
		else if(type.contentEquals("expenses")) {
			finalBalance = getBalance()-amounts;
		}
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
//			String sql = "Update finance set date='"+date+"',Description='"+description+"',amount='"+amounts+"',Type='"+type+"',Balance='"+finalBalance+"'"
//			+ "where TransactionID = '"+transactionId+"'";
	String sql = "Insert into finance values ('"+transactionId+"','"+date+"','"+description+"','"+amounts+"','"+type+"','"+finalBalance+"')";
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
	
	
	
	//calculate balance
		public static Double getBalance() {
			Double balance =0.0;
			
			
			List<Finance> finance = getRecords();
			
			for (Finance finance2 : finance) {
				
				System.out.println("type" +finance2.getType());
				String type = finance2.getType();
				System.out.println("amount"+finance2.getAmounts());
				
				
				
				if(type.contentEquals("capital")) {
					System.out.println("capital called");
					balance = balance + finance2.getAmounts();
				}
				else if(type.contentEquals("income")) {
					System.out.println("income called");
					balance = balance + finance2.getAmounts();
				}
				else if(type.contentEquals("expenses")) {
					System.out.println("expenses called");
					balance = balance - finance2.getAmounts();
				}

				
			}
			
			System.out.println("balance = "+balance);
			return balance;
		}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
