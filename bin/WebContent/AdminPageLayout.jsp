<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	 <meta charset="ISO-8859-1">
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
	<title>AddNewLocation</title>

	<link rel="stylesheet" href="styles/Sidebar.css">
	<link rel="stylesheet" href="styles/Common.css">

</head>

<body>

	<div class="HeaderArea">
	
		<div class="row">
	
	  		<div class="col-sm-3">
	  			<img src="images/logo.png" class="float-left" alt="logo" width="120" height="120"> 
	  		</div>
	  
	    	<div class="col-sm-6">
	    	<br>
	    		<h3>ADMINISTRATION PAGE</h3>   <!-- Function name -->
		  		<br>
		  		<ul class="nav justify-content-center">
				    <li class="nav-item"> <a class="nav-link" href="Home.jsp">HOME</a></li>
				    <li class="nav-item"> <a class="nav-link" href="#">NEWS</a></li>
				    <li class="nav-item"> <a class="nav-link" href="#">REGISTER</a></li>
				    <li class="nav-item"> <a class="nav-link" href="#">CONTACT US</a></li>
				    <li class="nav-item"> <a class="nav-link" href="#">ABOUT US</a></li>
				</ul>
			</div>
	  
	   		<div class="col-sm-3">
	    		<div class='float-right'>
					<button type="button" class="btn btn-primary btn-sm">PROFILE</button>
					<a href="logingPage.jsp" class="btn btn-primary btn-sm">LOGOUT</a>
				</div>
	  		</div>
	
		</div>
	
	</div>
	
	
	
	<!-- Side navigation -->
	<div class="sidenav">s
	  <a href="AthleteDetailsManagement.jsp">ATHLETE DETAILS MANAGEMENT</a>
	  <a href="ViewAllLocations.jsp">LOCATION AND EQUEPMENT MANAGEMENT</a>
	  <a href="ProgressHome.jsp"> MONTHLY TRAINING PROGRESS MANAGEMENT</a>
	  <a href="EventHome.jsp">EVENT DETAILS MANAGEMNET</a>
	  <a href="ViewLedger.jsp">FINANCE MANGEMNET</a>
	  <a href="ValidateAthlete.jsp">TRAINING SCHEDULE MANGEMNT</a>
	  <a href="ViewCompetitions.jsp">COMPETITION DETAILS MANGEMNET</a>
	  <a href="AttendanceCommonLayout.jsp">ATTENDANCE MANAGEMNT</a>
	</div>
	
	
</body>
</html>