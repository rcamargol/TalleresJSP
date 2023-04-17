<%@page import="java.net.InetAddress"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String articulo = request.getAttribute("articulo").toString();
String cantidad = request.getAttribute("cantidad").toString();
String nombre = request.getAttribute("nombre").toString();
String apellido = request.getAttribute("apellido").toString();
String ppu = request.getAttribute("ppu").toString();
String tipotarjeta = request.getAttribute("tipotarjeta").toString();
String numero = request.getAttribute("numero").toString();
String array_numero[] = numero.split("-");
String numerocensurado = "**** **** **** " + array_numero[3];
String valor = request.getAttribute("valor").toString();

Date fecha = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/YYYY" + "," + fecha.getHours() + ":" + fecha.getMinutes());
String fecha_string = sdf.format(fecha);

InetAddress dir = InetAddress.getLocalHost();
int i = dir.toString().indexOf("/");
String dirS = dir.toString().substring(i + 1);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Compra</title>
</head>
<body>
	<center>
		<br> <br> <br>
		<h1>COMPROBANTE - COMPRA REALIZADA</h1>
		<p style="border: ridge #0f0fef 1px;">
			Señor Usuario: <b> <%=nombre + " " + apellido%></b> <br> Su
			compra fue realizada satisfactoriamente por un valor de $ <b><%=valor%></b>
			. Correspondiente a <b><%=cantidad + " " + articulo%>.</b> <br>
			El precio por unidad fue $<b> <%=ppu%>.
			</b> <br> La compra fue realizada con la tarjeta de credito numero:
			<b><%=numerocensurado%></b> de la franquicia <b> <%=tipotarjeta%>.
			</b>Fecha y hora de compra: <b><%=fecha_string%></b> <br> Direccion
			IP: <b><%=dirS%>.</b>
	</center>
	</p>
</body>
</html>