<%@page import="java.util.*"%>
<%@page import="model.schedule"%>
<%@page import="DBUtill.AthleteTrainigScheduleDBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
   
<!DOCTYPE html>
<html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>
<head>
<meta charset="ISO-8859-1">
<title>Generate Training schedule report</title>
</head>
<body>
<jsp:include page="TSCommonLayout.jsp"></jsp:include>

	<div class = "main">
	
	
	<div id="printArea">
			
<table class="table table-striped">

<h4>GENERATE ATHLETE'S TRAINING SCHEDULE REPORT</h4> 
<hr>
<br>
		
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
			
	</div>
	<div align="center"><button onclick="printEventList()" class="btn btn-success">Download Report</button></div>
	
		<script >
			function printEventList(){
			var element = document.getElementById("printArea");
			var opt = {
			margin: 0.5,
			filename: 'Training_Schedule.pdf',
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