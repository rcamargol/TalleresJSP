<%@page import="org.apache.tomcat.util.buf.StringUtils"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String articulo = request.getAttribute("Articulo").toString();
String nombre = request.getAttribute("Nombre").toString();
String cantidad = request.getAttribute("Cantidad").toString();
String precio = request.getAttribute("Precio").toString();
String producto = request.getAttribute("Articulo").toString();
String tarjeta = request.getAttribute("Credito").toString();
String numero = tarjeta.substring(tarjeta.length() - 4);
String tipo = request.getAttribute("Tarjeta").toString();
String fecha = request.getAttribute("Fecha").toString();
String direccion = request.getAttribute("IP").toString();
int cantidad1 = Integer.parseInt(cantidad);
int precio1 = Integer.parseInt(precio);
int total = cantidad1 * precio1;
%>
<html>
<head>
<style>
.imagen {
	position: absolute;
	top: 590px;
	left: 30px;
}
</style>
<style>
.imagen2 {
	position: absolute;
	top: 600px;
	left: 1380px;
}
</style>
<meta charset="ISO-8859-1">
<title>Respuesta</title>
</head>
<body style="background-color: #5d9b9b;">
	<h1 align="center">Formulario</h1>
	<img src="Image/gokua1.gif" width="140" height="140" class="imagen" />
	<img src="Image/kakashia.gif" width="120" height="120" class="imagen2" />
	<br>
	<p align="center">
		Señor usuario:
		<%=nombre%>
	</p>
	<p align="center">
		Su compra fue realizada exitosamente por un valor de $
		<%=total%>.Correspondiente <br> a
		<%=cantidad1%><%=" " + producto%></p>
	<p align="center">
		El precio por unidad fue de: $<%=precio1%></p>
	<p align="center">
		La compra fue realizada con la tarjeta de credito numero **** ****
		****
		<%=numero%>
		de la <br> fraquicia
		<%=tipo%>.Fecha de la compra :
		<%=fecha%>.
	</p>
	<p align="center">
		Direccion IP es:
		<%=direccion%></p>

	<a href="http://localhost:8080/JulioBarriosTallerJSP/Formulario.jsp">Volver
		a la compra</a>

</body>
</html>