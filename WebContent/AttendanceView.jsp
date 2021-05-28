<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import ="DBUtill.*" %>
    <%@page import ="model.*" %>
    <%@page import ="java.util.List" %>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
	.content-table {
    border-collapse: collapse;
    margin-left: auto;
    margin-right: auto;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}
	.content-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: left;
}

	.content-table th,
	.content-table td {
    padding: 12px 15px;
}
	.content-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

	.content-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

	.content-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}
	.content-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}
	.myButton {
	box-shadow: 0px 0px 0px 2px #9fb4f2;
	background:linear-gradient(to bottom, #7892c2 5%, #476e9e 100%);
	background-color:#7892c2;
	border-radius:10px;
	border:1px solid #4e6096;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:10px;
	padding:10px 20px;
	text-decoration:none;
	text-shadow:0px 1px 0px #283966;
}
.myButton:hover {
	background:linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
	background-color:#476e9e;
}
.myButton:active {
	position:relative;
	top:1px;
}

.myButton2 {
	box-shadow: 0px 0px 0px 2px #9fb4f2;
	background:linear-gradient(to bottom, #7892c2 5%, #476e9e 100%);
	background-color:#44c767;
	border-radius:10px;
	border:1px solid #18ab29;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:10px;
	padding:10px 20px;
	text-decoration:none;
	text-shadow:0px 1px 0px #2f6627;
}
.myButton2:hover {
	background:linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
	background-color:#5cbf2a;
}
.myButton2:active {
	position:relative;
	top:1px;
}

	

</style>
<jsp:include page="/AttendanceCommonLayout.jsp"></jsp:include>
<body>
<div class = "main">
<h4>Today Attendance Details</h4>
<br>


<table class="content-table">
<thead>
	<tr>
		<td> Athlete ID </td>
		<td> Name </td>
		<td> IN Time </td>
		<td> Out Time </td>
		<td> Date </td>
		<td> Edit </td>
		<td> Delete </td>
	</tr>
</thead>

<%
	List<Attendance> obj =  AttendanceDbUtil.view();;

int size = obj.size();

//Athlete a = new Athlete();

for(int i=0; size>i; i++){
	Attendance all = obj.get(i);
%>

	<c:set var="athleteID" value="<%=all.getaID()%>"/>
	<c:set var="name" value="<%=all.getName()%>"/>
	<c:set var="inTime" value="<%=all.getInTime()%>"/>
	<c:set var="outTime" value="<%=all.getOutTime()%>"/>
	<c:set var="date" value="<%=all.getDate()%>"/>

	<c:url value="AttendanceEdit.jsp" var="Update">
		<c:param name="athleteID" value="${athleteID}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="inTime" value="${inTime}"/>
		<c:param name="outTime" value="${outTime}"/>
		<c:param name="date" value="${date}"/>
	</c:url>
	
	<c:url value="AttendanceDelete.jsp" var="delete">
		<c:param name="athleteID" value="${athleteID}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="inTime" value="${inTime}"/>
		<c:param name="outTime" value="${outTime}"/>
		<c:param name="date" value="${date}"/>
	</c:url>
	<tbody>
	<tr>
		<td><%=all.getaID() %></td>
		<td><%=all.getName() %></td>
		<td><%=all.getInTime() %></td>
		<td><%=all.getOutTime() %></td>
		<td><%=all.getDate() %></td>
		
					
		
		<td> 
			<a href="${Update}" class="myButton">
				 E 
			</a>
		</td>
		<td> 
			<a href="${delete}" class="myButton2">
				 D 
			</a>
		</td>
	</tr>
	</tbody>

<% } %>

	</table>
				
</div>
</body>
</html>