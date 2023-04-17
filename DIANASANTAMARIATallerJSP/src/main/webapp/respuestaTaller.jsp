<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String respuesta = request.getAttribute("respuesta").toString();
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Compra exitosa</title>
</head>
<body>
	<%=respuesta%>
</body>
</html>