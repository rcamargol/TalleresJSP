<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String articulo = request.getAttribute("arti").toString();
String cantidad = request.getAttribute("cantidad").toString();
String precio = request.getAttribute("preciound").toString();
String nombre = request.getAttribute("nombres").toString();
String apellido = request.getAttribute("apellidos").toString();
String tipo_tarjeta = request.getAttribute("franquicia").toString();
String total = request.getAttribute("total").toString();
String tarjeta_credito = request.getAttribute("numerotar").toString();
String fecha = request.getAttribute("fecha").toString();
String ip = request.getAttribute("ip").toString();
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Respuesta usuario</title>
</head>
<body>

	<%
	out.println("Señor usuario: " + nombre + " " + apellido);
	%><br>
	<%
	out.println("Su compra fue realizada satisfactoriamente por un valor de " + "$" + total + " Correspondiente a "
			+ cantidad + " " + articulo);
	%><br>
	<%
	out.println("El precio por unidad fue de: " + "$" + precio);
	%><br>
	<%
	out.println("La compra fue realizada con la tarjeta de crédito con el número de " + tarjeta_credito
			+ " de la franquicia " + tipo_tarjeta);
	%><br>
	<%
	out.println("Fecha de la compra: " + fecha);
	%><br>
	<%
	out.println("Dirección IP: " + ip);
	%><br>
	<br>
	<a href="formularioTaller3.jsp">Volver</a>
</body>
</html>