<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Equipment</title>
</head>
<body>

<jsp:include page="/LECommonLayout.jsp"></jsp:include>

	<div class="main">
	
		<h4>DELETE EQUIPMENT</h4>
		
	<%
		String eqID = request.getParameter("eqID");
		String eqName = request.getParameter("eqName");
		String eqDescription = request.getParameter("eqDescription");
		String qty = request.getParameter("qty");
		String owner = request.getParameter("owner");
		String width = request.getParameter("width");
		String height = request.getParameter("height");
		String length = request.getParameter("length");
	%>


		<form action="deleteEQ" method='post' class='locationForm'>
		
		<div class="row">
			<div class="col-sm-3"></div>
		
			<div class="col-sm-6">

				<div class="row">
					<div class="col">Equipment ID</div>
					<div class="col"><input type='text' name='eqID' value="<%= eqID %>" readonly ></div>
				</div>
							
				<div class="row">
					<div class="col">Equipment Name</div>
					<div class="col"><input type='text' name='eqName' value="<%= eqName %>" readonly ></div>
				</div>
				
				<div class="row">
					<div class="col">Description</div>
					<div class="col"><textarea name="eqDescription" rows="5" cols="30" readonly > <%= eqDescription %> </textarea></div>
				</div>
				
				<div class="row">
					<div class="col">Qty</div>
					<div class="col"><input type="text" name="qty" value="<%= qty %>" readonly > </div>
				</div>

				<div class="row">
					<div class="col">Owner</div>
					<div class="col"><input type="text" name="owner" value="<%= owner %>" readonly ></div>
				</div>
				
				<div class="row">
					<div class="col">Width</div>
					<div class="col"><input type="text" name="width" value="<%= width %>" readonly ></div>
				</div>
				
				<div class="row">
					<div class="col">Height</div>
					<div class="col"><input type="text" name="height" value="<%= height %>" readonly ></div>
				</div>
				
				<div class="row">
					<div class="col">Length</div>
					<div class="col"><input type="text" name="length" value="<%= length %>" readonly ></div>
				</div>
					
				
					
				<br>
				<input type="submit" name="delete" class="btn btn-danger" value="Delete">
			</div>
			</div>
			<div class="col-sm-3"></div>
			
		</form>
	</div>
	
</body>
</html>