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
	<title>Generate Report</title>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>
</head>
<body>
	
	<jsp:include page="/CompettionCommonLayout.jsp"></jsp:include>
	<div class = "main">
<div align = "center">
	
<div id = "list">
	<h4>COMPETITION DETAILS</h4>
<br>
	
		<div class="row">
		
		
			<div class="col">
				
		
					<table>
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
						<td><%=cmp.getCmpName()%></td>
						<td><%=cmp.getDate() %></td>
						<td><%=cmp.getTime() %></td>
						<td><%=cmp.getVenue() %></td>
						
					</tr>
					<%
					}
					%>
					</table>
					
					</div>
					</div>
				</div>
			</div>
		</div>

	
	<div align="center"><button onclick="printCompetitionDetails()" class="btn btn-success" >Download Report</button></div>
			<script >
				function printCompetitionDetails(){
				var element = document.getElementById("list");
				var opt = {
				margin: 0.5,
				filename: 'Competition Details.pdf',
				image: { type: 'jpeg', quality: 0.98 },
				html2canvas: { scale: 3 },
				jsPDF: { unit: 'in', format: 'A4', orientation: 'landscape' }
				};
				// New Promise-based usage:
				html2pdf().from(element).set(opt).save();
				}
			
			</script>	
</body>
</html>