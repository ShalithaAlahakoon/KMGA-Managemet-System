<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="styles/viewScore.css">
		<meta charset="ISO-8859-1">
		<title>Monthly Training Progress Management</title>
	</head>
	<body>

		<jsp:include page="/ProgressCommonLayout.jsp"></jsp:include>
		<br>
		<div class ="row">
		<div class ="col">
		
		<img src="images/img4.jpg" class="img2" alt="logo" width="350" height="350"> 
		</div>
		
		<div class = "col">
			<h1>Score Details</h1><br>
			
			<c:forEach var="detail" items="${details}">
					<c:set var="athId" value="${detail.athId}" ></c:set>
					<c:set var="eveId" value="${detail.eveId}" ></c:set>
					<c:set var="eleId" value="${detail.eleId}" ></c:set>
					<c:set var="proId" value="${detail.proId}" ></c:set>
					<c:set var="evaluation" value="${detail.evaluation}" ></c:set>
					<c:set var="marks" value="${detail.marks}" ></c:set>
			</c:forEach>
			
			
			<form action="updatescore" method="post" >
				<table>
				    <tr>
						<td>Progress ID : </td>
						<td><input type ="text" name="proId" value="${proId}" readonly><br> </td>
					</tr>
					 <tr>
						<td>Evaluation :  </td>
						<td><input type ="text" name="evaluation" value="${evaluation}"><br> </td>
					</tr>
					<tr>
						<td>Score :  </td>
						<td><input type ="text" name="marks" value="${marks}"><br> </td>
					</tr>
					<tr>
						<td>Event ID :  </td>
						<td><input type ="text" name="eveId" value="${eveId}"  readonly>  <br> </td>
					</tr>
					<tr>	
						<td>Element ID : </td>
						<td><input type ="text" name="eleId" value="${eleId}"readonly> <br> </td>
					</tr>	
					<tr>
						<td>Athlete ID : </td>
						<td><input type ="text" name="athId" value="${athId}"readonly> <br> </td>
					</tr>	
	           </table>
								
				<!-- update details -->
				<input type="submit"  class="button btn-lg"  value=  "Update">
				
			</form>
         
								
			<!-- Delete Score -->
			<form action="deletescore" method="post">
				<button type="submit" class="button btn-lg" name="proId" value="${proId}" ><span>Delete</span></button>
			</form>
						
			<a href="main.jsp"><button type="button btn-lg" class="button btn-lg"><span>back</span></button></a>
		
		</div>
	  </div>

	</body>
</html>