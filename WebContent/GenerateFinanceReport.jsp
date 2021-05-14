<%@page import="java.util.*"%>
<%@page import="model.Finance"%>
<%@page import="DBUtill.FinanceDBUtil"%>

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
	
	<title>FINANCE REPORT</title>
	<link rel="stylesheet" href="styles/Common.css">
</head>
<body>

<br>
<div class="main" id="printArea">

<h4>FINANCE REPORT</h4>
<br>
	<table class="table table-striped">
		<tr>
						
			<th>Transaction ID</th>
			<th>Date</th>
			<th>Description</th>
			<th>Amount</th>
			<th>Type</th>
			<th>Balance</th>
		</tr>
						
		<%
		List<Finance> financeList = FinanceDBUtil.getRecords();
						
		for(Finance fin : financeList){
		%>
						
						
		<tr>
			<td><%=fin.getTransactionId()%></td>
			<td><%=fin.getDate()%></td>
			<td><%=fin.getDescription()%></td>
			<td><%=fin.getAmount() %></td>
			<td><%=fin.getType()%></td>
			<td><%=fin.getBalance()%></td>
		</tr>
		<%
		}
		%>
	</table>
	
	<br>
					<div align="center"><button onclick="printFinanceList()" class="btn btn-info">Download Finance Report</button></div>


					<script >
					function printFinanceList(){
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



</div>

</body>
</html>