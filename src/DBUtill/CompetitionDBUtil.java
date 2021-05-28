package DBUtill;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Competition;

public class CompetitionDBUtil {
	
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;

		//Validation
		
		public static List<Competition> validate(String cmpName){
			
			ArrayList<Competition> cmp = new ArrayList<>();
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from competion where Cmp_Name='"+cmpName+"'";
				rs = stmt.executeQuery(sql);
				
				while (rs.next()) {
					String cmpId = rs.getString(1);
					String cmpName1 = rs.getString(2);
					String date= rs.getString(3);
					String time = rs.getString(4);
					String venue = rs.getString(5);

					Competition c = new Competition(cmpId, cmpName1, date,  time, venue);
					cmp.add(c);
					
				}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		
			return cmp;
			
		
		}
		

		
		
		
		
		//Insert Competition Details

		public static boolean insertcompetion(String cmpId, String cmpName, String date, String time, String venue) { 
			
			boolean isSuccess = false;
		
			try{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into competion values ('"+cmpId+"', '"+cmpName+"', '"+date+"', '"+time+"',  '"+venue+"')";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;
			}else{
				isSuccess = false;
			}
		}
			catch(Exception e) {
				e.printStackTrace();
			}
			
				return isSuccess;
			}

		
		
		
		
		
		//display Competition Details
		
			public static List<Competition> getCompetition (){
				
				ArrayList<Competition> cmp = new ArrayList<>();
				
				try {
					
					con = DBConnect.getConnection();
					stmt = con.createStatement();
					String sql = "select * from competion";
					rs = stmt.executeQuery(sql);
					
					while(rs.next()) {
						String cmpId = rs.getString(1);
						String cmpName = rs.getString(2);
						String date= rs.getString(3);
						String time = rs.getString(4);
						String venue = rs.getString(5);

						Competition c = new Competition(cmpId, cmpName, date,  time, venue);
						cmp.add(c);
						
					}
				}
				catch(Exception e){
					e.printStackTrace();
				}
			
				
				return cmp;
			}
			
			//update competition details
		    public static boolean updatecompetitions(String cmpId, String cmpName, String date, String time, String venue) {
		    	
		    	try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "update competion set Cmp_Name ='"+cmpName+"', Date= '"+date+"', Time ='"+time+"', Venue ='"+venue+"' where Cmp_id='"+cmpId+"'";
		    		int rs = stmt.executeUpdate(sql);
		    		
		    		if(rs > 0) {
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
		    
		    public static List<Competition> getCompetitionDetails(String cmpId) {
		    	
		    	
		    	
		    	ArrayList<Competition> cmp = new ArrayList<>();
		    	
		    	try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "select * from competion where Cmp_id='"+cmpId+"'";
		    		rs = stmt.executeQuery(sql);
		    		
		    		while(rs.next()) {
		    			String cmpId1 = rs.getString(1);
		    			String cmpName = rs.getString(2);
		    			String date= rs.getString(3);
		    			String time = rs.getString(4);
		    			String venue = rs.getString(5);
		    			
		    			
		    			Competition c = new Competition(cmpId1, cmpName, date, time, venue);
		    			cmp.add(c);
		    		}
		    		
		    	}
		    	catch(Exception e) {
		    		e.printStackTrace();
		    	}	
		    	return cmp;
		    }
		    
		    
		    
		  // Delete Competition details  
		    
		    public static boolean deleteCompetitions(String cmpId) {
		    	
		    	
		    	
		    	try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "delete from competion where Cmp_id='"+cmpId+"'";
		    		int r = stmt.executeUpdate(sql);
		    		
		    		if (r > 0) {
		    			isSuccess = true;
		    		}
		    		else {
		    			isSuccess = false;
		    		}
		    		
		    	}
		    	catch (Exception e) {
		    		e.printStackTrace();
		    	}
		    	
		    	return isSuccess;
		    }
		    

	}



