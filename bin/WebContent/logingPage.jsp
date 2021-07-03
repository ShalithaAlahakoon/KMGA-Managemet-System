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

<title>login Page</title>

<link rel="stylesheet" href="styles/Common.css">
</head>
<body>
<jsp:include page="/LoginPageLayout.jsp"></jsp:include>

<div class ="main">
	  
			<div align="center">
	<div class="card w-50 " >
	
	  <div class="card-body">
	    <h5 class="card-title">ADMIN LOGIN </h5>
	  
			<form action="log" method="post" >
			<table>
				<tr>
					<td>User Name</td>
					<td><input type="text" name="uid" placeholder="Enter your username"></td>
				</tr>
				<tr>
					<td>Password </td>
					<td> <input type="password" name="pass" placeholder="Enter your password"></td>
				</tr>
				
				<tr><td><input type="submit" name="submit" value="Login"></td></tr>
				
			</table>
			</form>
	  </div>
	</div>
			</div>
	
	
	
  
</div>
</body>
</html>