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
		<h4>LOCATION DETAILS</h4>
		
		<br>
	
		
		<div class="row">
		
			<div class="col-sm-4">
				<img src="images/map.jpg" width='350'>
			</div>
		
			<div class="col-sm-8">
				
				
				<table class="table table-striped">
				
				
					<c:forEach var="loc" items="${locDetails}">
					
					<c:set var="locID" value="${loc.locID}"/>
					<c:set var="mapLetter" value="${loc.mapLetter}"/>
					<c:set var="locDescription" value="${loc.locDescription}"/>
					<c:set var="floorSize" value="${loc.floorSize}"/>
					
					
					<tr>
						<th>Location ID</th>
						<td>${loc.locID}</td>
					</tr>
					<tr>
						<th>Map Letter</th>
						<td>${loc.mapLetter}</td>
					</tr>
					<tr>
						<th>Description</th>	
						<td>${loc.locDescription}</td>
					</tr>
					<tr>
						<th>Floor Size</th>
						<td>${loc.floorSize}</td>
					</tr>
					
					</c:forEach>
				</table>
				


				<br>
				<!--  Update button -->
				<c:url value="UpdateLocation.jsp" var="locupdate">
					<c:param name="locID" value="${locID}"></c:param>
					<c:param name="mapLetter" value="${mapLetter}"></c:param>
					<c:param name="locDescription" value="${locDescription}"></c:param>
					<c:param name="floorSize" value="${floorSize}"></c:param>
				</c:url>
				
				<a href="${locupdate}">
				<button type="button" name="edit" class="btn btn-warning">Edit Location</button>
				</a>
				
				
				<!--  Delete button -->
				<c:url value="DeleteLocation.jsp" var="locdelete">
					<c:param name="locID" value="${locID}"></c:param>
					<c:param name="mapLetter" value="${mapLetter}"></c:param>
					<c:param name="locDescription" value="${locDescription}"></c:param>
					<c:param name="floorSize" value="${floorSize}"></c:param>
				</c:url>
				
				<a href="${locdelete}">
				<button type="button" name="delete" class="btn btn-danger">Delete</button>	
				</a>
			
			</div>
		</div>
	</div>
</body>
</html>