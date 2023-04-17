<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<% String respServlet = request.getAttribute("respuesta").toString(); %>
<%
String nombresDelCliente = request.getParameter("nombresDelCliente");
String apellidosDelCliente = request.getParameter("apellidosDelCliente");
String articulos = request.getParameter("articulos");
String cantidad = request.getParameter("cantidad");
String precioPorUnidad = request.getParameter("precioPorUnidad");
String numTarjeta = request.getParameter("numTarjeta");
String tipoTarjeta = request.getParameter("tipoTarjeta");
String fecha = request.getParameter("fecha");
String total = request.getParameter("total");
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Respuesta desde el JSP</title>
 <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
</head>
<body>
	<%
	out.println("<h1>Resultados del Formulario de compras</h1>");
	%>
	<p>Se leyeron los siguientes valores:</p>
	<br>
Respuesta: <h1><%=respServlet %></h1>
	<p id="total"></p>
	
		<a href="inicio.jsp"> Volver </a>
</body>
</html>