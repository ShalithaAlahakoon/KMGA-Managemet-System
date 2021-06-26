<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String ElementId = request.getParameter ("ElementId");
		String ElementName = request.getParameter ("ElementName");
		String Value = request.getParameter ("Value");
	%>

<jsp:include page="/EventCommonLayout.jsp"></jsp:include>

	<div class = "main">
	<h4>UPDATE ELEMENT</h4>
	
	<form action="updateEl" method="post">
	
	<div class="row">
		<div class="col-sm-3"></div>
		
		<div class="col-sm-6">
		
			<div class="row">
				<div class="col">Element ID</div>
				<div class="col"><input type="text" name="elementId" value="<%=ElementId%>" readonly></div>
			</div>
			<div class="row">
				<div class="col">Element Name </div>
				<div class="col"><input type="text" name="elementName" value="<%=ElementName%>"></div>
			</div>
			<div class="row">
				<div class="col">Element Value </div>
				<div class="col"><input type="text" name="value" value="<%=Value%>"></div>
			</div>
			
			
			<input type="submit" name="submit" value="Update Element" class="btn btn-success" >
			
		</div>
	</div>
		
	
	</form>
	
	
	
	</div>

</body>
</html>