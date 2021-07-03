package DBUtill;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Score;
import model.rankProgress;


public class ScoreDBUtill {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	public static boolean isSuccess;
	
	
	//Insert New Athlete Score Details
	  public static boolean addScore(String Evalution,float Score,String EventID,String ElemetID,String AthleteID){
			 boolean ans = false;
			 
			 try {
				 
				 
				 Connection connect = DBConnect.getConnection();
				 Statement stmt = connect.createStatement();
				 String sql = "insert into kmga.progress values ('"+getid()+"','"+Evalution+"','"+Score+"','"+EventID+"','"+ElemetID+"','"+AthleteID+"' )";
				 int res = stmt.executeUpdate(sql);
				 
				 if(res>0) {
					 ans=true;
					 
				 }else {
					 ans=false;
				 }
				 
			 }catch (Exception e) {
				e.getMessage();
			}
			 return ans;
		 }
		 
		 //View Score Details
			public static List<Score> viewScore(String progressId){
				 ArrayList<Score> ar = new ArrayList<>();
				
				 try {
					
					 Connection connect = DBConnect.getConnection();
					 Statement stmt = connect.createStatement();
					 String sql = "select * from kmga.progress where ProgressID = '"+progressId+"'";
					 ResultSet rs = stmt.executeQuery(sql);
					
					
					 if(rs.next()) {
						 String proId = rs.getString(1);
						 String evaluation = rs.getString(2);
						 float marks = rs.getFloat(3);
						 String eveId = rs.getString(4);
						 String eleId = rs.getString(5);
						 String athId = rs.getString(6);
						 
						
						 Score sl = new Score(proId, evaluation, marks, eveId, eleId, athId);
						 ar.add(sl);
						 
					 }
					 
					 
				 }catch (Exception e) {
					e.getMessage();
				}
				 
				 return ar;
			 }
			
			// Update Score Details
			public static boolean updateScore(String ProgressID,String Evalution,float Score,String EventID,String ElemetID,String AthleteID){
				 boolean ans = false;
				
				 
				 try {
					
					 
					 Connection connect = DBConnect.getConnection();
					 Statement stmt = connect.createStatement();
					 String sql = "update kmga.progress set ProgressID ='"+ProgressID+"', Evalution='"+Evalution+"', Score='"+Score+"', EventID='"+EventID+"',ElemetID='"+ElemetID+"',AthleteID ='"+AthleteID+"' where ProgressID='"+ProgressID+"'";
					 int res = stmt.executeUpdate(sql);
					
					 if(res>0) {
						 ans=true;
					 }
					 else {
						 ans=false;
					 }
					 
				 }catch (Exception e) {
					e.getMessage();
				}
				 
				 return ans;
			}
			
			// Delete Score Details 
			public static boolean deleteScore(String name) {
				 boolean ans = false;
				 
				 try {
					 
					 Connection connect = DBConnect.getConnection();
					 Statement stmt = connect.createStatement();
					 String sql = "delete from kmga.progress where ProgressID = '"+name+"'";
					 int resul = stmt.executeUpdate(sql);
					 
					 if(resul>0) {
						 ans=true;
					 }
					 else {
						 ans=false;
					 }
					 
				 }catch (Exception e) {
					e.getMessage();
				}
				 
				 return ans;
			}
			
			//display All Score
			public static List<Score> getScore(){
				
				ArrayList<Score> Sco = new ArrayList<>();
				
				try {
					
					 Connection connect = DBConnect.getConnection();
					 Statement stmt = connect.createStatement();
					 String sql = "select * from kmga.progress";
					 ResultSet rs = stmt.executeQuery(sql);
					
					
					 while(rs.next()) {
						 String proId = rs.getString(1);
						 String evaluation = rs.getString(2);
						 float marks = rs.getFloat(3);
						 String eveId = rs.getString(4);
						 String eleId = rs.getString(5);
						 String athId = rs.getString(6);
						 
						
						 Score sl = new Score(proId, evaluation, marks, eveId, eleId, athId);
						 Sco.add(sl);
						
					}
				}
				catch(Exception e){
					e.printStackTrace();
				}
				
				return Sco;
			}
			
			//display Rank
			public static List <rankProgress> getRank(){
				
				ArrayList< rankProgress> rank = new ArrayList<>();
				
				try {
					
					 Connection connect = DBConnect.getConnection();
					 Statement stmt = connect.createStatement();
					 String sql = "select AthleteID, avg(Score) from kmga.progress group by AthleteID order by score desc ";
					 ResultSet rs = stmt.executeQuery(sql);
					
					
					 while(rs.next()) {
	
						 String athId = rs.getString(1);
						 float total = rs.getFloat(2);
						
						 rankProgress r1 = new rankProgress(athId, total);
						 rank.add(r1);
						
					}
				}
				catch(Exception e){
					e.printStackTrace();
				}
				
				return rank;
			}
			
				public static List<Score> getEvaluationDetails(String evaluation, String athleteID){
				
				ArrayList<Score> Sco = new ArrayList<>();
				
				try {
					
					 Connection connect = DBConnect.getConnection();
					 Statement stmt = connect.createStatement();
					 String sql = "select * from progress p where p.Evalution = '"+evaluation+"' and p.AthleteID = '"+athleteID+"'";
					 ResultSet rs = stmt.executeQuery(sql);
					
					
					 while(rs.next()) {
						 String proId = rs.getString(1);
						 String Evaluation = rs.getString(2);
						 float marks = rs.getFloat(3);
						 String eveId = rs.getString(4);
						 String eleId = rs.getString(5);
						 String athId = rs.getString(6);
						 
						
						 Score sl = new Score(proId, Evaluation, marks, eveId, eleId, athId);
						 Sco.add(sl);
						
					}
				}
				catch(Exception e){
					e.printStackTrace();
				}
				
				return Sco;
			}
				
	private static java.lang.String getid() {
					
					int count = 0;
					
						
			try {
						con = DBConnect.getConnection();
						stmt = con.createStatement();
						String sql = "select count from progress_id_count;";
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
							return "P000"+count;	
						}
						else if (count<100 ) {
							return "P00"+count;
							
						}
						else if (count<1000 ) {
							return "P0"+count;
							
						}
						
						else {
							return "P"+count;
						}
						
					
					
						
					
					
				}
			


}
