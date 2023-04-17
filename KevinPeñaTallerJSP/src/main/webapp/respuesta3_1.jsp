<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="https://thumbs.dreamstime.com/b/grupo-de-personas-con-bolsas-compras-diversas-comprando-bienes-y-ropa-colecci%C3%B3n-un-pu%C3%B1ado-paquetes-o-regalos-paquete-246104937.jpg">

<br><br><br><br><br><br><br><br>
<h1 align="center">RESULTADOS DE COMPRA</h1>

	<%
	String nombre = request.getAttribute("nombre").toString();
	String apellido = request.getAttribute("apellido").toString();
	String producto = request.getAttribute("producto").toString();
	String cantidad = request.getAttribute("cantidad").toString();
	String precioUnidad = request.getAttribute("precioUnidad").toString();
	String precioTotal = request.getAttribute("precioTotal").toString();
	String tarjeta = request.getAttribute("tarjeta").toString();
	String numeroTarjeta = request.getAttribute("numeroTarjeta").toString();
	String host = request.getAttribute("host").toString();
	String fecha = request.getAttribute("fecha").toString();
	%>
	
	<table bgcolor="FBEEE6" align="center">
	<tr>
	<td>
	<p align="center" >


	
	Señor usuario: <%=nombre + " " + apellido%><br>
	Su compra fue realizada exitosamente por un valor de <%=precioTotal %>.<br>
	Valor correspondiente a <%=cantidad %> <%=producto %><br>
	El precio por unidad fue: $<%=precioUnidad %><br>
	La compra fue realizada con la tarjeta de cr&eacute;dito n&uacute;emero: ****-****-****-<%=numeroTarjeta %><br>
	de la franquicia: <%=tarjeta %>.<br>
	Fecha de la compra: <%=fecha %><br>
	Direccion IP: <%=host %>)
	
	</p>
	</td>
	
	</tr>
	
	</table>


	
<h3 align="center"><a href="formulario3.jsp">REALIZAR OTRA COMPRA</a></h3>


</body>
</html>