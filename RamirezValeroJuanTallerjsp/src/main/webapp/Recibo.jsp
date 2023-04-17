<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recibo</title>
</head>
<% String respServlet1 = request.getAttribute("linea1").toString();
		String respServlet2 = request.getAttribute("linea2").toString();
		String respServlet3 = request.getAttribute("linea3").toString();
		String respServlet4 = request.getAttribute("linea4").toString();
		String respServlet5 = request.getAttribute("linea5").toString();%>
<body>
<center><h1>Detalles de la compra</h1><br></center>	
	
	<center>
	<h3><%= respServlet1 %></h3><br>
	<h3><%= respServlet2 %></h3><br>
	<h3><%= respServlet3 %></h3><br>
	<h3><%= respServlet4 %></h3><br>
	<h3><%= respServlet5 %></h3><br>
	<input type="button" class="button" value="Volver al formulario onClick="history.back()"/>
	</center>

</body>
</html>