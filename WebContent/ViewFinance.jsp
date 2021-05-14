<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/FinanceCommonLayout.jsp"></jsp:include>

<div class="main">

<h4>FINANCE DETAILS</h4>

	
	
	<table class="viewFinTable">
	<c:forEach var="fin" items="${finDetails}">
	
	<c:set var="transactionId" value="${fin.transactionId}"/>
	<c:set var="date" value="${fin.date}"/>
	<c:set var="description" value="${fin.description}"/>
	<c:set var="amount" value="${fin.amount}"/>
	<c:set var="type" value="${fin.type}"/>
	<c:set var="balance" value="${fin.balance}"/>
	
	
	<tr>
		<th>Transaction Id</th>
		<td>${fin.transactionId}</td>
	</tr>
	
	<tr>
		<th>Date</th>
		<td>${fin.date}</td>
	</tr>
	
	<tr>
		<th>Description</th>
		<td>${fin.description}</td>
	</tr>
	
	<tr>
		<th>Amount</th>
		<td>${fin.amount}</td>
	</tr>
	
	<tr>
		<th>Type</th>
		<td>${fin.type}</td>
	</tr>
	
	<tr>
		<th>Balance</th>
		<td>${fin.balance}</td>
	</tr>
	
	</c:forEach>
</table>
<br>
<c:url value="UpdateFinance.jsp" var="finupdate">
	<c:param name="transactionId" value="${transactionId}"/>
	<c:param name="date" value="${date}"/>
	<c:param name="description" value="${description}"/>
	<c:param name="amount" value="${amount}"/>
	<c:param name="type" value="${type}"/>
	<c:param name="balance" value="${balance}"/>
</c:url>	

<a href="${finupdate}">
<input type="button" name="Update" value="Update"  class="btn btn-warning">
</a>



<c:url value="DeleteFinance.jsp" var="findelete">
	<c:param name="transactionId" value="${transactionId}"/>
	<c:param name="date" value="${date}"/>
	<c:param name="description" value="${description}"/>
	<c:param name="amount" value="${amount}"/>
	<c:param name="type" value="${type}"/>
	<c:param name="balance" value="${balance}"/>
</c:url>
<a href="${findelete}">
<input type ="button" name = "Delete" value = "Delete" class="btn btn-danger">
</a>

</div>
</body>
</html>