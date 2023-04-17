<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<% 	String respServlet1 = request.getAttribute("respuesta1").toString(); 
	String respServlet2 = request.getAttribute("respuesta2").toString();
	String respServlet3 = request.getAttribute("respuesta3").toString();
	String respServlet4 = request.getAttribute("respuesta4").toString();
	String respServlet5 = request.getAttribute("respuesta5").toString();
	String respServlet6 = request.getAttribute("respuesta6").toString();%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmaci&oacute;n del Registro de Compra</title>
</head>
<body>
	<style>
		body{
		background-image: url("1fondo.jpg");
		background-size: cover;
		font-family: Georgia;
		}
		h1{
			color: #59352D;
			text-align: center;
			font-size: 15pt;
			
		}
		h2{
			text-align: center;
			color: #59352D;
		}
		p {
			text-align: center;
		}
	</style>
	<h2><%=respServlet1 %></h2>
	<table align="center">
		<tr><h1><%=respServlet2 %></h1></tr>
		<tr><p><%=respServlet3 %></p></tr>
		<tr><p><%=respServlet4 %></p></tr>
		<tr><p><%=respServlet5 %></p></tr>
		<tr><p><%=respServlet6 %></p></tr>
	</table>
	<center><a href="ejercicio1.jsp">Volver al inicio</a></center>
</body>
</html>