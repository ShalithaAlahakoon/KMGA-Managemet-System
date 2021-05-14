<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="/EventCommonLayout.jsp"></jsp:include>

	<div class = "main">
	
	<h4>ADD NEW EVENT</h4>
	
	<form action="insert" method="post">
	<div class="row">
		<div class="col-sm-3"></div>
		
		<div class="col-sm-6">
		
			<div class="row">
				<div class="col">Event ID </div>
				<div class="col"><input type="text" name="eventId"></div>
			</div>
			<div class="row">
				<div class="col">Event Name </div>
				<div class="col"><input type="text" name="eventName"></div>
			</div>
			<div class="row">
				<div class="col">Event Symbol </div>
				<div class="col"><input type="text" name="eventSymbol"></div>
			</div>
			<div class="row">
				<div class="col">Category </div>
				<div class="col"><input type="text" name="category"></div>
			</div>
			
			<input type="submit" name="submit" value="Create Event" class="btn btn-success">
			
		</div>	
		<div class="col-sm-3"></div>
	</div>
	</form>
	
	
		
	</div>

</body>
</html>