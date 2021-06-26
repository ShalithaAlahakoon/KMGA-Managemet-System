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

<div class ="main" >

	<h1>Insert New Athlete</h1>
	
	<form action="athleteInsert" method ="post" autocomplete="on">
	
	<table style="width:60%;" class="table table-striped" >
		<tr>
			<td>Full Name</td>
			<td> <input type="text" name="name" style="width:100%;" required ></td>
		</tr>
		<tr>
			<td>Date of Birth</td>
			<td> <input type="date" name="dob" style="width:100%;"></td>
		</tr>
		<tr>
			<td>Address</td>

			<td><textarea id="address" name="address" rows="4" cols="50" style="width:100%;"></textarea></td>
		</tr>
		<tr>
			<td>Gender</td>
			<td><input type="radio"  name="gender" value="MALE" required >
			  <label for="male">Male</label>
			  <input type="radio"  name="gender" value="FEMALE">
			  <label for="female">Female</label>
			  </td>
		</tr>
		<tr>
			<td>Height (cm)</td>
			<td><input type="number"  name="height" min="1" max="250" placeholder="1-250" ></td>
			
		</tr>
		<tr>
			<td>Weight (kg)</td>
			<td><input type="number"  name="weight" min="1" max="150" placeholder="1-150"></td>
		</tr>
		<tr>
			<td>SLSGA Registration No(if have)</td>
			<td><input type="text" name="regNo" placeholder="00/XX/00/00" style="width:100%;"></td>
		</tr>
		<tr>
			<td>NIC (if have)</td>
			<td><input type="text" name="nic" maxlength="12" style="width:100%;"></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="psw" style="width:100%;"></td>
		</tr>
		
		<tr >
			<td colspan="2" align="center" ><input type="submit" name="submit" value="Add Athlete" class="btn btn-primary"></td>
		</tr>
		
		
	</table>
	</form>
</div>
</body>
</html>