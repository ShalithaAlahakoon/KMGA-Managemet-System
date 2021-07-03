<%@page import="java.util.*"%>
<%@page import="model.*"%>
<%@page import="DBUtill.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/ProgressCommonLayout.jsp"></jsp:include>
		<div class ="main">
	<!-- training  progress -->
	<div class = "card">
		<h5 class="card-title">TRAINIG PROGRESS</h5>
		
		<table  class="table table-striped ">
		<tr>
			<th>Evaluation</th>
			<th>Score</th>
			<th></th>

		</tr>
			<%
			String id = (String)request.getAttribute("athleteID");
			//out.println(id);
			ArrayList<Score> ProgressDetails = AthleteDBUtill.getAthleteProgressById(id);
			
			//out.println(ProgressDetails);
			
		
			for(Score score : ProgressDetails) {
			%>

		<tr>
		
			<td><%=score.getEvaluation() %></td>
			<td> <%=score.getMarks() %></td>
			<td> 	
				<form action="EvaluationDetailsPage" method="post"> 
					<input type="submit" value= "VIEW" class="btn btn-primary">
					<input type="hidden" value= "<%=score.getEvaluation() %>" name="Evaluation" id="Evaluation">
					<input type="hidden" value= "<%=id %>" name="Athleteid" id="Athleteid">
				</form>
			</td>
			
			
			
		</tr>
		<% } %>
		<!-- add events button -->
		
		</table>
		
		
		
		
		
		
	</div>
		<%if(ProgressDetails.isEmpty()){%>
				<form action="EvaluationDetailsPage" method="post"> 
					<input type="submit" value= "ADD NEW RECORD" class="btn btn-primary">
					<input type="hidden" value= "<%=id %>" name="Athleteid" id="Athleteid">
				</form>	
		
		<% } %>
	</div>
</body>
</html>