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
<title>viewLedger</title>
</head>
<body>
<jsp:include page="/FinanceCommonLayout.jsp"></jsp:include>

<div class="main">

	<h4>VIEW LEDGER</h4>
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
			<td><%=fin.getAmounts() %></td>
			<td><%=fin.getType()%></td>
			<td><%=fin.getBalance()%></td>
		</tr>
		<%
		}
		%>
	</table>
				
</div>
</body>
</html>