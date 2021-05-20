<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>View Info</title>
	
	
</head>
<body>
<jsp:include page="/CompettionCommonLayout.jsp"></jsp:include>
	
<div class="main">
<div align = "center">
<h4>COMPETITION DETAILS</h4><br><br>

	<table>
	<table class = "table table-striped">
					
	
	<c:forEach var="cmp" items="${competitionDetails}">
	
	<c:set var="cmpId" value="${cmp.cmpId}"/>
	<c:set var="cmpName" value="${cmp.cmpName}"/>
	<c:set var="date" value="${cmp.date}"/>
	<c:set var="time" value="${cmp.time}"/>
	<c:set var="venue" value="${cmp.venue}"/>

	
	<tr>
		<td>Competition ID</td>
		<td>${cmp.cmpId}</td>
	</tr>
	<tr>
		<td>Competition Name</td>
		<td>${cmp.cmpName}</td>
	</tr>
	<tr>
		<td>Date</td>
		<td>${cmp.date}</td>
	</tr>
	<tr>
		<td>Time</td>
		<td>${cmp.time}</td>
	</tr>
	<tr>
		<td>Venue</td>
		<td>${cmp.venue}</td>
	</tr>

	</c:forEach>
	</table>
	
	<c:url value="UpdateCompetitionDetails.jsp" var="cmpupdate">
		<c:param name="cmpId" value="${cmpId}"/>
		<c:param name="cmpName" value="${cmpName}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="time" value="${time}"/>
		<c:param name="venue" value="${venue}"/>
		
	</c:url>
	
	<a href="${cmpupdate}">
	<input type="button" name="update" value="UPDATE" class="btn btn-success">
	</a> 
	
	
	<c:url value="CompetitionDelete.jsp" var="cmpdelete">
		<c:param name="cmpId" value="${cmpId}"/>
		<c:param name="cmpName" value="${cmpName}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="time" value="${time}"/>
		<c:param name="venue" value="${venue}"/>
		
	</c:url>
	<a href ="${cmpdelete}">
	<input type="button" name="delete" value="DELETE" class="btn btn-success">
	</a>
	
	</div>
	</div>
	
	
	</body>
</html>
