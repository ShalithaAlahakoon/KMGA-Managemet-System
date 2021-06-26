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
	
	<form action="SaveEventToAthlete" method="post">
		<table>
			<tr>
				<td>Event Name</td>
				<td>
					<select id="event" name="event" REQUIRED>
						
						
							<option value="#" selected>--SELECT  EVENT--</option>
							
						<c:forEach var="event" items="${eventDetails}">
							 <option value="${event.eventId}">${event.eventName}</option>
						</c:forEach>

						</select>
					
				</td>
			</tr>
			
		</table>
		
			<% String id = (String)request.getAttribute("athleteID"); %>
			
			<input type="hidden" value="<%= id %>" name="id"></input>
			
			<input type="submit" name="submit" value="ADD EVENT">
	</form>
			
	</div>
	

</body>
</html>