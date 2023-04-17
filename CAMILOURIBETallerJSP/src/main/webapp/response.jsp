<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String articulo = request.getAttribute("Articulo").toString();
String cantidad = request.getAttribute("Cantidad").toString();
String precio = request.getAttribute("Precio").toString();
String total = request.getAttribute("Total").toString(); 
String nombre = request.getAttribute("Nombre").toString();
String apellido = request.getAttribute("Apellido").toString();
String tarjeta = request.getAttribute("TarjetaSel").toString();
String tarjnum = request.getAttribute("TarjetaNum").toString();
String fecha = request.getAttribute("fecha").toString();
String ip = request.getAttribute("ClientIP").toString();
	
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Receipt</title>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body">
<div class="container">
	<table style="color: white" align="center" width="700px">	
	<tr><td>
	<h3>Señor Usuario: <h2><%=nombre %> <%=apellido %></h2></h3><br>
	<h3>Su compra fue realizada satisfactoriamente por un valor de $<%=total %>.
	Correspondiente a <%=cantidad %> <%=articulo %>.</h3><br><br>
	<h3>El precio por unidad fue de: $<%=precio %></h3>
	<h3>La compra fue realizada con la tarjeta de credito n&uacutemero: <%=tarjnum %>
	de la franquicia <%=tarjeta %>. Fecha de la compra: <%=fecha %>.</h3><br><br>
	<h3>Direccion IP: <%=ip %></h3>
	</td></tr>
	</table>
</div>
</body>
</html>