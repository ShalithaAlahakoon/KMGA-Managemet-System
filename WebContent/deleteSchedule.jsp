<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete schedule</title>

</head>
<body>

	<jsp:include page="/TSCommonLayout.jsp"></jsp:include>
	
	<div class='main'>
		<h4>DELETE ATHLETE'S TRAINING SCHEDULE</h4>


	<%
		String idschedule = request.getParameter("idschedule");
		String athleteId = request.getParameter("athleteId");
		String date = request.getParameter("date");
		String day = request.getParameter("day");
		String time = request.getParameter("time");
		String description = request.getParameter("description");
	%>
	
	<h1>DELETE SCHEDULE</h1>
	
	<form action="delete" method="post">
		<table>
			<tr>
				<td> <lable for ="idschedule">Schedule ID</lable></td>
				<td><input type="text" name="idschedule" value="<%=idschedule %>" readonly><br> </td>
			</tr>
			<tr>
				<td> <lable for ="athleteId"></lable>Athlete ID</td>
				<td> <input type ="text" name="athleteId" value="<%=athleteId %>" readonly><br> </td>
			</tr>
			<tr>
				<td> <lable for ="date"></lable>Date </td>
				<td> <input type ="text" name="date" value="<%=date %>" readonly><br> </td>
			</tr>
			<tr>
				<td> <lable for ="day"></lable>Day</td>
				<td> <input type ="text" name="day" value="<%=day %>" readonly><br> </td>
			</tr>
			<tr>
				<td> <lable for ="time"></lable>Time</td>
				<td> <input type ="text" name="time" value="<%=time %>" readonly><br> </td>
			</tr>
			<tr>
				<td> <lable for ="description"></lable>Description</td>
				<td> <input type ="text" name="description" value="<%=description %>" readonly><br> </td>
			</tr>
		
		</table>
		
		<input type="submit" class="btn btn-primary btn-sm" name="submit" value="Delete Schedule"><br>
		
	</form>
</div>
</body>
</html>