<%@page import="java.util.*"%>
<%@page import="model.Location"%>
<%@page import="DBUtill.LocationDBUtil"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	 <meta charset="ISO-8859-1">
	      <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>	
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>
	 
	<title>GenerateLocationReport</title>
		<link rel="stylesheet" href="styles/Common.css">
</head>
<body>

<br>
<div class="main" id="printArea">
<h4>LOCATION DETAILS REPORT</h4>
<br>
		<div class="row">  
		
			<div class="col-sm-1"></div>
		
			<div class="col-sm-10">
				
		
					<table class="table table-striped">
					<tr>
					
						<th>Location ID</th>
						<th>Map Letter</th>
						<th>Description</th>
						<th>Floor Size</th>
					</tr>
					
					<%
					List<Location> locationList = LocationDBUtil.getLocations();
					
					for(Location loc : locationList){
					%>
					
					<tr>
						<td><%=loc.getLocID() %></td>
						<td><%=loc.getMapLetter() %></td>
						<td><%=loc.getLocDescription() %></td>
						<td><%=loc.getFloorSize() %></td>
						
					</tr>
					<%
					}
					%>
					</table>
					</div>
					</div>
					</div>
					<br>
					<div align="center"><button onclick="printLocationList()" class="btn btn-info">Download Report</button></div>


					<script >
					function printLocationList(){
					var element = document.getElementById("printArea");
					var opt = {
					margin: 0.5,
					filename: 'AtheletList.pdf',
					image: { type: 'jpeg', quality: 0.98 },
					html2canvas: { scale: 3 },
					jsPDF: { unit: 'in', format: 'A4', orientation: 'landscape' }
					};
					
					html2pdf().from(element).set(opt).save();
					}
					</script>
					
					
			
			<div class="col-sm-1"></div>
		
		




</body>
</html>