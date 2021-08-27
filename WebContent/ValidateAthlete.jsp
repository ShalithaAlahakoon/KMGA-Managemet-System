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
						<td><form action="FindSchedule" method="post"> 
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