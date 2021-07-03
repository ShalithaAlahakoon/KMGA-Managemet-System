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
		<h4>EQUIPMENTS</h4>
		
	
		<br>
		
					<table class="table table-striped">
					<tr>
					
						<th>Equipment Name</th>
						<th>Description</th>
						<th>Qty</th>
						<th>View</th>

					</tr>
					
					<%
					List<Equipment> equipmentList = EquipmentDBUtil.getEquipments();
					
					for(Equipment eq : equipmentList){
					%>
					
					<tr>
						<td><%=eq.getEqName() %></td>
						<td><%=eq.getEqDescription() %></td>
						<td><%=eq.getQty() %></td>
						
						<td>
							<form action = "viewEQ" method="post">
							<input type="submit" value="View" class="btn btn-success">
							<input type="hidden" value="<%=eq.getEqID() %>" name="eqID">
							</form>
						</td>
					</tr>
					<%
					}
					%>
					</table>
					
					<br>
					<a href="GenerateEquipmentReport.jsp"><input type="button" name="report" value="Generate Report" class="btn btn-info"></a>
					
</div>

		

</body>
</html>