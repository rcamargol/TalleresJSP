<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String suma = request.getAttribute("suma").toString();
String resta = request.getAttribute("resta").toString();
String mult = request.getAttribute("multiplicacion").toString();
String div = request.getAttribute("division").toString();
%>
<html>
<head>
<meta charset="UTF-8">
<title>Resultados</title>
<link rel="stylesheet" href="styleRta.css">

</head>
<body class="container">
	<h1>RESULTADOS</h1>
	<br>
	<br>
	<b><%=suma%></b>
	<br>
	<br>
	<b><%=resta%></b>
	<br>
	<br>
	<b><%=mult%></b>
	<br>
	<br>
	<b><%=div%></b>


</body>
</html>