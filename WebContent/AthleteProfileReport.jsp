<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="java.util.*"%>
<%@page import="model.Achivement"%>
<%@page import="model.Athlete"%>
<%@page import="DBUtill.AthleteDBUtill"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Athlete Profile</title>
</head>
<body>
	<jsp:include page="/AthleteProfileLayout.jsp"></jsp:include>
	
	<div class="main">	
	
	<!-- personal details card -->
	<div class="card">
	
		<h5 class="card-title">PERSONAL DETAILS</h5>
		
	<c:forEach var="athlete" items="${athleteDetails}">
		
	<table class="table table-striped ">
			<tr>
				<td width="250px">ID  </td>
				<td>${athlete.athleteID}</td>
			</tr>
			<tr>
				<td> FULL NAME</td>
				<td>${athlete.fullName}</td>
			</tr>
			<tr>
				<td>DATE OF BIRTH</td>
				<td>${athlete.dob}</td>
			</tr>
			<tr>
				<td>GENDER</td>
				<td>${athlete.gender}</td>
			</tr>
			<tr>
				<td> ADDRESS</td>
				<td>${athlete.address}</td>
			</tr>
			<tr>
				<td>HEIGHT</td>
				<td>${athlete.height}</td>
			</tr>
			<tr>
				<td>WEIGHT</td>
				<td>${athlete.weight}</td>
			</tr>
			<tr>
				<td>SLSGA Registration No</td>
				<td>${athlete.SLSGARegistrationNo}</td>
			</tr>
			<tr>
				<td>NIC</td>
				<td>${athlete.NIC}</td>
			</tr>
			
			
	</table>
	</c:forEach>
	
	</div>
	<br>
	
	<!-- achivements card -->
	<div class = "card">
		<h5 class="card-title">ACHIVEMENTS</h5>
		<table  class="table table-striped ">
		<tr>
			<th>ACHIVEMENT</th>
			<th>COMPETITION</th>
			<th>VENUE</th>
			<th>DATE</th>
		</tr>
		
		<c:forEach var="achive" items="${achivementsDetails}">
		<tr>
			<td> ${achive.achivement }</td>
			<td>${achive.cmpName }</td>
			<td>${achive.venue }</td>
			<td>${achive.date }</td>
		</tr>
		</c:forEach>
		</table>
	</div>
	<br>
	
	
	
	<!-- events card -->
	<div class = "card">
		<h5 class="card-title">EVENTS</h5>
		<table  class="table table-striped ">
		<tr>
			<th>EVENT NAME</th>
			<th>EVENT SYMBOL</th>
			
		</tr>
		
		<c:forEach var="aed" items="${aeDetails}">
		<tr>
			<td> ${aed.eventName}</td>
			<td>${aed.eventSymbol }</td>
			
		</tr>
		</c:forEach>
		</table>
		
	</div>
	<br>
	
	
	
	<!-- training  card -->
	<div class = "card">
		<h5 class="card-title">TRAINING SCHEDULE</h5>
	</div>
	
	
	
	
	<c:forEach var="athlete" items="${athleteDetails}">
	
	<table>
		<tr>
			<td>
			<form action="deleteAthlete" method="post">
				<input type="submit" value="delete profile" >
				<input type="hidden" value= "${athlete.athleteID}" name="id">
			</form>
			</td>
			<td>
					<form action="updateAthlete" method="post">
						<input type="submit" value="update profile" >
						<input type="hidden" value= "${athlete.athleteID}" name="id">
						<input type="hidden" value= "${athlete.fullName}" name="name">
						<input type="hidden" value= "${athlete.dob}" name="dob">
						<input type="hidden" value= "${athlete.gender}" name="address">
						<input type="hidden" value= "${athlete.address}" name="gender">
						<input type="hidden" value= "${athlete.height}" name="height">
						<input type="hidden" value= "${athlete.weight}" name="weight">
						<input type="hidden" value= "${athlete.SLSGARegistrationNo}" name="regNo">
						<input type="hidden" value= "${athlete.NIC}" name="nic">
					</form>
			</td>
		</tr>
	</table>
	
	</c:forEach>
	
	
	
	
	
	
</div>
</body>
</html>