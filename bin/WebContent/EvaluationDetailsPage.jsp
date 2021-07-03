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
		
			<h1><%
					String evaluation = (String)request.getAttribute("evaluation");
					String athleteId = (String)request.getAttribute("Athleteid");
				if(evaluation != null){
					out.print(evaluation);
				}
				%></h1><br><br>
			
			
			<br> <br>
			<table style="width:80%" class="table table-striped">
		
				<tr>					
						<th>Score</th>
						<th>Event Name</th>
						<th>Element Name</th>
						<th></th>	
				</tr>
					
					<%
						List<Score> scoreList = ScoreDBUtill.getEvaluationDetails(evaluation,athleteId);
					
					for(Score marks : scoreList){
					%>
					
				<tr>
						<td><%=marks.getMarks() %></td>
						<td><%=EventDBUtill.getEventNameById(marks.getEveId()) %></td>
						<td><%=EventDBUtill.getElementNameById(marks.getEleId()) %></td>
						<td>
							<form action="viewmarks" method="post"> 
								<input type="submit" value= "UPDATE OR DELETE" class="btn btn-primary">
								<input type="hidden"  value = "<%=marks.getProId() %>" name="id" id="id">
							</form>
						</td>											
				</tr>
			
					<%
					}
					%>
					
				
			</table>
						
				<!--<a href="progressReport.jsp"><button type ="submit" class="btn btn-warning"><span> Generate Report</span> </button></a>  -->
								
				<form action="AddScorePage" method="post"> 
					<input type="submit" value= "ADD SCORE" class="btn btn-warning">
					<input type="hidden" value= "<%=evaluation %>" name="Evaluation" id="Evaluation">
					<input type="hidden" value= "<%=athleteId %>" name="Athleteid" id="Athleteid">
				</form>
		</div>

</body>
</html>