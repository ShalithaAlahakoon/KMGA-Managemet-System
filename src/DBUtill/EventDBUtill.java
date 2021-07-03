package DBUtill;

import java.util.ArrayList;
import java.util.List;

import model.Element;
import model.Event;
import model.EventElement;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class EventDBUtill {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//search element details
	public static List<Element> validateEl (String elementName){
		
		ArrayList<Element> elmnt = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql ="select * from element where ElemntName='"+elementName+"'"; 
					
			rs = stmt.executeQuery(sql);
			
			if(rs.next()){
			
				
				String elmntId = rs.getString(1);
				String elmntName = rs.getString(2);
				int value = rs.getInt(3);
				
				Element el = new Element(elmntId,elmntName,value);
				elmnt.add(el);
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
		return elmnt;
		
	}
	
	//search event details
	public static List<Event> validate (String eventName){
		
		ArrayList<Event> evnt = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql ="select * from event where EventName='"+eventName+"'"; 
					
			rs = stmt.executeQuery(sql);
			
			if(rs.next()){
			
				String evntId = rs.getString(1);
				String evntName = rs.getString(2);
				String evntSymbol= rs.getString(3);
				String category = rs.getString(4);
				
				System.out.println("EventDBUtill  eevntid= "+evntId);
				Event e = new Event(evntId,evntName,evntSymbol,category);
				evnt.add(e);
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
		return evnt;
		
	}
	
	
	//insert event
	public static boolean insertevent( String eventName, String eventSymbol, String Category) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into event values ('"+getEventid()+"','"+eventName+"','"+eventSymbol+"','"+Category+"')";
			int rs = stmt.executeUpdate(sql);
					
				if(rs > 0) {
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

	//assin eventelement
	public static boolean assinelement(String eventId, String elementId) {

		boolean isSuccess = false;

			try {
	
				con = DBConnect.getConnection();
				stmt = con.createStatement();
	
				String sql = "insert into event_element values ('"+eventId+"','"+elementId+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
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

	//insert element
	public static boolean insertelement( String elementName, String value,String eventId) {
	
	boolean isSuccess = false;
	
	try {
		
		
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "insert into element values ('"+getElementId()+"','"+elementName+"','"+value+"' )" ;
		
		int rs = stmt.executeUpdate(sql);
				
			if(rs > 0) {
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
	
	
	

	//update event
	public static boolean updateevent(String EventId, String EventName, String EventSymbol, String Category) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "update event set EventName='"+EventName+"', EventSymbol='"+EventSymbol+"', Category='"+Category+"'" + "where EventId='"+EventId+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
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
	
	//update element
		public static boolean updateelement(String ElementId, String ElementName, String Value) {
			
			boolean isSuccess = false;
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "update element set ElemntName='"+ElementName+"', value='"+Value+"'" + "where ElementId='"+ElementId+"'";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
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
		
		//display All Events
		public static List<Event> getEvent (){
			
			ArrayList<Event> evnt = new ArrayList<>();
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from event";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					String evntId = rs.getString(1);
					String evntName = rs.getString(2);
					String evntSymbol = rs.getString(3);
					String category = rs.getString(4);

					Event ev = new Event(evntId,evntName,evntSymbol,category);
					evnt.add(ev);
					
				}
			}
			catch(Exception e){
				e.printStackTrace();
			}
			
			return evnt;
		}
		//get Event name
				public static String getEventNameById (String ID){
					
					String evntName = null;
					try {
						
						con = DBConnect.getConnection();
						stmt = con.createStatement();
						String sql = "select * from event where  EventID = '"+ID+"'";
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
							evntName = rs.getString(2);	
						}
					}
					catch(Exception e){
						e.printStackTrace();
					}
					
					return evntName;
				}
		
				//get Event name
				public static String getElementNameById (String ID){
					
					String eleName = null;
					try {
						
						con = DBConnect.getConnection();
						stmt = con.createStatement();
						String sql = "select * from element where  ElementID = '"+ID+"'";
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
							eleName = rs.getString(2);	
						}
					}
					catch(Exception e){
						e.printStackTrace();
					}
					
					return eleName;
				}
		
		//display All EventElement
				public static List<EventElement> getEventElement (){
					
					ArrayList<EventElement> evntel = new ArrayList<>();
					
					try {
						
						con = DBConnect.getConnection();
						stmt = con.createStatement();
						String sql = "select * from event_element";
						rs = stmt.executeQuery(sql);
						
						while(rs.next()) {
							String eventId = rs.getString(1);
							String elmntId = rs.getString(2);

							EventElement evl = new EventElement(eventId,elmntId);
							evntel.add(evl);
							
						}
					}
					catch(Exception e){
						e.printStackTrace();
					}
					
					return evntel;
				}
		
		//display all elements
			public static List<Element> getElement(){
			
			ArrayList<Element> elmnt = new ArrayList<>();
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from element";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					String elementId = rs.getString(1);
					String elementName = rs.getString(2);
					int value = rs.getInt(3);
					

					Element elv = new Element(elementId,elementName,value);
					elmnt.add(elv);
					
				}
			}
			catch(Exception e){
				e.printStackTrace();
			}
			
			return elmnt;
		}
		
		//delete event
		public static boolean deleteevent(String EventId) {
			
			boolean isSuccess = false;
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "delete from Event where EventID ='"+EventId+"' ";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
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
		
		//delete element
		public static boolean deleteelement(String ElementId) {
			
			boolean isSuccess = false;
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "delete from element where ElementID ='"+ElementId+"' ";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
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
		
		private static java.lang.String getEventid() {
					
					int count = 0;
					
						
			try {
						con = DBConnect.getConnection();
						stmt = con.createStatement();
						String sql = "select count from kmga.event_count;";
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
							return "E000"+count;	
						}
						else if (count<100 ) {
							return "E00"+count;
							
						}
						else if (count<1000 ) {
							return "E0"+count;
							
						}
						
						else {
							return "E"+count;
						}
				}

		private static String getElementId() {
			
					int count = 0;
					
						
			try {
						con = DBConnect.getConnection();
						stmt = con.createStatement();
						String sql = "select count from kmga.element_count;";
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
							return "EL000"+count;	
						}
						else if (count<100 ) {
							return "EL00"+count;
							
						}
						else if (count<1000 ) {
							return "EL0"+count;
							
						}
						
						else {
							return "EL"+count;
						}
				}

}

