<%@page import="java.util.*"%>
<%@page import="model.Score"%>
<%@page import="model.rankProgress"%>
<%@page import="DBUtill.ScoreDBUtill"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
   
<!DOCTYPE html>
<html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>
<head>
<link rel="stylesheet" type="text/css" href="styles/progressReport.css">
<meta charset="ISO-8859-1">
<title>Monthly Training Progress Report</title>
</head>
<body>
<jsp:include page="/ProgressCommonLayout.jsp"></jsp:include>
   <center>
   <br><br>
	<div class = "main">
	
	
	<div id="printArea">
		<h4>Monthly Training Progress Report</h4>	<br> <br>
		
				<table style="width:50%" class="table table-striped">
			
			    <tr>					
						<th>Rank</th>
						<th>Athlete ID</th>
						<th>Total Score</th>
					
				<%
					List <rankProgress> rank = ScoreDBUtill.getRank();
					
					int count = 1;
					
					for(rankProgress read : rank){
					%>
					
				<tr>
						<td><%=count %></td> 
						<td><%=read.getAthId() %></td>
						<td><%=read.getTotal() %></td>
																	
				</tr>
				
				
			
					<%
					count++;
					
					}
					%>
			</table>   <br> <br> <br>
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
			
			
						
			
	</div>
	<div align="center"><button onclick="printEventList()" class="button btn-lg"><span>Download Report</span></button></div>
	<a href="main.jsp"><button type ="submit" class="button btn-lg"><span>Back</span></button></a>
	
		<script >
			function printEventList(){
			var element = document.getElementById("printArea");
			var opt = {
			margin: 0.5,
			filename: 'Progress Report.pdf',
			image: { type: 'jpeg', quality: 0.98 },
			html2canvas: { scale: 3 },
			jsPDF: { unit: 'in', format: 'A4', orientation: 'landscape' }
			};
			// New Promise-based usage:
			html2pdf().from(element).set(opt).save();
			}
		
		</script>	
	
	
	
	</div>

</body>
</html>