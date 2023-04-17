<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String limites = request.getAttribute("limites").toString();
%>
<html>
<head>
<meta charset="UTF-8">
<title>Resultados</title>
<link rel="stylesheet" href="styleRta.css">

</head>
<body class="container">
	<h1>LIMITES</h1>
	<br>
	<br>
	<b><%=limites%></b>



</body>
</html>