<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String verCantidad = request.getAttribute("cantidadArt").toString();
String precioTotal = request.getAttribute("precioTotal").toString();
String verPrecioUnico = request.getAttribute("precioProducto").toString();
String verArticulo = request.getAttribute("articulo").toString();
String nombre = request.getAttribute("nombre").toString();
String apellido = request.getAttribute("apellido").toString();
String fecha = request.getAttribute("fecha").toString();
String tarjeta = request.getAttribute("tarjeta").toString();
String numero = request.getAttribute("numeroTarjeta").toString();
String repetirNum = request.getAttribute("repetirTarjeta").toString();
String ip = request.getAttribute("ipAddress").toString();

String ultimosCuatro = numero.substring(numero.length()-4);
String asteriscos = "*".repeat(numero.length()-4);
String tarjeta_mostrar = asteriscos + ultimosCuatro;
tarjeta_mostrar = tarjeta_mostrar.replaceAll("(.{4})", "$1-");
tarjeta_mostrar = tarjeta_mostrar.substring(0, tarjeta_mostrar.length()-1);
%>
<html>
<head>

<link rel="stylesheet" type="text/css" href="estiloRta.css">


<meta charset="ISO-8859-1">
<title>Information</title>
</head>
<body>
	Señor usuario: <h2> <%= nombre + " " + apellido %></h2> <br>
		<h3>Su compra fue realizada satisfactoriamente por un valor de <%= "$ " + precioTotal %>. <br>
		Correspondiente a <%= verCantidad + " " + verArticulo  %> <br> <br>
		
		El precio por unidad fue de: <%= "$ " + verPrecioUnico %>
		La compra fue realizada con la tarjeta de crédito número: <%= tarjeta_mostrar %>  de la franquicia <%= tarjeta %><br> </h3>
		
		<h3>Fecha de la compra: <%= fecha %> </h3>
		<br> <br>
		<h2> Su direccion ip es: <%= ip %></h2>
		
		<h1>
		<a href = "formulario.jsp">
		<button onclick=\ "window.location.href='formulario.jsp'>
			Volver a comprar</button> </a> </h1>
			
		
		
</body>
</html>