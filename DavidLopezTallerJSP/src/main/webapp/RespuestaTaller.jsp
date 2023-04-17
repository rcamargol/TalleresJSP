<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Respuesta taller</title>
</head>
<body style="background-color: #9B9B9B">
<%
String nombres = request.getAttribute("nombres").toString(); 
String apellidos = request.getAttribute("apellidos").toString(); 
String articulo = request.getAttribute("articulo").toString(); 
String cantidad = request.getAttribute("cantidad").toString(); 
String factura = request.getAttribute("factura").toString(); 
String tipoTarjeta = request.getAttribute("tipoTarjeta").toString(); 
String numTarjeta = request.getAttribute("numeroTarjeta").toString();
String valor = request.getAttribute("valor").toString();
String fecha = request.getAttribute("fecha").toString();
String ip = request.getAttribute("ip").toString();
%>
<center><h2>Sus datos de compra son los siguientes:</h2><br>

<p>Señor usuario: <%=nombres %> <%=apellidos %></p>
<p>Su compra fue realizada satisfactoriamente por un valor de $<%=factura %> correspondiente a <%=articulo %> X <%=cantidad %>.</p>
<p>La compra fue realizada con la tarjeta de credito n&uacute;mero: **** **** **** <%=numTarjeta %> de la franquicia <%=tipoTarjeta %>.</p>
<p>Fecha de compra: <%=fecha %></p>
<p>Ip: <%=ip %></p>
<center><a href="Taller.jsp"><button>Volver al comercio</button></a></center>
</body>
</html>