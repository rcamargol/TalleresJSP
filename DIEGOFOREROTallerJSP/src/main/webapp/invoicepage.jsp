<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String articulo = request.getAttribute("articulo").toString();
	String cantidad = request.getAttribute("cantidad").toString();
	String precio = request.getAttribute("precio").toString();
	String nombres = request.getAttribute("nombres").toString().toUpperCase();
	String apellidos = request.getAttribute("apellidos").toString().toUpperCase();
	String tarjeta = request.getAttribute("tarjeta").toString();
	String numtarjeta = request.getAttribute("numtarjeta").toString();
	String preciototal = request.getAttribute("preciototal").toString();
	String fecha = request.getAttribute("fecha").toString();
	String IP = request.getAttribute("ip").toString();
%>
<html>
<head>
<meta charset="UTF-8">
<title>Invoice</title>
<style type="text/css">
* {
	margin: 0;
	box-sizing: border-box;
}

html {
     min-height: 100vh;
}

a {
	color: white;
}

body {
	font-family: 'Source Code Pro', monospace;
	color: white;
	margin: 0;
	background: linear-gradient(#BBD6B8, #212123) ;
	background-size: 100%;
    background-attachment: fixed;
    min-height: 100vh;
    min-width: 100vw;
}

.container {
	display: flex;
	aling-items: center;
    justify-content: center;
    height: 100vh;
    width: 100vw;
    background-color: trasparent;
}

#invoice {
	font-size: 25px;
	text-align: justify;
	padding: 60px;
    border-radius: 30px;
	height: 70%;
    width: 70%;
    margin: auto;
	background: rgba(0, 0, 0, 0.5);
	box-shadow: 0 15px 25px #BBD6B8;
}
</style>
</head>
<body>
	<div class = "container">
		<section id = "invoice">
			<p>Se&ntilde;or Usuario: <b><%=nombres%> <%=apellidos%></b></p><br>
			<p>
				Su compra fue realizada satisfactoriamente por un valor de <b>$<%=preciototal%></b>.
				Correspondiente a <b> <%=cantidad%> <%=articulo%></b>.
			</p><br>
			<p>El precio por unidad fue de: <b>$<%=precio%></b>.</p><br>
			<p>
				La compra fue realizada con la tarjeta de cr&eacute;dito n&uacute;mero: <b><%=numtarjeta%></b>
				de la franquicia <b><%=tarjeta%></b>. Fecha de la compra <b><%=fecha%></b>.
			</p><br>
			<p>Direcci&oacute;n IP: <b><%=IP%></b>.</p><br>
			
			<a href="formpage.jsp"> Volver </a>
		</section>
	</div>
</body>
</html>