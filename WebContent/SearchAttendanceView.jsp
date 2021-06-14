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
	
	<h4>ATTENDANCE DETAILS</h4>
	
	
	<table>
	<c:forEach var="att" items="${elDetails}">
	
		<c:set var="AthleteID" value="${att.aID }" />
		<c:set var="AthleteName" value="${att.name }" />
		<c:set var="InTime" value="${att.inTime }" />
		<c:set var="OutTime" value="${att.outTime }" />
		<c:set var="Date" value="${att.date }" />
		
		
	
	<div class="row">
		<div class="col-sm-3"></div>
		
		<div class="col-sm-6">
		
			
			
			<div class="row">
				<div class="col">Athlete ID</div>
				<div class="col">${att.aID } </div>
			</div>
			
			<div class="row">
				<div class="col">Athlete Name</div>
				<div class="col">${att.name }</div>
			</div>
			
			<div class="row">
				<div class="col">In-Time</div>
				<div class="col">${att.inTime }</div>
			</div>
			<div class="row">
				<div class="col">Out-Time</div>
				<div class="col">${att.outTime }</div>
			</div>
			<div class="row">
				<div class="col">Date</div>
				<div class="col">${att.date }</div>
			</div>
			
		</div>
		
		<div class="col-sm-3"></div>
	</div>
		
	</c:forEach>
	</table>
	
	
	
	<c:url value="AttendanceEdit.jsp" var="elementupdate">
		<c:param name="athleteID" value="${AthleteID}" />
		<c:param name="name" value="${AthleteName}" />
		<c:param name="inTime" value="${InTime}" />
		<c:param name="outTime" value="${OutTime}" />
		<c:param name="date" value="${Date}" />
		
	</c:url>
	
	<center>
	
		<a href="${elementupdate }">
		<input type="submit" name="submit" value="Update Element" class="btn btn-success">
		</a>
	
		
	<c:url value="AttendanceDelete.jsp" var="elementdelete">
		<c:param name="athleteID" value="${AthleteID}" />
		<c:param name="name" value="${AthleteName}" />
		<c:param name="inTime" value="${InTime}" />
		<c:param name="outTime" value="${OutTime}" />
		<c:param name="date" value="${Date}" />
		
	</c:url>
		
		<a href="${elementdelete }">
		<input type="submit" name="delete" value="Delete Element" class="btn btn-success">
		</a>
		
	</center>
		
	</div>
	

</body>
</html>