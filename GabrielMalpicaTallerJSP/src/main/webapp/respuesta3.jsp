<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String articulo = request.getAttribute("articulo").toString();
String cantidad = request.getAttribute("cantidad").toString();
String precio = request.getAttribute("precio").toString();
String nombre = request.getAttribute("nombre").toString();
String apellido = request.getAttribute("apellido").toString();
String tipo_tarjeta = request.getAttribute("franquicia").toString();
String total = request.getAttribute("total").toString();
String tarjeta_credito = request.getAttribute("tarjetacredito").toString();
String fecha = request.getAttribute("fecha").toString();
String ip = request.getAttribute("ip").toString();
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Respuesta usuario</title>
</head>
<body>
<h1>GRACIAS POR SU COMPRA</h1>
<br><br><br>
<% out.println("Señor usuario: " +  nombre + " " + apellido ); %><br>
<% out.println("Su compra fue realizada satisfactoriamente por un valor de " + "$" + total + " Correspondiente a " + cantidad + " " + articulo); %><br>
<% out.println("El precio por unidad fue de: " + "$" + precio); %><br>
<% out.println("La compra fue realizada con la tarjeta de crédito con el número de " + tarjeta_credito + " de la franquicia " + tipo_tarjeta); %><br>
<% out.println("Fecha de la compra: " + fecha); %><br>
<% out.println("Dirección IP: " + ip); %><br>
<br><a href = "ejercicio3.jsp">Volver</a> 
</body>
</html>