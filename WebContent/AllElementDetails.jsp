<%@page import="java.util.*"%>
<%@page import="model.Event"%>
<%@page import="model.Element"%>
<%@page import="DBUtill.EventDBUtill"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Elements</title>
</head>
<body>
	
	<jsp:include page="/EventCommonLayout.jsp"></jsp:include>
			<h4>ELEMENTS</h4>
	<div class = "main">
	
	<!-- show all elements -->
		
		<div id="printElements">
			
			<table class="table table-striped">
		
				<tr>
					
						<th>Element ID</th>
						<th>Element Name</th>
						<th>Value</th>
						
				</tr>
					
					<%
					List<Element> elementList = EventDBUtill.getElement();
					
					for(Element elmnt : elementList){
					%>
					
				<tr>
						<td><%=elmnt.getElementId() %></td>
						<td><%=elmnt.getElementName() %></td>
						<td><%=elmnt.getValue() %></td>
						
						
						<td>
							<form action="viewEl" method="post">
							<input type="submit" value ="view" class="btn btn-info">
							<input type="hidden" value="<%=elmnt.getElementName()%>" name="ElementName">
							</form>
						</td>
						
						
				</tr>
			
					<%
					}
					%>
			</table>
			
		</div>
		

	
	</div>


</body>
</html>