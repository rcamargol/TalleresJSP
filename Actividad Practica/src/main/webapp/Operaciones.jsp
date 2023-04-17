<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
	double n1 =  Integer.parseInt(request.getParameter("N1"));
	double n2 =  Integer.parseInt(request.getParameter("N2"));
	
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Respuestas</title>
</head>
<body>
	<% out.println("<h1>Resultados por cada operacion</h1>");%>
	<p>Resultado de suma</p>
	<p>Suma: <% out.println(Math.round(n1)+" + "+Math.round(n2)+ " = "+ Math.round(n1 + n2)); %></p><br>
	<p>Resultado de resta</p>
	<p>Resta: <% out.println(Math.round(n1)+ " - "+Math.round(n2)+" = "+ Math.round(n1 - n2));%></p><br>
	<p>Resultado de multiplicacion</p>
	<p>Multiplicacion: <% out.println(Math.round(n1)+" * "+Math.round(n2)+ " = "+ Math.round(n1 * n2)); %></p><br>
	<p>Resultado de division</p>
	<p>Division: <% out.println(Math.round(n1)+ "/"+Math.round(n2)+" = "+ (n1 / n2));%></p><br>
	<a href="Inicio.jsp">Volver</a>	
</body>
</html>