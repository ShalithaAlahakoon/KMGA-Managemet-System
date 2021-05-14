<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>addRecords</title>
</head>
<body>

<jsp:include page="/FinanceCommonLayout.jsp"></jsp:include>

<div class="main">

<h4>ADD RECORDS</h4>
<form action ="insertRecords" method="post">


	<table>
		<tr>
			<td>Transaction ID</td>
			<td><input type="text" name="transactionId"></td>
		</tr>

		<tr>
			<td>Date</td>
			<td><input type="date" name="date" required ></td>
		</tr>
			
		<tr>
			<td>Description</td>
			<td><textarea name="financeDescription"></textarea></td>
		</tr>
	
		<tr>
			<td>Amount</td>
			<td><input type="text" name="amount" required></td>
		</tr>
	

		<tr>
			<td>Transaction Type</td>
			<td> <select name="type">
			    <option value="capital">capital</option>
			    <option value="income">income</option>
			    <option value="expense">expenses</option>
			
			  </select></td>
		</tr>
		
		<tr>
			<td>Balance</td>
			<td><input type="text" name="balance" required></td>
		</tr>	
	
		<tr>
		
			<td><input type="submit" name="submit" value="Save" class="btn btn-success" required></td>
			
		</tr>
		
		
	</table>
	
	
</form>
</div>
</body>
</html>