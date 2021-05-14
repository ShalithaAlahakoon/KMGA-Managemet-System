<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Competition Details</title>
	  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
      <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css" rel="stylesheet" />
</head>
<body>

	<jsp:include page="/CompettionCommonLayout.jsp"></jsp:include>
	
<div class="main">
<div align = "center">
	

<h3>ADD COMPETETION DETAILS</h3><br><br><br><br>

	<form action="insertComp" method ="post">
	
		<div class="col-sm-3"></div>

		<div class="col-sm-6">

			<div class="row">
				<div class="col">Competition ID: </div>
				<div class="col"><input type = "text" name = "cmpId"></div>
			</div>
			<div class="row">
				<div class="col">Competition Name:	</div>
				<div class="col"><input type = "text" name = "cmpName"></div>
			</div>
		   <div class="row"> 
		   		<div class="col">Date :		</div>
		   		<div class="col"><input type="DATE" name= "date" ></div>
		   	</div>
		    <div class="row">
		    	<div class="col">Time:		</div>
		    	<div class="col"><input type ="TIME" name = "time"></div>
		    </div>
		   <div class="row">
		   		 <div class="col">Venue :		</div>
		   		 <div class="col"><input type = "text" name = "venue"></div>
		   	</div>
		   		 
		    <input type = "submit" name = "submit" value = "SAVE" class="btn btn-success">
		    
		</div>
		
		<div class="col-sm-3"></div>
		
    
		
	</form>
</div>
</div>
</body>
</html>