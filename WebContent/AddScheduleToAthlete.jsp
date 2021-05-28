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
	<jsp:include page="/AthleteDetailsManagementLayout.jsp"></jsp:include>

	<div class ="main">
	
	<form action="SaveScheduleToAthlete" method="post">
		<table>
			<tr>
				<td>Schedule ID</td>
				<td>
					<select id="schedule" name="schedule" REQUIRED>
						
						
							<option value="#" selected>--SELECT  SCHEDULENT--</option>
							
						<c:forEach var="SD" items="${scheduleDetails}">
							 <option value="${SD.idschedule}">${SD.idschedule}</option>
						</c:forEach>

						</select>
					
				</td>
			</tr>
			
		</table>
		
			<% String id = (String)request.getAttribute("athleteID"); %>
			
			<input type="hidden" value="<%= id %>" name="id"></input>
			
			<input type="submit" name="submit" value="ADD SCHEDULE">
	</form>
			
	</div>
	

</body>
</html>