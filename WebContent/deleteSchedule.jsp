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
		Schedule ID<input type="text" name="idschedule" value="<%=idschedule %>" readonly><br>
		Athlete ID<input type ="text" name="athleteId" value="<%=athleteId %>" readonly><br>
		Date<input type ="text" name="date" value="<%=date %>" readonly><br>
		Day<input type ="text" name="day" value="<%=day %>" readonly><br>
		time<input type ="text" name="time" value="<%=time %>" readonly><br>
		Description<input type ="text" name="description" value="<%=description %>" readonly><br>
		
		<input type="submit" class="btn btn-primary btn-sm" name="submit" value="Delete Schedule"><br>
		
	</form>
</div>
</body>
</html>