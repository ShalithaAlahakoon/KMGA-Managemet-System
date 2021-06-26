<%@page import="java.time.YearMonth"%>
<%@page import="java.time.Year"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="java.util.*"%>
<%@page import="model.Achivement"%>
<%@page import="model.Athlete"%>
<%@page import="DBUtill.AthleteDBUtill"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>
<title>Athlete Profile</title>
</head>
<body>
	<jsp:include page="/AthleteProfileLayout.jsp"></jsp:include>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script >




	swal("Ooops!", "somthing whent wrong!", "error");


</script>
</body>
</html>