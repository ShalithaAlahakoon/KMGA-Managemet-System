<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EditLocation</title>
	 <meta charset="ISO-8859-1">

	<title>Edit Location</title>

</head>

<body>
<jsp:include page="/LECommonLayout.jsp"></jsp:include>

	<div class="main">
	
	<h4>EDIT LOCATION</h4>
	
	<%
		String locID = request.getParameter("locID");
		String mapLetter = request.getParameter("mapLetter");
		String locDescription = request.getParameter("locDescription");
		String floorSize = request.getParameter("floorSize");
	%>
	
	
	
	<form action="updateLoc" method='post' >
	<div class="row">
		
		<div class="col-sm-4">
			<img src="images/map.jpg" class="rounded" alt="map" height="300" width="300"> 
		</div>
		
		
		<div class="col-sm-6">
		

				<div class="row">
					<div class="col">Location ID</div>
					<div class="col"><input type='text' name='locID' value="<%= locID %>" readonly></div>
				</div>
			
			
				<div class="row">
					<div class="col">Assign Location</div>
					<div class="col">
						<select id="mapLetter" name="mapLetter">
									<option value='A'><%= mapLetter %></option>
									<option value='A'>A</option>
									<option value='B'>B</option>
									<option value='C'>C</option>
									<option value='D'>D</option>
									<option value='E'>E</option>
									<option value='F'>F</option>
									<option value='G'>G</option>
									<option value='H'>H</option>
									<option value='I'>I</option>
									<option value='J'>J</option>
						</select>
					</div>
				</div>			
			
				<div class="row">
					<div class="col">Description</div>
					<div class="col"><textarea name="locDescription" rows="4" ><%= locDescription %></textarea></div>
				</div>			
			
				<div class="row">
					<div class="col">Floor Size</div>
					<div class="col"><input type='text' name='floorSize' value="<%= floorSize %>" ></div>
				</div>
				
				<br>
				<input type="submit" name="update" value="Update" class="btn btn-warning">
		
		</div>	
				
	</div>
	</form>
	</div>
	

</body>
</html>