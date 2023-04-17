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
	out.print("<h1>Numeros dentro del intervalo [" + numero1 + "," + numero2 + "]</h1>");

	for (int i = numero1; i <= numero2; i++) {
		out.print(+i + ", ");
	}
	out.print("fin");
	%>
	<br>
	<a href="formularioEjemplo2.jsp">Volver</a>
</body>
</html>