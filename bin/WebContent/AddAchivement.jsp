<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Achivementt</title>
</head>
<body>
<jsp:include page="/AthleteDetailsManagementLayout.jsp"></jsp:include>

<div class ="main">

		<form action="SaveAchivement" method="post">
			<table >
				<tr>
					<td>COMPETITION NAME  </td>
					<td>
					
						<select id="cmp" name="cmp" REQUIRED>
						
						
							<option value="#" selected>--SELECT  COMPETITION--</option>
							
						<c:forEach var="cmp" items="${competitions}">
							 <option value="${cmp.cmpId}">${cmp.cmpName}</option>
						</c:forEach>

						</select>
						
					</td>
				</tr>
				<tr>
					<td>ACHIVEMENT</td>
					<td><input type="text" name="achivment"></input></td>
				</tr>
			</table>
			
			<% String id = (String)request.getAttribute("athid"); %>
			
			<input type="hidden" value="<%= id %>" name="id"></input>
			
			<input type="submit" name="submit" value="ADD ACHIVEMENT">
		</form>
</div>

</body>
</html>