<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DeleteLocation</title>
	 <meta charset="ISO-8859-1">

	<title>Delete Location</title>

</head>

<body>
<jsp:include page="/LECommonLayout.jsp"></jsp:include>

	<div class="main">
	
	<h4>DELETE LOCATION</h4>
	
	<%
		String locID = request.getParameter("locID");
		String mapLetter = request.getParameter("mapLetter");
		String locDescription = request.getParameter("locDescription");
		String floorSize = request.getParameter("floorSize");
	%>
	
	
	
	<form action="deleteLoc" method='post' >
	<div class="row">
		
		
		<div class="col"></div>
		<div class="col">

				<div class="row">
					<div class="col">Location ID</div>
					<div class="col"><input type='text' name='locID' value="<%= locID %>" readonly></div>
				</div>
			
			
				<div class="row">
					<div class="col">Assign Location</div>
					<div class="col">
						<select id='letters' name='letters'>
									<option value='A' ><%= mapLetter %></option>
									<option value='A' disabled>A</option>
									<option value='B' disabled>B</option>
									<option value='C' disabled>C</option>
									<option value='D' disabled>D</option>
									<option value='E' disabled>E</option>
									<option value='F' disabled>F</option>
									<option value='G' disabled>G</option>
									<option value='H' disabled>H</option>
									<option value='I' disabled>I</option>
									<option value='J' disabled>J</option>
						</select>
					</div>
				</div>			
			
				<div class="row">
					<div class="col">Description</div>
					<div class="col"><textarea name="locDescription" rows="4" readonly><%= locDescription %></textarea></div>
				</div>			
			
				<div class="row">
					<div class="col">Floor Size</div>
					<div class="col"><input type='text' name='floorSize' value="<%= floorSize %>" readonly></div>
				</div>
				
				<br>
			
				<input type="submit" name="delete" class="btn btn-danger" value="Delete Location">
		
		</div>	
		<div class="col"></div>
				
	</div>
	</form>
	</div>
	

</body>
</html>