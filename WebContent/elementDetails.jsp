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
	
	<h4>ELEMENT DETAILS</h4>
	
	<table>
	<c:forEach var="elmnt" items="${elDetails}">
	
		<c:set var="ElementId" value="${elmnt.elementId }" />
		<c:set var="ElementName" value="${elmnt.elementName }" />
		<c:set var="Value" value="${elmnt.value }" />
		
	
	<div class="row">
		<div class="col-sm-3"></div>
		
		<div class="col-sm-6">
		
			
			
			<div class="row">
				<div class="col">Element ID</div>
				<div class="col">${elmnt.elementId } </div>
			</div>
			
			<div class="row">
				<div class="col">Element Name</div>
				<div class="col">${elmnt.elementName }</div>
			</div>
			
			<div class="row">
				<div class="col">Value</div>
				<div class="col">${elmnt.value }</div>
			</div>
			
		</div>
		
		<div class="col-sm-3"></div>
	</div>
		
	</c:forEach>
	</table>
	
	
	
	<c:url value="UpdateElement.jsp" var="elementupdate">
		<c:param name="ElementId" value="${ElementId}" />
		<c:param name="ElementName" value="${ElementName}" />
		<c:param name="Value" value="${Value}" />
		
	</c:url>
	
	<center>
	
		<a href="${elementupdate }">
		<input type="submit" name="submit" value="Update Element" class="btn btn-success">
		</a>
	
		
	<c:url value="DeleteElement.jsp" var="elementdelete">
		<c:param name="ElementId" value="${ElementId}" />
		<c:param name="ElementName" value="${ElementName}" />
		<c:param name="Value" value="${Value}" />
		
	</c:url>
		
		<a href="${elementdelete }">
		<input type="submit" name="delete" value="Delete Element" class="btn btn-success">
		</a>
		
	</center>
		
	</div>
	

</body>
</html>