<%@page import="java.util.*"%>
<%@page import="model.Athlete"%>
<%@page import="DBUtill.AthleteDBUtill"%>
<%@page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

 <meta charset="ISO-8859-1">
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>
	
	


	<link rel="stylesheet" href="styles/Common.css">
<title>Athlete List Report</title>

</head>
<body>



<div class ="main" id="printArea">
		
		<h1 align="center">ATHLETE DETAILS REPORT OF KMGA-SRI LANKA</h1>
		<h4>Date and time : <%=new Date().toString() %> </h4>
	
		<table class="table table-striped">
			
				<tr>
					<TH>ATHLETE ID</TH>
					<TH>FULL NAME</TH>
					<th>DATE OF BIRTH</th>
					<th>GENDER</th>
					<th>ADDRESS</th>
					<th>HEIGHT</th>
					<th>WEIGHT</th>
					<th>SLSGA Registration No</th>
					<th>NIC</th>
					
					
				
	            </tr>
	             <%
	             	
	                List<Athlete> athleteList = AthleteDBUtill.getAthletes();
	                                       
	                                      
	                          	
	                          	for(Athlete athlete : athleteList){
	             %>
				 <tr>
					<td> <%=athlete.getAthleteID() %> </td>
					<td> <%=athlete.getFullName()%> </td>
					<td> <%=athlete.getDob()%> </td>
					<td> <%=athlete.getGender()%> </td>
					<td> <%=athlete.getAddress()%> </td>
					<td> <%=athlete.getHeight()%> </td>
					<td> <%=athlete.getWeight()%> </td>
					<td> <%=athlete.getSLSGARegistrationNo()%> </td>
					<td> <%=athlete.getNIC()%> </td>
		
				</tr>			
				<%	
				   }
	            %> 
	            
		</table>
		
		
		
</div>
<div align="center"><button onclick="printAtheleteList()" class="btn btn-primary">Download Report</button></div>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script >
function printAtheleteList(){
	var element = document.getElementById("printArea");
	var opt = {
	  margin:       0.5,
	  filename:     'AtheletList.pdf',
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
		  button: "OK",
		});
}

</script>
</body>
</html>