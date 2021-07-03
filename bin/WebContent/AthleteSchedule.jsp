<%@page import="java.util.*"%>
<%@page import="model.schedule"%>
<%@page import="DBUtill.AthleteTrainigScheduleDBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Athlete's schedule</title>
</head>
<body>
	<jsp:include page="/TSCommonLayout.jsp"></jsp:include>
	
	<div class='main'>
		<h4>ATHLETE'S TRAINING SCHEDULE</h4>

<table>
	<c:forEach var="sch" items="${scheduleDetails}">
	
	<c:set var="idschedule" value="${sch.idschedule}"/>
	<c:set var="athleteId" value="${sch.athleteId}"/>
	<c:set var="date" value="${sch.date}"/>
	<c:set var="day" value="${sch.day}"/>
	<c:set var="time" value="${sch.time}"/>
	<c:set var="description" value="${sch.description}"/>
	
	<tr>
		<td>ScheduleID:</td>
		<td>${sch.idschedule}</td>
	</tr>
	
	<tr>
		<td>athleteId:</td>
		<td>${sch.athleteId}</td>
	</tr>
	

	
	<tr>
		<td>Date:</td>
		<td>${sch.date}</td>
	</tr>
	
	<tr>
		<td>Name of day:</td>
		<td>${sch.day}</td>
	</tr>
	
	<tr>
		<td>Time:</td>
		<td>${sch.time}</td>
	</tr>
	
	<tr>
		<td>Description:</td>
		<td>${sch.description}</td>
	</tr>
	
	</c:forEach>
	
</table>
<br>

	<c:url value="UpdateTS.jsp" var="schUpdate">
		<c:param name="idschedule" value="${idschedule}"/>
		<c:param name="athleteId" value="${athleteId}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="day" value="${day}"/>
		<c:param name="time" value="${time}"/>
		<c:param name="description" value="${description}"/>
	</c:url>

	<a href="${schUpdate}">
	<input type="submit" class="btn btn-primary btn-sm" name="update" value="UPDATE">
	</a>
	
	
	<c:url value="deleteSchedule.jsp" var="schDelete">
		<c:param name="idschedule" value="${idschedule}"/>
		<c:param name="athleteId" value="${athleteId}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="day" value="${day}"/>
		<c:param name="time" value="${time}"/>
		<c:param name="description" value="${description}"/>
	</c:url>
	
	<a href="${schDelete}">
		<input type="submit" class="btn btn-primary btn-sm" name="delete" value="DELETE"><br>
	</a>

	
<br>



</div>
</body>
</html>