<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String nombres = request.getAttribute("nombre").toString();
String precio = request.getAttribute("preciounidad").toString();
String precioU = request.getAttribute("valorunidad").toString();
String tarjeta = request.getAttribute("tarjeta").toString();
String tipotarjeta = request.getAttribute("tipotar").toString();
String ip = request.getAttribute("ip").toString();
String date = request.getAttribute("date").toString();
String art = request.getAttribute("art").toString();
String cant = request.getAttribute("cant").toString();
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Respuesta Servlet</title>
<link rel="stylesheet" href="styleRESPUESTA.css">

</head>
<body class="container">
	<h1>CONFIRMACI&Oacute;N DE COMPRA</h1>
	<br>
	<br>
	<b><%=nombres%>.</b>
	<br>
	<b><%=precio%>.</b>
	<br>
	<br>
	<b><%=precioU%>, correstpondiente a <%=cant%> <%=art%>.</b>
	<br>
	<b><%=tarjeta%> de la franquicia <%=tipotarjeta%>.</b>
	<br>
	<br>
	<b>Fecha y hora de la compra: <%=date%>.
	</b>
	<br>
	<br>
	<b>Direcci&oacute;n IP: <%=ip%>.
	</b>

</body>
</html>