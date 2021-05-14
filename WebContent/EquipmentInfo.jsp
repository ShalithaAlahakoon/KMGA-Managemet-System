<%@page import="java.util.*"%>
<%@page import="model.Equipment"%>
<%@page import="DBUtill.EquipmentDBUtil"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	 <meta charset="ISO-8859-1">

	<title>ViewEquipment</title>

</head>

<body>
<jsp:include page="/LECommonLayout.jsp"></jsp:include>

<div class="main">
<h4>EQUIPMENT DETAILS</h4>
	
		<br>
	
		
		<div class="row">
		
			<div class="col-sm-2"> </div>
		
			<div class="col-sm-8">
			
			
			
				<table class="table table-striped">
						<c:forEach var="eqp" items="${eqDetails}">
						
							<c:set var="eqID" value="${eqp.eqID}"/>
							<c:set var="eqName" value="${eqp.eqName}"/>
							<c:set var="eqDescription" value="${eqp.eqDescription}"/>
							<c:set var="qty" value="${eqp.qty}"/>
							<c:set var="owner" value="${eqp.owner}"/>
							<c:set var="width" value="${eqp.width}"/>
							<c:set var="height" value="${eqp.height}"/>
							<c:set var="length" value="${eqp.length}"/>
					
					
					<tr>
						<th>Equipment ID</th>
						<td>${eqp.eqID}</td>
					</tr>
					<tr>
						<th>Equipment Name</th>
						<td>${eqp.eqName}</td>
					</tr>
					<tr>
						<th>Description</th>	
						<td>${eqp.eqDescription}</td>
					</tr>
					<tr>
						<th>Qty</th>
						<td>${eqp.qty}</td>
					</tr>
					<tr>
						<th>Owner</th>
						<td>${eqp.owner}</td>
					</tr>
					<tr>
						<th>Width</th>
						<td>${eqp.width}</td>
					</tr>
					<tr>
						<th>Height</th>	
						<td>${eqp.height}</td>
					</tr>
					<tr>
						<th>Length</th>
						<td>${eqp.length}</td>
					</tr>
					
					</c:forEach>
				</table>
			
				<br>

				<!--  Update button -->
				<c:url value="UpdateEquipment.jsp" var="equpdate">
					<c:param name="eqID" value="${eqID}"></c:param>
					<c:param name="eqName" value="${eqName}"></c:param>
					<c:param name="eqDescription" value="${eqDescription}"></c:param>
					<c:param name="qty" value="${qty}"></c:param>
					<c:param name="owner" value="${owner}"></c:param>
					<c:param name="width" value="${width}"></c:param>
					<c:param name="height" value="${height}"></c:param>
					<c:param name="length" value="${length}"></c:param>
				</c:url>
				
				<a href="${equpdate}">
				<button type="button" name="edit" class="btn btn-warning">Edit Equipment</button>
				</a>
				
				
				
				<!--  Delete button -->
				<c:url value="DeleteEquipment.jsp" var="eqdelete">
					<c:param name="eqID" value="${eqID}"></c:param>
					<c:param name="eqName" value="${eqName}"></c:param>
					<c:param name="eqDescription" value="${eqDescription}"></c:param>
					<c:param name="qty" value="${qty}"></c:param>
					<c:param name="owner" value="${owner}"></c:param>
					<c:param name="width" value="${width}"></c:param>
					<c:param name="height" value="${height}"></c:param>
					<c:param name="length" value="${length}"></c:param>
				</c:url>
				
				<a href="${eqdelete}">
				<button type="button" name="delete" class="btn btn-danger">Delete</button>	
				</a>
				
				
				
			</div> 
			<div class="col-sm-2"> </div>
		</div>
				
			
		
</div>






</body>
</html>