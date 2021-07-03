<%@page import="java.util.*"%>
<%@page import="model.*"%>
<%@page import="DBUtill.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View athlete's schedule</title>
</head>
<body>
	<jsp:include page="TSCommonLayout.jsp"></jsp:include>
	
	<div class='main'>
		<h4>VIEW ATHLETE'S SCHEDULE</h4>

	<form action="view" method="post">
		Athlete ID : <input type="text" name="athleteId">
		<input type="submit" class="btn btn-primary btn-sm" name="submit" value="Search">
		
	</form>
	
<table class="table table-striped">
		
				<tr>
					
						<th>Schedule ID</th>
						<th>athleteId</th>
						<th>Date</th>
						<th>Day</th>
						<th>Time</th>
						<th>Description</th>

				</tr>
					
					<%
						List<schedule> scheduleList = AthleteTrainigScheduleDBUtil.getschedule();
							for(schedule schd : scheduleList){
					%>
					
				<tr>
						<td><%=schd.getIdschedule() %></td>
						<td><%=schd.getathleteId() %></td>
						<td><%=schd.getDate() %></td>
						<td><%=schd.getDay() %></td>
						<td><%=schd.getTime() %></td>
						<td><%=schd.getDescription() %></td>
						
						
						
						
				</tr>
			
					<%
					}
					%>
</table>

				<table class="table ">
				
					<tr>
						<TH>ATHLETE ID</TH>
						<TH>FULL NAME</TH>
						<TH>VIEW</TH>
						
					
		            </tr>
		             <%
		             	
		                List<Athlete> athleteList = AthleteDBUtill.getAthletes();
     	
		                          	for(Athlete athlete : athleteList){
		             %>
					 <tr>
						<td> <%=athlete.getAthleteID() %> </td>
						<td> <%=athlete.getFullName()%> </td>
						<td><form action="#" method="post"> 
								<input type="submit" value= "VIEW" class="btn btn-primary">
								<input type="hidden" value= "<%=athlete.getAthleteID() %>" name="id" id="id">
								
								</form> </td>
			
					</tr>			
					<%	
					   }
		            %> 
		            
			</table>
	
</div>
</body>
</html>