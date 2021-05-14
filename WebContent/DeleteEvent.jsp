<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<% 
		String EventId = request.getParameter("EventId");
		String EventName = request.getParameter("EventName");
		String EventSymbol = request.getParameter("EventSymbol");
		String Category = request.getParameter("Category");
	%>

<jsp:include page="/EventCommonLayout.jsp"></jsp:include>

	<div class = "main">
	
	<h4>DELETE EVENT</h4>
	
	<form action="deleteE" method="post">
	<div class="row">
		<div class="col-sm-3"></div>
		
		<div class="col-sm-6">
		
			<div class="row">
				<div class="col">Event ID </div>
				<div class="col"><input type="text" name="eventId" value="<%= EventId %>" readonly></div>
			</div>
			<div class="row">
				<div class="col">Event Name </div>
				<div class="col"><input type="text" name="eventName" value="<%= EventName %>"readonly></div>
			</div>
			<div class="row">
				<div class="col">Event Symbol </div>
				<div class="col"><input type="text" name="eventSymbol" value="<%= EventSymbol %>"readonly></div>
			</div>
			<div class="row">
				<div class="col">Category </div>
				<div class="col"><input type="text" name="category" value="<%= Category %>"readonly></div>
			</div>
			
			<input type="submit" name="delete" value="Delete Event" class="btn btn-success">
			
		</div>	
		<div class="col-sm-3"></div>
	</div>
	</form>
	
	
		
	</div>

</body>
</html>