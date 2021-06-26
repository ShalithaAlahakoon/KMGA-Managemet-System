<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Schedule</title>
</head>
<body>
	<jsp:include page="/TSCommonLayout.jsp"></jsp:include>
	
	<div class='main'>
		<h4>UPDATE ATHLETE'S TRAINING SCHEDULE</h4>
		
	<%
		String idschedule = request.getParameter("idschedule");
		String athleteId = request.getParameter("athleteId");
		String date = request.getParameter("date");
		String day = request.getParameter("day");
		String time = request.getParameter("time");
		String description = request.getParameter("description");
	%>

	<form action="update" method="post">
		<table>
			<tr>
				<td> <lable for ="idschedule">Schedule ID</lable> </td>
				<td> <input type="text" name="idschedule" value="<%=idschedule %>" readonly><br> </td>
			</tr>
			<tr>
				<td> <lable for ="athleteId">Athlete ID</lable></td>
				<td> <input type ="text" name="athleteId" value="<%=athleteId %>" readonly><br> </td>
			</tr>
			<tr>
				<td> <lable for ="date">Date</lable></td> 
				<td> <input type ="text" name="date" value="<%=date %>"><br> </td>
			</tr>
			<tr>
				<td> <lable for ="day">Day</lable> </td>
				<td> <input type ="text" name="day" value="<%=day %>"><br> </td>
			</tr>
			<tr>
				<td> <lable for ="time">Time</lable></td>
				<td> <input type ="text" name="time" value="<%=time %>"><br> </td>
			</tr>
			<tr>
				<td> <lable for ="description">Description</lable></td>
				<td> <input type ="text" name="description" value="<%=description %>"><br> </td>
			</tr> 
		</table>
		<input type="submit" class="btn btn-primary btn-sm" name="submit" value="Update My Data"><br>
		
	</form>
		
	</div>

</body>
</html>