<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="model.Attendance" %>
    <%@page import ="DBUtill.AttendanceDbUtil" %>
    <%@page import ="java.util.List" %>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="/AttendanceCommonLayout.jsp"></jsp:include>
<style>
	.content-table {
    border-collapse: collapse;
    margin-left: auto;
    margin-right: auto;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}
	.content-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: left;
}

	.content-table th,
	.content-table td {
    padding: 12px 15px;
}
	.content-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

	.content-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

	.content-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}
	.content-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}
	.myButton {
	box-shadow: 0px 0px 0px 2px #9fb4f2;
	background:linear-gradient(to bottom, #7892c2 5%, #476e9e 100%);
	background-color:#7892c2;
	border-radius:10px;
	border:1px solid #4e6096;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:10px;
	padding:10px 20px;
	text-decoration:none;
	text-shadow:0px 1px 0px #283966;
}
.myButton:hover {
	background:linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
	background-color:#476e9e;
}
.myButton:active {
	position:relative;
	top:1px;
}

.myButton2 {
	box-shadow: 0px 0px 0px 2px #9fb4f2;
	background:linear-gradient(to bottom, #7892c2 5%, #476e9e 100%);
	background-color:#44c767;
	border-radius:10px;
	border:1px solid #18ab29;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:10px;
	padding:10px 20px;
	text-decoration:none;
	text-shadow:0px 1px 0px #2f6627;
}
.myButton2:hover {
	background:linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
	background-color:#5cbf2a;
}
.myButton2:active {
	position:relative;
	top:1px;
}

	

</style>
<body>
<div class = "main">

			
		<div id="printArea">
		<h4>Today Attendance Details</h4>
<br>
				<table class="content-table">
			<thead>
				<tr>
					<td> Athlete ID </td>
					<td> Name </td>
					<td> IN Time </td>
					<td> Out Time </td>
					<td> Date </td>
					
				</tr>
			</thead>
			
			
			<%
										List<Attendance> eventList = AttendanceDbUtil.view();
												
											for(Attendance evnt : eventList){
									%>
			
				<c:set var="athleteID" value="<%=evnt.getaID()%>"/>
				<c:set var="name" value="<%=evnt.getName()%>"/>
				<c:set var="inTime" value="<%=evnt.getInTime()%>"/>
				<c:set var="outTime" value="<%=evnt.getOutTime()%>"/>
				<c:set var="date" value="<%=evnt.getDate()%>"/>
			
			
				<tbody>
				<tr>
					<td><%=evnt.getaID() %></td>
					<td><%=evnt.getName() %></td>
					<td><%=evnt.getInTime() %></td>
					<td><%=evnt.getOutTime() %></td>
					<td><%=evnt.getDate() %></td>
					
				</tr>
				</tbody>
			
			<% } %>
			
				</table>
				<br>
				
		</div>	
				
		
			
			<div align="center"><button onclick="printAttendance()" class="btn btn-info">Download Report</button></div>
			
				<script >
					function printAttendance(){
					var element = document.getElementById("printArea");
					var opt = {
					margin: 0.5,
					filename: 'Attendance.pdf',
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