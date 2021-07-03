<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	 <meta charset="ISO-8859-1">
	<title>AddNewLocation</title>
</head>

<body background="kmgabg.jpg">
<jsp:include page="/LECommonLayout.jsp"></jsp:include>
	
	
	<div class="main">
	
		<h4>ADD NEW LOCATION</h4>
		<br>
		
		
		<div class="row">
		
			<div class="col-sm-5">
			
			<form action="addLocation" method="post" class="locationForm">
				<div class="row">
					<div class="col">Location ID</div>
					<div class="col"><input type='text' name='locID' required ></div>
				</div>
			
				<div class="row">
					<div class="col">Assign Location</div>
					<div class="col">
						<select id="mapletter" name="mapLetter" required>
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
					<div class="col"><textarea name="locDescription" rows="4"></textarea></div>
				</div>	
						
				<div class="row">
					<div class="col">Floor Size</div>
					<div class="col"><input type='text' name='floorSize' required></div>
				</div>			
						
				<br>
				<input type="submit" name="submit" value="Add Location" class="btn btn-success">

				</form>
		</div>	
		

		<div class="col-sm-1"></div>
		

		
		<div class="col-sm-3">
			<img src="images/map.jpg" class="rounded" alt="map" height="600"> 
		</div>
	</div>
	
	
	</div>
	
</body>
</html>