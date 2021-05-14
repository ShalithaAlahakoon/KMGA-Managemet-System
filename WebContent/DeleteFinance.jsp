<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="/FinanceCommonLayout.jsp"></jsp:include>

<div class="main">

<h4>DELETE RECORDS</h4>

<%
	String transactionId = request.getParameter("transactionId");
	String date = request.getParameter("date");
	String description = request.getParameter("description");
	String amount = request.getParameter("amount");
	String type = request.getParameter("type");
	String balance = request.getParameter("balance");
	
%>


<form action ="deleteFinance" method ="post">

<table>

	<tr>
	<td>Transaction ID</td>
	<td><input type="text" name="transactionId" value="<%= transactionId %>" readonly><br></td>
	</tr>
	
	<tr>
	<td>Date</td>
	<td><input type="text" name="date" value="<%= date %>" readonly><br></td>
	</tr>
	
	<tr>
	<td>Description</td>
	<td><input type="text" name="description" value="<%= description %>" readonly><br></td>
	</tr>
	
	<tr>
	<td>Amount</td>
	<td><input type="text" name="amount" value="<%= amount %>" readonly><br></td>
	</tr>
	
	<tr>
	<td>Type</td>
	<td> <select id="type" name="type" >
				<option value="capital"><%= type %> </option>
			    <option value="capital" disabled>capital</option>
			    <option value="income" disabled>income</option>
			    <option value="expense" disabled>expenses</option>
			
			  </select></td>
	</tr>
	
	<tr>
	<td>Balance</td>
	<td><input type="text" name="balance" value="<%= balance %>" readonly><br></td>
	</tr>
	
	<tr>
	<td><input type="submit" name="Delete" value="Delete" class="btn btn-danger"><br></td>
	</tr>
	
</table>	
</form>
</div>
</body>
</html>