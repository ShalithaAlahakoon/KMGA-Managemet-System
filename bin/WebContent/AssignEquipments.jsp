<%@page import="java.util.*"%>
<%@page import="model.Equipment"%>
<%@page import="DBUtill.EquipmentDBUtil"%>
<%@page import="model.Location"%>
<%@page import="DBUtill.LocationDBUtil"%>
<%@page import="model.LocationEquipment"%>
<%@page import="DBUtill.LocationEquipmentDBUtil"%>

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
<jsp:include page="/LECommonLayout.jsp"></jsp:include>

<div class="main">
<h4>ASSIGN EQUIPMENTS</h4>
<br>

					
					

					
					


<form action="assignEQ" method="post">

<div class="row">

	<div class="col-sm-2"></div>
	
	<div class="col-sm-8">
	
		<div class="row">
			<div class="col">
				Location
				<select id="location" name="location">
					<option value="" selected>Select A Location</option>
					
					<%
					List<Location> locationList = LocationDBUtil.getLocations();
					for(Location loc : locationList){
						
					%>
					
						<option value="<%=loc.getLocID() %>"> <%=loc.getMapLetter() %> </option>
						<%
						}
						%>
				</select>
			</div>
			
			<div class="col">
				Equipment
				<select id="equipment" name="equipment">
					<option value="#" selected>Select a Equipment</option>
					<%
					List<Equipment> equipmentList = EquipmentDBUtil.getEquipments();
					for(Equipment eq : equipmentList){
					%>
						<option value="<%=eq.getEqID() %>"> <%=eq.getEqName() %> </option>
						<%
						}
						%>
				</select>
			</div>
		</div>
		<br>
		<input type="submit" name="AssignEQ" value="Assign Equipment" class="btn btn-success ">
	</div>
	
	<div class="col-sm-2"></div>

</div>

</form>
<br>


					<table class="table table-striped">
					<tr>
					
						<th>Location Map Letter</th>
						<th>Equipment Name</th>
					</tr>
					
					<%
					List<LocationEquipment> locationEquipmentList = LocationEquipmentDBUtil.getAssignedDetails();
					
					for(LocationEquipment le : locationEquipmentList){
					%>
					
					<tr>
						<td><%=le.getMapLetter() %></td>
						<td><%=le.getEqName() %></td>	
					</tr>
					<%
					}
					%>
					</table>
					








</div>
</body>
</html>