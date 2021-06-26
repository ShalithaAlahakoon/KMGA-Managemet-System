 <%@page import="java.util.*"%>
<%@page import="model.Competition"%>
<%@page import="DBUtill.CompetitionDBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>View Competitions</title>
</head>
<body>
	
	<jsp:include page="/CompettionCommonLayout.jsp"></jsp:include>
	<div class = "main">
	<div align = "center">
	
	<h4>COMPETITION DETAILS</h4>
<br>
	
		<div class="row">
		
		
			<div class="col">
				
		
					<table>
					
					<table class = "table table-striped">
					
					<tr>
					
						<th>CompetitionID</th>
						<th>Competition Name</th>
						<th>Date</th>
						<th>Time</th>
						<th>Venue</th>
					</tr>
					
					<%
					List<Competition> CompetitionList = CompetitionDBUtil.getCompetition();
					
					for(Competition cmp : CompetitionList){
					%>
					
					<tr>
						<td><%=cmp.getCmpId() %></td>
						<td><%=cmp.getCmpName() %></td>
						<td><%=cmp.getDate() %></td>
						<td><%=cmp.getTime() %></td>
						<td><%=cmp.getVenue() %></td>
						<td>
							<form action="viewComp" method="post">
							<input type="submit" value ="view" class="btn btn-info">
							<input type="hidden" value="<%=cmp.getCmpName()%>" name="cmpName">
							</form>
							
							
							
						</td>
					</tr>
					<%
					}
					%>
					</table>
					 
					
				
				

					</div>
			</div>
		</div>
	</div>
</body>
</html>

