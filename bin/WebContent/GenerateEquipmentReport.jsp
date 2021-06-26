<%@page import="java.util.*"%>
<%@page import="model.Equipment"%>
<%@page import="DBUtill.EquipmentDBUtil"%>

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
	 
	<title>GenerateEquipmentReport</title>
		<link rel="stylesheet" href="styles/Common.css">
</head>
<body>

<div class="main" id="printArea">
		<h4>EQUIPMENT DETAILS REPORT</h4>
		
	
		<br>
		
					<table class="table table-striped">
					<tr>
					
						<th>Equipment ID</th>
						<th>Equipment Name</th>
						<th>Description</th>
						<th>Qty</th>
						<th>Owner</th>
						<th>Width</th>
						<th>Height</th>
						<th>Length</th>
					</tr>
					
					<%
					List<Equipment> equipmentList = EquipmentDBUtil.getEquipments();
					
					for(Equipment eq : equipmentList){
					%>
					
					<tr>
						<td><%=eq.getEqID() %></td>
						<td><%=eq.getEqName() %></td>
						<td><%=eq.getEqDescription() %></td>
						<td><%=eq.getQty() %></td>
						<td><%=eq.getOwner() %></td>
						<td><%=eq.getWidth() %></td>
						<td><%=eq.getHeight() %></td>
						<td><%=eq.getLength() %></td>
						
					</tr>
					<%
					}
					%>
					</table>
					</div>
					<br>
					<div align="center"><button onclick="printEquipmentList()" class="btn btn-info">Download Report</button></div>


					<script >
					function printEquipmentList(){
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


























</body>
</html>