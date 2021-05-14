<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert New Athlete</title>
</head>
<body>
<jsp:include page="/AthleteInsertLayout.jsp"></jsp:include>

<div class ="main">

	<h1>Insert New Athlete</h1>
	
	<form action="athleteInsert" method ="post">
	
	<table>
		<tr>
			<td>Full Name</td>
			<td> <input type="text" name="name" required></td>
		</tr>
		<tr>
			<td>Date of Birth</td>
			<td> <input type="date" name="dob"></td>
		</tr>
		<tr>
			<td>Address</td>
			<td><input type="text" name="address"></td>
		</tr>
		<tr>
			<td>Gender</td>
			<td><input type="radio"  name="gender" value="MALE" required>
			  <label for="male">Male</label>
			  <input type="radio"  name="gender" value="FEMALE">
			  <label for="female">Female</label></td>
		</tr>
		<tr>
			<td>Height (cm)</td>
			<td><input type="number"  name="height" min="1" max="250"></td>
		</tr>
		<tr>
			<td>Weight (kg)</td>
			<td><input type="number"  name="weight" min="1" max="150"></td>
		</tr>
		<tr>
			<td>SLSGA Registration No(if have)</td>
			<td><input type="text" name="regNo"></td>
		</tr>
		<tr>
			<td>NIC (if have)</td>
			<td><input type="text" name="nic" maxlength="12"></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="psw"></td>
		</tr>
		
		<tr>
			<td colspan="2"><input type="submit" name="submit" value="Add Athlete"></td>
		</tr>
		
		
	</table>
	</form>
</div>
</body>
</html>