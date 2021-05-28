<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
<jsp:include page="/AdminPageLayout.jsp"></jsp:include>

<div class ="main">

	<div >
		<c:forEach var="admin" items="${adminDetails}">
		
		<h3> Admin name: ${admin.name}</h3>
		</c:forEach>
	
	</div>
	<br>
	<br>
	
		<div class="container">
			<div class="row">
				<div class="col-sm" align="center">
					<a href="AthleteDetailsManagement.jsp"><img alt="" src="images/athlete.png" width="100px" height="100px"></a>
					<p>ATHLETE DETAILS <br>MANAGEMENT</p>
				</div>
				
				<div class="col-sm" align="center">
					<a href="ViewAllLocations.jsp"><img alt="" src="images/equipments.jpg" width="100px" height="100px"></a>
					<p>LOCATION & EQUIPMENT <br>MANAGEMENT</p>
				</div>
				
				<div class="col-sm" align="center">
					<a href="ProgressHome.jsp"><img alt="" src="images/progress.png" width="100px" height="100px"></a>
					<p>TRAINING PROGRESS<br>MANAGEMENT</p>
				</div>
				
				<div class="col-sm" align="center">
					<a href="EventHome.jsp"><img alt="" src="images/events.jpg" width="100px" height="100px"></a>
					<p>EVENT DETAILS <br>MANAGEMENT</p>
				</div>
			</div>
			
			<div class="row">
				<div class="col-sm" align="center">
					<a href="ViewLedger.jsp"><img alt="" src="images/finance.png" width="100px"></a>
					<p>FINANCE <br>MANAGEMENT</p>
				</div>
				
				<div class="col-sm" align="center">
					<a href="ValidateAthlete.jsp"><img alt="" src="images/schedule.png" width="100px"></a>
					<p>TRAINING SCHEDULE <br>MANAGEMENT</p>
				</div>
				
				<div class="col-sm" align="center">
					<a href="ViewCompetitions.jsp"><img alt="" src="images/competition.png" width="100px" height="100px"></a>
					<p>COMPETITION DETAILS <br>MANAGEMENT</p>
				</div>
				
				<div class="col-sm" align="center">
					<a href="GetAttendance.jsp"><img alt="" src="images/Attendance.png" width="100px" height="100px"></a>
					<p>ATTENDANCE <br>MANAGEMENT</p>
				</div>
			</div>
			
		</div>
		
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<script type="text/javascript">
		swal("Verified!", "You have successfully logged into Admin Page!", "success");
		</script>
	
	
</div>
</body>
</html>