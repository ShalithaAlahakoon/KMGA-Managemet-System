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
	
	<jsp:include page="/EventCommonLayout.jsp"></jsp:include>
	<div class = "main">
	
	<h4>EVENT DETAILS</h4>
	
	<table>
	<c:forEach var="evnt" items="${eDetails}">
	
		<c:set var="EventId" value="${evnt.eventId }" />
		<c:set var="EventName" value="${evnt.eventName }" />
		<c:set var="EventSymbol" value="${evnt.eventSymbol }" />
		<c:set var="Category" value="${evnt.category }" />
		
	<div class="row">
		<div class="col-sm-3"></div>
		
		<div class="col-sm-6">
		
			
				<div class="row">
					<div class="col">Event ID</div>
					<div class="col">${evnt.eventId }</div>
				</div>
				<div class="row">
					<div class="col">Event Name</div>
					<div class="col">${evnt.eventName }</div>
				</div>
				<div class="row">
					<div class="col">Event Symbol</div>
					<div class="col">${evnt.eventSymbol }</div>
				</div>
				<div class="row">
					<div class="col">Category</div>
					<div class="col">${evnt.category }</div>
				</div>
			
		</div>
		<div class="col-sm-3"></div>
	</div>
		
	</c:forEach>
	</table>
	
	<c:url value="UpdateEvent.jsp" var="eventupdate">
		<c:param name="EventId" value="${EventId}" />
		<c:param name="EventName" value="${EventName}" />
		<c:param name="EventSymbol" value="${EventSymbol}" />
		<c:param name="Category" value="${Category}" />
	
	</c:url>
	
	<center>
	
	<a href="${eventupdate}">
	<input type="submit" name="submit" value="Update Event" class="btn btn-success">
	</a>
	
	<c:url value="DeleteEvent.jsp" var="eventdelete">
		<c:param name="EventId" value="${EventId}" />
		<c:param name="EventName" value="${EventName}" />
		<c:param name="EventSymbol" value="${EventSymbol}" />
		<c:param name="Category" value="${Category}" />
	
	</c:url>
	
	<a href="${eventdelete }">
	<input type="submit" name="delete" value="Delete Event" class="btn btn-success">
	</a>
	
	</center>
	
	
	
	</div>

</body>
</html>