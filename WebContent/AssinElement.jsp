<%@page import="java.util.*"%>
<%@page import="model.Event"%>
<%@page import="model.Element"%>
<%@page import="model.EventElement"%>
<%@page import="DBUtill.EventDBUtill"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Assign Element</title>
</head>
<body>
	<jsp:include page="/EventCommonLayout.jsp"></jsp:include>
		<h4>ASSIGN EVENT TO ELEMENT </h4>
	
	<div class = "main">
	<br>
	<br>
	<form action="assinEl" method ="post">
	
	<div class="row">
	
		
			<div class="col">
			
					Event ID
					<br><input type ="text" name="EventId">	
			</div>
			
			<div class="col">
				
					Element ID
					<br><input type ="text" name="ElementId"> 			
			</div>
			
			<div class = "col">
				<br>
				<input type="submit" name="submit" value="Assign" class="btn btn-success">
			</div>			
		</div>
		</form>
		<br>
		
		
		
		<br>
	
	<div class ="row" >
		
		
		<div class ="col">
			<h6>EVENTS</h6>
			<table class="table table-striped">
		
				<tr>
					
						<th>Event ID</th>
						<th>Event Name</th>
				</tr>
					
					<%
					List<Event> eventList = EventDBUtill.getEvent();
					
					for(Event evnt : eventList){
					%>
					
				<tr>
						<td><%=evnt.getEventId() %></td>
						<td><%=evnt.getEventName() %></td>
						
				</tr>
			
					<%
					}
					%>
			</table>
		</div>
		
		
		<div class ="col">
			<h6>ELEMENTS</h6>
			
			<table class="table table-striped">
		
				<tr>
					
						<th>Element ID</th>
						<th>Element Name</th>
						
				</tr>
					
					<%
					List<Element> elementList = EventDBUtill.getElement();
					
					for(Element elmnt : elementList){
					%>
					
				<tr>
						<td><%=elmnt.getElementId() %></td>
						<td><%=elmnt.getElementName() %></td>		

				</tr>
			
					<%
					}
					%>
			</table>
		</div>
		<div class ="col">
		<br>
			
				<table class="table table-bordered">
		
				<tr>
					
						<th>Event ID</th>
						<th>Element ID</th>
				</tr>
					
					<%
					List<EventElement> eventelementList = EventDBUtill.getEventElement();
					
					for(EventElement evntel : eventelementList){
					%>
					
				<tr>
						<td><%=evntel.geteventId() %></td>
						<td><%=evntel.getelementId() %></td>
						
				</tr>
			
					<%
					}
					%>
			</table>
				
		</div>
		
		
	</div>
	<br>
	
	
		
		
		
	
	
	

	</div>
	
</body>
</html>