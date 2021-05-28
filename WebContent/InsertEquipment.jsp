<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	 <meta charset="ISO-8859-1">	
	<title>AddNewEquipment</title>
</head>

<body>
<jsp:include page="/LECommonLayout.jsp"></jsp:include>
	
	<div class="main">
	
		<h4>ADD NEW EQUIPMENT</h4>
		<br>
		<form action="insertEQ" method="post" class="locationForm">
		
		<div class="row">
			<div class="col-sm-3"></div>
		
			<div class="col-sm-6">

				<div class="row">
					<div class="col">Equipment ID</div>
					<div class="col"><input type='text' name="eqID" required></div>
				</div>
							
				<div class="row">
					<div class="col">Equipment Name</div>
					<div class="col"><input type='text' name='eqName' required></div>
				</div>
				
				<div class="row">
					<div class="col">Description</div>
					<div class="col"><textarea name="eqDescription" rows="5" cols="30"></textarea></div>
				</div>
				
				<div class="row">
					<div class="col">Qty</div>
					<div class="col"><input type="text" name="qty" required></div>
				</div>

				<div class="row">
					<div class="col">Owner</div>
					<div class="col"><input type="text" name="owner"></div>
				</div>
				
				<div class="row">
					<div class="col">Width</div>
					<div class="col"><input type="text" name="width"></div>
				</div>
				
				<div class="row">
					<div class="col">Height</div>
					<div class="col"><input type="text" name="height"></div>
				</div>
				
				<div class="row">
					<div class="col">Length</div>
					<div class="col"><input type="text" name="length"></div>
				</div>
					
				<br>
				<input type="submit" name="submit" value="Add Equipment" class="btn btn-success">	
			</div>
			</div>
			<div class="col-sm-3"></div>
			
		</form>
	</div>
	
</body>
</html>