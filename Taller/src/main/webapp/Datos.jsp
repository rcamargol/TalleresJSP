<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<% 

String serv_nombre = request.getAttribute("nombre").toString();
String serv_apellido = request.getAttribute("apellido").toString();
String serv_cantidad = request.getAttribute("cantidad").toString();
String serv_numero_tarjeta = request.getAttribute("numero_tarjeta").toString();
String serv_numero_confirmacion = request.getAttribute("numero_confir").toString();
String serv_producto = request.getAttribute("producto").toString();
String ser_precio_unidad = request.getAttribute("precio_unidad").toString();
String serv_precio_total = request.getAttribute("precio_total").toString();
String serv_ip = request.getAttribute("ip").toString();
String serv_fecha = request.getAttribute("fecha").toString();
String serv_tarjeta = request.getAttribute("tarjeta").toString();


String ultimosCuatro = serv_numero_tarjeta.substring(serv_numero_tarjeta.length()-4);
String asteriscos = "*".repeat(serv_numero_tarjeta.length()-4);
String tarjeta_mostrar = asteriscos + ultimosCuatro;
tarjeta_mostrar = tarjeta_mostrar.replaceAll("(.{4})", "$1-");
tarjeta_mostrar = tarjeta_mostrar.substring(0, tarjeta_mostrar.length()-1);
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Datos de compra</title>
<link rel="stylesheet" type="text/css" href="css_datos.css">

</head>
<body class="container">
	<h2>Señor usuario: <%= serv_nombre + " " + serv_apellido %></h2>
	<p>Su compra fue realizada exitosamente por un valor de <%= serv_precio_total %>. Correspondiente a <%= serv_cantidad + " "+ serv_producto %>. </p>
	<p>El precio por unidad fue de: $<%= ser_precio_unidad %>.</p>
	<p>La compra fue realizada con la tarjeta de crédito número <%=tarjeta_mostrar %> de la franquicia <%= serv_tarjeta%>. Fecha de la compra: <%= serv_fecha%> </p>
	<p>Dirección IP: <%= serv_ip %></p>
</body>
</html>