<%@page import="java.util.*"%>
<%@page import="model.*"%>
<%@page import="DBUtill.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
 		<link rel="stylesheet" type="text/css" href="styles/main.css">
		<meta charset="ISO-8859-1">
		 <center>
		<title>Monthly Training Progress Management</title>
	</head>
	<body>
		<jsp:include page="/ProgressCommonLayout.jsp"></jsp:include>
		<div class ="main">

	<!-- view Score 
>>>>>>> b0daab2 Eavaluation page added to TRAINING PROGRESS MANAGEMENT changed inter face
			<h1>Add / Search Score Details</h1><br><br>
			
			<form action="viewmarks" method="post">
				<label for="ProgressID">Enter Progress Id:</label> 
				<input type="text" name="search" placeholder="Enter Progress ID">
				<button type="submit" class="button btn-lg"><i></i><span>Search</span></button> 					
			</form>
			<br> <br>
			<table style="width:80%" class="table table-striped">
		
				<tr>					
					
						<th>Evaluation</th>
						<th>Score</th>
						<th>Event Name</th>
						<th>Element ID</th>
						<th>Athlete ID</th>
				</tr>
					
					<%
					List<Score> scoreList = ScoreDBUtill.getScore();
					
					for(Score marks : scoreList){
					%>
					
				<tr>
					
						<td><%=marks.getEvaluation() %></td>
						<td><%=marks.getMarks() %></td>
						<td><%=EventDBUtill.getEventNameById(marks.getEveId()) %></td>
						<td><%=EventDBUtill.getElementNameById(marks.getEleId()) %></td>
						<td><%=AthleteDBUtill.getAthleteNameById(marks.getAthId()) %></td>												
				</tr>
			
					<%
					}
					%>
			</table>
						
				<a href="progressReport.jsp"><button type ="submit" class="button btn-lg"><span> Generate Report</span> </button></a>
								
				<a href="addScore.jsp"><button type ="submit" class="button btn-lg"><span> Add Score</span> </button></a>
			
				-->							
		
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
						<td><form action="EvaluationPage" method="post"> 
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