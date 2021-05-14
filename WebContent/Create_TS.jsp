<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create New Training Schedule</title>
</head>
<body>
	<jsp:include page="/TSCommonLayout.jsp"></jsp:include>
	
	<div class='main'>
		<h4>CREATE NEW TRAINING SCHEDULE</h4>
		
		<form action="addSchedule" method="post">
			<table>
			<tr>
			   <td> <label for="idschedule">Enter Schedule Id:</label> </td>
			   <td> <input type ="text" name="idschedule" placeholder="Enter Schedule Id"><br></td>
			</tr>
			<tr>
				<td><label for="athleteId">athleteId:</label> </td>
				<td><input type ="text" name="athleteId" placeholder="M/F0000"><br></td>
			</tr>
			<tr>
				<td><label for="date">Date:</label></td>
				<td><input type ="date" name="date" placeholder="0000-00-00"><br></td>
			</tr>
			<tr>
				<td><label for="day">Day:</label> </td>
				<td><input type ="text" name="day" placeholder="Name of day"><br></td>
			</tr>
			<tr>
				<td><label for="time">Time Duration:</label></td> 
				<td><input type ="text" name="time" placeholder="00:00 - 00:00"><br></td>
				
			</tr>
			<tr>
				<td><label for="description">Description:</label></td> 
				<td><input type="text" name="description" placeholder="Type here..." ><br></td>
			</tr>	
				
			
			</table>
			<input type="submit" name="submit" value="Create schedule" class="btn btn-primary">
		<a href="ValidateAthlete.jsp"><button type="button" class=" btn btn-primary" ><span>Back</span></button></a>
		</form>
		
	</div>
</body>
</html>