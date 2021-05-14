<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile update</title>
</head>
<body>
<jsp:include page="/AthleteProfileLayout.jsp"></jsp:include>
<div class="main">
<h1>Athlete Profile Update page</h1>
	
	<c:forEach var="athlete" items="${athleteDetails}">
	Athlete ID : ${athlete.athleteID} <br>
	
	
	
		<form action="updateAthlete2" method ="post">
		<table>
			<tr>
				<td>Full Name</td>
				<td><input type="text" name="name" value="${athlete.fullName}"></td>
			</tr>
			<tr>
				<td>Date of Birth</td>
				<td><input type="date" name="dob" value="${athlete.dob}"></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><input type="text" name="address" value="${athlete.address}"></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td><input type="radio"  name="gender" value="MALE">
			  <label for="male">Male</label>
			  <input type="radio"  name="gender" value="FEMALE">
			  <label for="female">Female</label></td>
			</tr>
			<tr>
				<td>Height (cm)</td>
				<td><input type="number"  name="height" min="1" max="250" value="${athlete.height}"></td>
			</tr>
			<tr>
				<td>Weight (kg)</td>
				<td><input type="number"  name="weight" min="1" max="150" value="${athlete.weight}"></td>
			</tr>
			<tr>
				<td>SLSGA Registration No(if have) </td>
				<td><input type="text" name="regNo" value="${athlete.SLSGARegistrationNo}"></td>
			</tr>
			<tr>
				<td>NIC (if have)</td>
				<td><input type="text" name="nic" value="${athlete.NIC}"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="psd" value="${athlete.psd}"></td>
			</tr>
			
			
		</table>
		
		<input type ="hidden" name="id" value="${athlete.athleteID}">
		
		<input type="submit" name="submit" value="Update Athlete">
		
	</form>
	
	</c:forEach>
		
</div>
</body>
</html>