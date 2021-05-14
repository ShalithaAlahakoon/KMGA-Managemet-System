<%@page import="java.util.*"%>
<%@page import="model.Event"%>
<%@page import="model.Element"%>
<%@page import="DBUtill.EventDBUtill"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>
<head>
<meta charset="ISO-8859-1">
<title>All Events</title>
</head>
<body>

	<jsp:include page="/EventCommonLayout.jsp"></jsp:include>
			<h4>EVENTS</h4>
	<div class = "main">
		
		<div id ="printEvents">
			<!-- show all events -->
			<table class="table table-striped">
		
				<tr>
					
						<th>Event ID</th>
						<th>Event Name</th>
						<th>Event Symbol</th>
						<th>Category</th>
				</tr>
					
					<%
					List<Event> eventList = EventDBUtill.getEvent();
					
					for(Event evnt : eventList){
					%>
					
				<tr>
						<td><%=evnt.getEventId() %></td>
						<td><%=evnt.getEventName() %></td>
						<td><%=evnt.getEventSymbol() %></td>
						<td><%=evnt.getCategory() %></td>
						
						<td>
							<form action="viewEvent" method="post">
							<input type="submit" value ="view" class="btn btn-info">
							<input type="hidden" value="<%=evnt.getEventName()%>" name="EventName">
							</form>
						</td>
						
						
				</tr>
			
					<%
					}
					%>
			</table>
			
		</div>
		

	
	</div>
	
	
	

</body>
</html>