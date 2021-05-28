<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
 		<link rel="stylesheet" type="text/css" href="styles/addScore.css">
		<title>Monthly Training Progress Management</title>
	</head>
	<body>
		<jsp:include page="/ProgressCommonLayout.jsp"></jsp:include>
        <br>
		<div class ="row">
		<div class ="col">
		
		<img src="images/img3.jpg" class="img2" alt="logo" width="400" height="400"> 
		</div>
		<div class ="col">
			<h1>Enter Athlete Score Details</h1><br><br>
		
		
			<form action="addscore" method="post">
			
				<table>
				     <tr>
					    <td><label for="ProgressID">Enter Progress Id:</label> </td>
						 <td><input type ="text" name="ProgressID" placeholder="Enter progress Id" required> </td>
					</tr>
					 <tr>	
						<td><label for="Evalution">Enter Evaluation:</label> </td>
						<td><input type ="text" name="Evalution" placeholder="Enter Evaluation" required> </td>
					</tr>
					 <tr>
						 <td><label for="Score">Enter Score:</label></td>
						<td><input type ="text" name="Score" placeholder="Enter Score" required></td>
					 </tr>	
						<td><label for="EventID">Enter Event Id:</label> </td>
						<td><input type ="text" name="EventID" placeholder="Enter Event Id" required></td>
					 <tr>
						
						<td><label for="ElemetID">Enter Element Id:</label> </td>
						<td><input type ="text" name="ElemetID" placeholder="Enter Element Id" required></td>
					 </tr>
					 <tr>
						<td><label for="AthleteID">Enter Athlete Id:</label> </td>
						<td><input type ="text" name="AthleteID" placeholder="Enter Athlete Id" required></td>
					</tr>	
				</table>
				<input type="submit" class="button btn-lg" value="Submit">
		
			</form>
				<a href="ProgressHome.jsp"><button type ="submit" class="button btn-lg"><span>Back</span></button></a>
		</div>
	  </div>
	</body>
</html>