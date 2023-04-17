<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String nombre = request.getAttribute("nombre").toString().toUpperCase() + " " + request.getAttribute("apellido").toString().toUpperCase();
String sFinal = "$" + request.getAttribute("sFinal").toString();
String producto = request.getAttribute("cantidad").toString() + " " + request.getAttribute("articulo").toString();
String precio = "$" + request.getAttribute("precio").toString();
String numTarjeta = request.getAttribute("numTarjeta").toString();
String tarjeta = request.getAttribute("tarjeta").toString().toUpperCase();
String fecha = request.getAttribute("fecha").toString();
String ip = request.getAttribute("ip").toString();
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recibo de compra</title>
</head>
<body style="background-color: White; ">

	<center>
		<br>
		<h1>RECIBO DE COMPRA</h1>
	</center>
	<table align="center">
		<tr>
			<td style="background-color: White; ">Se&ntilde;or Usuario: <b> <%=nombre%></b><br> Su compra
				fue realizada satisfactoriamente por un valor de<b><%=sFinal%></b> .
				Correspondiente a <b><%=producto%></b>. <br> <br>El precio
				por unidad fue de: <b><%=precio%></b><br> La compra fue
				realizada con la tarjeta de credito numero <b><%=numTarjeta%></b> de
				la franquicia <b> <%=tarjeta%>.
			</b>Fecha de la compra: <b><%=fecha%>. </b> <br> <br>Direccion
				IP: <b><%=ip%></b>
			</td>
		</tr>
	</table>
	<br>
	<center> <a href="registroeje2.jsp">VOLVER</a> </center>
</body>
</html>