<%@page import="java.util.*"%>
<%@page import="model.Event"%>
<%@page import="model.Element"%>
<%@page import="DBUtill.EventDBUtill"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
	

<!DOCTYPE html>
<html>
<head>
	 <meta charset="ISO-8859-1">
	<title>AddNewLocation</title>


</head>

<body>

	<jsp:include page="/EventCommonLayout.jsp"></jsp:include>
	<br>
	
			<h4>EVENTS</h4>
	<div class = "main">
		

		
		<div class="row">
		
			<div class="col">
		
			<form action="viewEvent" method ="post">		
					Event Name<input type ="text" name="EventName" > 
					<input type="submit" name="submit"  class="btn btn-info"> 		
			</form>
			
			</div>
			
			<div class="col">
			<form action="viewEl" method ="post">
				
					Element Name<input type ="text" name="ElementName"> 
					<input type="submit" name="submit" value="Search" class="btn btn-info"> 
				
		
			</form>
			</div>
		</div>
		<br>
		
		<div class="row">
			<div class="col"></div>
			<div class="col">
				<a href="AllEventDetails.jsp">
				<input type="submit" name="submit" value="Show All Events" class="btn btn-success"> 
				</a>
			</div>
			<div class="col"></div>
			<div class="col">
				<a href="AllElementDetails.jsp">
				<input type="submit" name="submit" value="Show All Elements" class="btn btn-success"> 
				</a>
			</div>
			<div class="col"></div>

	</div>
		

	</div>
	
	
</body>
</html>