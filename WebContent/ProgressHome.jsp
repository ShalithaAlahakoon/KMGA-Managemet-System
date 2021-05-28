<%@page import="java.util.*"%>
<%@page import="model.Score"%>
<%@page import="DBUtill.ScoreDBUtill"%>


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
		    //heading
			<h1>Add / Search Score Details</h1><br><br>
			
			<form action="viewmarks" method="post">
				<label for="ProgressID">Enter Progress Id:</label> 
				<input type="text" name="search" placeholder="Enter Progress ID">
				<button type="submit" class="button btn-lg"><i></i><span>Search</span></button> 					
			</form>
			<br> <br>
			
			<table style="width:80%" class="table table-striped">
		
				<tr>					
						<th>Progress ID</th>
						<th>Evaluation</th>
						<th>Score</th>
						<th>Event ID</th>
						<th>Element ID</th>
						<th>Athlete ID</th>
				</tr>
					
					<%
					List<Score> scoreList = ScoreDBUtill.getScore();
					
					for(Score marks : scoreList){
					%>
					
				<tr>
						<td><%=marks.getProId() %></td>
						<td><%=marks.getEvaluation() %></td>
						<td><%=marks.getMarks() %></td>
						<td><%=marks.getEveId() %></td>
						<td><%=marks.getEleId() %></td>
						<td><%=marks.getAthId() %></td>												
				</tr>
			
					<%
					}
					%>
			</table>
						
				<a href="progressReport.jsp"><button type ="submit" class="button btn-lg"><span> Generate Report</span> </button></a>
								
				<a href="addScore.jsp"><button type ="submit" class="button btn-lg"><span> Add Score</span> </button></a>
			
											
		</div>

	</body>
</html>