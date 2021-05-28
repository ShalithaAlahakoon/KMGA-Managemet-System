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

<h4>UPDATE RECORDS</h4>


<%
	String transactionId = request.getParameter("transactionId");
	String date = request.getParameter("date");
	String description = request.getParameter("description");
	String amounts = request.getParameter("amounts");
	String type = request.getParameter("type");
	String balance = request.getParameter("balance");
	
%>

<form action ="updateFinance" method ="post">

<table>

	<tr>
	<td>Transaction ID</td>
	<td><input type="text" name="transactionId" value="<%= transactionId %>" readonly><br></td>
	</tr>
	
	<tr>
	<td>Date</td>
	<td><input type="text" name="date" value="<%= date %>"><br></td>
	</tr>
	
	<tr>
	<td>Description</td>
	<td><input type="text" name="description" value="<%= description %>"><br></td>
	</tr>
	
	<tr>
	<td>Amount</td>
	<td><input type="text" name="amounts" value="<%= amounts %>"><br></td>
	</tr>
	
	<tr>
	<td>Type</td>
	<td> <select id="type" name="type" >
				<option value="capital"><%= type %></option>
			    <option value="capital">capital</option>
			    <option value="income">income</option>
			    <option value="expenses">expenses</option>
			
			  </select></td>
	</tr>
	
	<tr>
	<td>Balance</td>
	<td><input type="text" name="balance" value="<%= balance %>"><br></td>
	</tr>
	
	<tr>
	<td><input type="submit" name="Update" value="Update" class="btn btn-success"><br></td>
	</tr>
	
</table>	
</form>


</div>
</body>
</html>