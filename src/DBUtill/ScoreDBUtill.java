package DBUtill;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Score;
import model.rankProgress;


public class ScoreDBUtill {
	
	//Insert New Athlete Score Details
	  public static boolean addScore(String ProgressID,String Evalution,float Score,String EventID,String ElemetID,String AthleteID){
			 boolean ans = false;
			 
			 try {
				 
				 
				 Connection connect = DBConnect.getConnection();
				 Statement stmt = connect.createStatement();
				 String sql = "insert into kmgadb.progress values ('"+ProgressID+"','"+Evalution+"','"+Score+"','"+EventID+"','"+ElemetID+"','"+AthleteID+"' )";
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
					 String sql = "select * from kmgadb.progress where ProgressID = '"+progressId+"'";
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
					 String sql = "update kmgadb.progress set ProgressID ='"+ProgressID+"', Evalution='"+Evalution+"', Score='"+Score+"', EventID='"+EventID+"',ElemetID='"+ElemetID+"',AthleteID ='"+AthleteID+"' where ProgressID='"+ProgressID+"'";
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
					 String sql = "delete from kmgadb.progress where ProgressID = '"+name+"'";
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
					 String sql = "select * from kmgadb.progress";
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
					 String sql = "select AthleteID, avg(Score) from kmgadb.progress group by AthleteID order by score desc ";
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

}
