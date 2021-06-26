<%@page import="java.util.*"%>
<%@page import="model.Athlete"%>
<%@page import="DBUtill.AthleteDBUtill"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Athlete Details Management</title>

</head>
<body>

<jsp:include page="/AthleteDetailsManagementLayout.jsp"></jsp:include>

<div class ="main">
		
	
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
					<td><form action="viewAthlete" method="post"> 
							<input type="submit" value= "VIEW" class="btn btn-primary">
							<input type="hidden" value= "<%=athlete.getAthleteID() %>" name="id">
							
							</form> </td>
		
				</tr>			
				<%	
				   }
	            %> 
	            
		</table>
		
		
		

</div>
</body>
</html>