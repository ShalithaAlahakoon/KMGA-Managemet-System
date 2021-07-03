<%@page import="java.util.*"%>
<%@page import="model.Location"%>
<%@page import="DBUtill.LocationDBUtil"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	 <meta charset="ISO-8859-1">	
	<title>ViewLocation</title>
</head>

<body>
	<jsp:include page="/LECommonLayout.jsp"></jsp:include>

	<div class="main">
		<h4>LOCATIONS</h4>
		
	
		<br>
		<div class="row">  
		
			<div class="col-sm-4">
				<img src="images/map.jpg" width="350">
			</div>
		
			<div class="col-sm-8">
				
		
					<table class="table table-striped">
					<tr>
					
						<th>Map Letter</th>
						<th>Description</th>
						<th>View</th>
					</tr>
					
					<%
					List<Location> locationList = LocationDBUtil.getLocations();
					
					for(Location loc : locationList){
					%>
					
					<tr>
						<td><%=loc.getMapLetter() %></td>
						<td><%=loc.getLocDescription() %></td>

						
						<td>
							<form action = "viewLoc" method="post">
							<input type="submit" value="View" class="btn btn-success">
							<input type="hidden" value="<%=loc.getLocID() %>" name="locID">
							</form>
						</td>
					</tr>
					<%
					}
					%>
					</table>
					
					<br>
					<a href="GenerateLocationReport.jsp"><input type="button" name="report" value="Generate Report" class="btn btn-info"></a>
					
			</div>
		</div>
		
		
	</div>
</body>
</html>