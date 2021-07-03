<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="/EventCommonLayout.jsp"></jsp:include>

	<div class = "main">
	<h4>ADD NEW ELEMENT</h4>
	
	<form action="insertEl" method="post">
	
	<div class="row">
		<div class="col-sm-3"></div>
		
		<div class="col-sm-6">
		
			
			<div class="row">
				<div class="col">Element Name </div>
				<div class="col"><input type="text" name="elementName" required></div>
			</div>
			<div class="row">
				<div class="col">Element Value </div>
				<div class="col"><input type="text" name="value" required></div>
			</div>
			
			
			<input type="submit" name="submit" value="Insert Element" class="btn btn-success" >
			
		</div>
	</div>
		
	
	</form>
	
	
	
	</div>

</body>
</html>