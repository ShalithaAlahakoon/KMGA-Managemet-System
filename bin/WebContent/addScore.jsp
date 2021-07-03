<%@page import="java.util.*"%>
<%@page import="model.*"%>
<%@page import="DBUtill.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
 		<link rel="stylesheet" type="text/css" href="styles/addScore.css">
		<title>Monthly Training Progress Management</title>
	</head>
	<body>
		<jsp:include page="/ProgressCommonLayout.jsp"></jsp:include>
        <br>
		<div class ="row">
		<div class ="col">
		
		<img src="images/img3.jpg" class="img2" alt="logo" width="400" height="400"> 
		</div>
		<div class ="col">
			<h1>Enter Athlete Score Details</h1><br><br>
		   	<%
		   		String evaluation = (String)request.getParameter("Evaluation");
		   		String athleteId = (String)request.getParameter("Athleteid");
		   		
		   	%>
		
			<form action="addscore" method="post">
			
				<table>
				     
					 <tr>	
						<td><label for="Evalution">Enter Evaluation:</label> </td>
						<td><input type ="text" name="Evalution" value = "<%= evaluation %>" required> </td>
					</tr>
					 <tr>
						 <td><label for="Score">Enter Score:</label></td>
						<td><input type ="text" name="Score" placeholder="Enter Score" required></td>
					 </tr>	
					 
						<td><label for="EventID">Enter Event Id:</label> </td>
						<td>
							<select id="event" name="EventID" REQUIRED>
							<option value="#" selected>--SELECT--</option>
							
							<% List<Event> event = EventDBUtill.getEvent();
							
							for(Event e : event){ %>
								 <option value="<%=e.getEventId()%>"><%=e.getEventName()%></option>
							<%} %>
	
							</select>
						</td>
					 <tr>
						
						<td><label for="ElemetID">Enter Element:</label> </td>
						<td><select id="event" name="ElemetID" REQUIRED>
						
						
							<option value="#" selected>--SELECT--</option>
							
						<% List<Element> eliment = EventDBUtill.getElement();
						
						for(Element e : eliment){ %>
							 <option value="<%=e.getElementId()%>"><%=e.getElementName()%></option>
						<%} %>

						</select></td>
					 </tr>
					 <tr>
						<td><label for="AthleteID">Enter Athlete Id:</label> </td>
						<td><input type ="text" name="AthleteID" placeholder="Enter Athlete Id" value = "<%=athleteId%>"required></td>
					</tr>	
				</table>
				<input type="submit" class="button btn-lg" value="Submit">
		
			</form>
				<a href="ProgressHome.jsp"><button type ="submit" class="button btn-lg"><span>Back</span></button></a>
		</div>
	  </div>
	</body>
</html>