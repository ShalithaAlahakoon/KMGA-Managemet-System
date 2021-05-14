<%@page import="java.util.*"%>
<%@page import="model.Event"%>
<%@page import="model.Element"%>
<%@page import="DBUtill.EventDBUtill"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
   
<!DOCTYPE html>
<html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>
<head>
<meta charset="ISO-8859-1">
<title>Generate event report</title>
</head>
<body>
<jsp:include page="/EventCommonLayout.jsp"></jsp:include>

	<div class = "main">
	
	<div id="printArea">
	<h4>GENERATE EVENT REPORT</h4>
		
		<div id ="printEvents">
			<h6>EVENTS</h6>
			<table class="table table-striped">
		
				<tr>
					
						<th>Event ID</th>
						<th>Event Name</th>
						<th>Event Symbol</th>
						<th>Category</th>
				</tr>
					
					<%
					List<Event> eventList = EventDBUtill.getEvent();
					
					for(Event evnt : eventList){
					%>
					
				<tr>
						<td><%=evnt.getEventId() %></td>
						<td><%=evnt.getEventName() %></td>
						<td><%=evnt.getEventSymbol() %></td>
						<td><%=evnt.getCategory() %></td>
						
				</tr>
			
					<%
					}
					%>
			</table>
		</div>
			<br>
		<div id="printElements">
			<h6>ELEMENTS</h6>
			
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

				</tr>
			
					<%
					}
					%>
			</table>
		</div>
	</div>
	
	<div class="row">
	
		<div class="col">
				<div align="center"><button onclick="printEventList()" class="btn btn-info">Download Event Report</button></div>
		
				<script >
					function printEventList(){
					var element = document.getElementById("printEvents");
					var opt = {
					margin: 0.5,
					filename: 'EventList.pdf',
					image: { type: 'jpeg', quality: 0.98 },
					html2canvas: { scale: 3 },
					jsPDF: { unit: 'in', format: 'A4', orientation: 'landscape' }
					};
					// New Promise-based usage:
					html2pdf().from(element).set(opt).save();
					}
				
				</script>	
		
		
		</div>
		<div class="col">
	
			<div align="center"><button onclick="printAlleventList()" class="btn btn-info">Download Report</button></div>
			
				<script >
					function printAlleventList(){
					var element = document.getElementById("printArea");
					var opt = {
					margin: 0.5,
					filename: 'AllEventList.pdf',
					image: { type: 'jpeg', quality: 0.98 },
					html2canvas: { scale: 3 },
					jsPDF: { unit: 'in', format: 'A4', orientation: 'landscape' }
					};
					// New Promise-based usage:
					html2pdf().from(element).set(opt).save();
					}
				
				</script>
			</div>	
			<div class="col">
			<div align="center"><button onclick="printElementList()" class="btn btn-info">Download Element Report</button></div>
			
				<script >
					function printElementList(){
					var element = document.getElementById("printElements");
					var opt = {
					margin: 0.5,
					filename: 'ElementList.pdf',
					image: { type: 'jpeg', quality: 0.98 },
					html2canvas: { scale: 3 },
					jsPDF: { unit: 'in', format: 'A4', orientation: 'landscape' }
					};
					// New Promise-based usage:
					html2pdf().from(element).set(opt).save();
					}
				
				</script>	
			</div>
	
	</div>
	</div>

</body>
</html>