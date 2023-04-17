<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String respuestaCant = request.getAttribute("cantidadNew").toString();
String precioOriginal = request.getAttribute("precio").toString();
String respuestaArti = request.getAttribute("articulo").toString();
String tipoTarjeta = request.getAttribute("tipoTarjeta").toString();
String numeroTarjeta = request.getAttribute("numeroT").toString();
String fechaA = request.getAttribute("fecha").toString();
String ipCliente = request.getAttribute("ipAddress").toString();
String nombre = request.getAttribute("nombre").toString();
String apellido = request.getAttribute("apellido").toString();
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Respuesta</title>
</head>
<body bgcolor="#FEFAE0">
	<style>
h1 {
	font-family: sans-serif;
	font-size: 2.4em;
	color: #f0a04b;
	text-transform: uppercase;
	margin-top: 1.5em;
	margin-bottom: 1.5em;
}

.botonAceptar {
	background-color: #e1eedd;
	border-radius: 8px;
	text-align: center;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	text-align: center;
	transition-duration: 0.4s;
}
</style>

	<h1>
		Señor usuario:
		<%=nombre%>
		<%=apellido%></h1>
	<p>
		Su compra fue realizada exitosamente por un valor $
		<%=respuestaCant%>. Correspondiente a
		<%=respuestaArti%>
	</p>


	<br>

	<p>
		El precio por unidad fue de $
		<%=precioOriginal%>
	</h3>
	La compra fue realizada con la tarjeta
	<%=numeroTarjeta%>
	de la franquicia
	<%=tipoTarjeta%>
	</p>

	<br>
	<p>
		Fecha de la compra
		<%=fechaA%>

	</p>
	<br>
	<br>
	<br>
	<h3>
		IP CLIENTE:
		<%=ipCliente%>
	</h3>

	<img
		src="https://ih1.redbubble.net/image.3998011433.0454/st,small,507x507-pad,600x600,f8f8f8.jpg"
		width="150px"></img>

	<a href="Formulario.jsp">
		<button class="botonVolver" onclick=\
			"window.location.href='Formulario.jsp' />Ir a la página principal
		</button>"; 
</body>
</html>