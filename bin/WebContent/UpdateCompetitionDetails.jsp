<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body>
<jsp:include page="/CompettionCommonLayout.jsp"></jsp:include>
<div class="main">
<div align="center">

<h4>UPDATE COMPETITION DETAILS</h4><br><br><br>

<%
	String cmpId = request.getParameter("cmpId");
	String cmpName = request.getParameter("cmpName");
	String date = request.getParameter("date");
	String time = request.getParameter("time");
	String venue = request.getParameter("venue");
%>

<form action="updateComp" method ="post">


		<div class="col-sm-3"></div>

		<div class="col-sm-6">

			<div class="row">
				<div class="col">Competition ID:		</div>
				<div class="col"><input type = "text" name = "cmpId" value="<%= cmpId %>" readonly></div>
			</div>
			<div class="row">
				<div class="col">Competition Name:	</div>
				<div class="col"><input type = "text" name = "cmpName" value="<%= cmpName %>"></div>
			</div>
		    <div class="row"> 
		   		<div class="col">Date :		</div>
		   		<div class="col"><input type="DATE" name= "date" value="<%= date %>" ></div>
		   	</div>
		    <div class="row"> 
		    	<div class="col">Time:		</div>
		    	<div class="col"><input type ="TIME" name = "time" value="<%= time %>"></div>
		    </div>
		    <div class="row">
		   		 <div class="col">Venue :		</div>
		   		 <div class="col"><input type = "text" name = "venue" value="<%= venue %>"></div>
		   	</div>
		   		 
		     <input type = "submit" name = "submit" value = "UPDATE" class="btn btn-success">
		    
		</div>
		
		<div class="col-sm-3"></div>
		
    
		
	</form>
	</div>
</div>
</body>
</html>