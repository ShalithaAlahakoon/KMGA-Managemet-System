<%@page import="java.time.YearMonth"%>
<%@page import="java.time.Year"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="java.util.*"%>
<%@page import="model.Achivement"%>
<%@page import="model.Athlete"%>
<%@page import="DBUtill.AthleteDBUtill"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>
<title>Athlete Profile</title>
</head>
<body>
	<jsp:include page="/AthleteProfileLayout.jsp"></jsp:include>
	
	<div class="main">	
	<div id="printArea">
	
	<h1> 
			<c:forEach var="athlete" items="${athleteDetails}">
				
			<table>
				<tr>
				<td> ATHLETE DETAILS -</td>
				<td>${athlete.fullName}</td>
			</tr>
			</table>
			</c:forEach>
	</h1>
	
	<p>Date and time : <%=new Date().toString() %></p>
	
	
	<!-- personal details card -->
	<div class="card">
	
		<h5 class="card-title">PERSONAL DETAILS</h5>
		
	<c:forEach var="athlete" items="${athleteDetails}">
		
	<table class="table table-striped ">
			<tr>
				<td width="250px">ID  </td>
				<td>${athlete.athleteID}</td>
			</tr>
			<tr>
				<td> FULL NAME</td>
				<td>${athlete.fullName}</td>
			</tr>
			<tr>
				<td>DATE OF BIRTH</td>
				<td>${athlete.dob}</td>
			</tr>
			<tr>
				<td>GENDER</td>
				<td>${athlete.gender}</td>
			</tr>
			<tr>
				<td> ADDRESS</td>
				<td>${athlete.address}</td>
			</tr>
			<tr>
				<td>HEIGHT</td>
				<td>${athlete.height}</td>
			</tr>
			<tr>
				<td>WEIGHT</td>
				<td>${athlete.weight}</td>
			</tr>
			<tr>
				<td>SLSGA Registration No</td>
				<td>${athlete.SLSGARegistrationNo}</td>
			</tr>
			<tr>
				<td>NIC</td>
				<td>${athlete.NIC}</td>
			</tr>
			
			
	</table>
	</c:forEach>
	
	</div>
	<br>
	
	<!-- achivements card -->
	<div class = "card">
		<h5 class="card-title">ACHIVEMENTS</h5>
		<table  class="table table-striped ">
		<tr>
			<th>ACHIVEMENT</th>
			<th>COMPETITION</th>
			<th>VENUE</th>
			<th>DATE</th>
		</tr>
		
		<c:forEach var="achive" items="${achivementsDetails}">
		<tr>
			<td> ${achive.achivement }</td>
			<td>${achive.cmpName }</td>
			<td>${achive.venue }</td>
			<td>${achive.date }</td>
		</tr>
		</c:forEach>
		
		<!-- add achivements button -->
		<tr>
			<td>
			<form action="addAchivement" method="post">
				<input type="submit" value="ADD ACHIVEMENTS" class="btn btn-primary">
				<c:forEach var="athlete" items="${athleteDetails}">
				<input type="hidden" value= "${athlete.athleteID}" name="id">
				</c:forEach>
			</form>
			</td>
		</tr>
		
		</table>
	</div>
	<br>
	
	
	
	<!-- events card -->
	<div class = "card">
		<h5 class="card-title">EVENTS</h5>
		<table  class="table table-striped ">
		<tr>
			<th>EVENT NAME</th>
			<th>EVENT SYMBOL</th>
			
		</tr>
		
		<c:forEach var="aed" items="${aeDetails}">
		<tr>
			<td> ${aed.eventName}</td>
			<td>${aed.eventSymbol }</td>
			
		</tr>
		</c:forEach>
		<!-- add events button -->
		<tr>
			<td>
			<form action="addEvent" method="post">
				<input type="submit" value="ADD EVENT" class="btn btn-primary">
				<c:forEach var="athlete" items="${athleteDetails}">
				<input type="hidden" value= "${athlete.athleteID}" name="id">
				</c:forEach>
			</form>
			</td>
		</tr>
		</table>
		
	</div>
	<br>
	
	
	
	<!-- TRAINING SCHEDULE  card -->
	<div class = "card">
		<h5 class="card-title">TRAINING SCHEDULE</h5>
		<table  class="table table-striped ">
		<tr>
			<th>SCHEDULE ID</th>
			
			
		</tr>
		
		<c:forEach var="sd" items="${ScheduleDetails}">
		<tr>
			<td> ${sd.idschedule}</td>
			
			
		</tr>
		</c:forEach>
		<!-- add events button -->
		<tr>
			<td>
			<form action="AddScheduleToAthlete" method="post">
				<input type="submit" value="ADD SCHEDULE" class="btn btn-primary">
				<c:forEach var="athlete" items="${athleteDetails}">
				<input type="hidden" value= "${athlete.athleteID}" name="id">
				</c:forEach>
			</form>
			</td>
		</tr>
		</table>
		
		
	</div>
	
	<br>
	<!-- training  progress -->
	<div class = "card">
		<h5 class="card-title">TRAINIG PROGRESS</h5>
		
		<table  class="table table-striped ">
		<tr>
			<th>Evaluation</th>
			<th>Score</th>
			<th>Event ID</th>
			<th>Element ID</th>
			
			
		</tr>
		
		<c:forEach var="progress" items="${ProgressDetails}">
		<tr>
			<td> ${progress.evaluation}</td>
			<td> ${progress.marks}</td>
			<td> ${progress.eveId}</td>
			<td> ${progress.athId}</td>
			
			
		</tr>
		</c:forEach>
		<!-- add events button -->
		
		</table>
		
		
		
	</div>
	
	<br>
	<!-- training  card -->
	<div class = "card">
		<h5 class="card-title"></h5>
		
		
	</div>
	
	
	</div>
	
	<br>
	
	<c:forEach var="athlete" items="${athleteDetails}">
	
	<table >
		<tr>
			
			
			<td>
					<form action="updateAthlete" method="post">
						<input type="submit" value="UPDATE PROFILE" class="btn btn-primary">
						<input type="hidden" value= "${athlete.athleteID}" name="id">
						<input type="hidden" value= "${athlete.fullName}" name="name">
						<input type="hidden" value= "${athlete.dob}" name="dob">
						<input type="hidden" value= "${athlete.gender}" name="address">
						<input type="hidden" value= "${athlete.address}" name="gender">
						<input type="hidden" value= "${athlete.height}" name="height">
						<input type="hidden" value= "${athlete.weight}" name="weight">
						<input type="hidden" value= "${athlete.SLSGARegistrationNo}" name="regNo">
						<input type="hidden" value= "${athlete.NIC}" name="nic">
					</form>
			</td>
			
			<td width="150%"> 
			
				<form action="athleteReport" method="post" target="_blank">
						<input type="submit" value="GENARATE REPORT" class="btn btn-primary">
						<input type="hidden" value= "${athlete.athleteID}" name="id">
						
					</form>
			</td>
			
			<td >

			
			
							 <form action="deleteAthlete" method="post">
								<input type="submit" value="DELETE PROFILE" class="btn btn-danger" >
								<input type="hidden" value= "${athlete.athleteID}" name="id">
							</form> 
			</td>
		</tr>
	</table>
	
	</c:forEach>
	
	
	
	
	
	
</div>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script >




function printAtheleteList(){
	var element = document.getElementById("printArea");
	var opt = {
	  margin:       0.5,
	  filename:     'AtheleteDetails.pdf',
	  image:        { type: 'jpeg', quality: 0.98 },
	  html2canvas:  { scale: 3 },
	  jsPDF:        { unit: 'in', format: 'A4', orientation: 'landscape' }
	};
	
	// New Promise-based usage:
	html2pdf().from(element).set(opt).save();
	
	swal({
		  title: "Task Done!",
		  text: "Report genarated!",
		  icon: "success",
		  button: "ok",
		});
}


</script>
</body>
</html>