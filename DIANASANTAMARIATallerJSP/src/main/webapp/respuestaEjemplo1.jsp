<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
int numero1 = Integer.parseInt(request.getParameter("numero1"));
int numero2 = Integer.parseInt(request.getParameter("numero2"));
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Respuesta</title>
</head>
<body>
	<%
	out.print("<h1>Tabla de operaciones</h1>");
	
	%>
	<table aling="center">
		<tr>
			<td>SUMA</td>
			<td><%=numero1 + numero2%></td>
		</tr>
		<tr>
			<td>RESTA</td>
			<td><%=numero1 - numero2%></td>
		</tr>
		<tr>
			<td>MULTIPLICACION</td>
			<td><%=numero1 * numero2%></td>
		</tr>
		<tr>
			<td>DIVISION</td>
			<td><%=numero1 / numero2%></td>
		</tr>
	</table>
	<a href="formularioEjemplo1.jsp">Volver</a>
</body>
</html>