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
	<jsp:include page="/AttendanceCommonLayout.jsp"></jsp:include>
			
	<div class = "main">
	
		
		<div class="row">
		
		
			<div class="col">
			
			<form action="#" method ="post">		
					Date<input type ="text" name="EventName"> 
					<input type="submit" name="submit" value="Search" class="btn btn-info"> 		
			</form>
			
			</div>
			
			<div class="col">
			<form action="#" method ="post">
				
					Athlete ID<input type ="text" name="ElementName"> 
					<input type="submit" name="submit" value="Search" class="btn btn-info"> 
				
		
			</form>
			</div>
			
		</div>
		
		
		<div class="row">
		<form action="AttendanceViewServlet" method="POST"><button class="btn btn-success">View All</button></form>
		
		</div>
	</div>
	
</body>
</html>