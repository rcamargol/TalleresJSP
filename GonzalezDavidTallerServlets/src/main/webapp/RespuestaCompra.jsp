<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%String usuario = request.getAttribute("usuario").toString();
String articulo = request.getAttribute("articulo").toString();
String cantidad = request.getAttribute("cantidad").toString();
String total = request.getAttribute("total_compra").toString();
String precio_unidad = request.getAttribute("precio_unidad").toString();
String digitos = request.getAttribute("digitos").toString();
String asteriscos = request.getAttribute("asteriscos").toString();
String fecha = request.getAttribute("fecha").toString();
String ip = request.getAttribute("IP").toString();
String tarjeta = request.getAttribute("tarjeta").toString();%>




<meta charset="ISO-8859-1">
<center>
<h1>Resumen Compra</h2>


</head>
<body>
<p>Señor Usuario:<%=usuario %></p>
<p> Su compra fue realizada satisfactoriamente por un valor de $<%=total%>. Correspondiente a <%=cantidad%> <%=articulo%>.</p>
<p>El precio por unidad fue de: $<%=precio_unidad%></p>
La compra fue realizada con la tarjeta de credito n&uacute;mero:<%=asteriscos+digitos%> de la franquicia <%=tarjeta%>
<br>Fecha de la compra: <%=fecha%><br><br>
Direccion de la IP:<%=ip%>

</center>
</body>
</html>