<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String numero1 = request.getParameter("numero1");
String numero2 = request.getParameter("numero2");
int n1 = Integer.parseInt(numero1);
int n2 = Integer.parseInt(numero2);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RESPUESTA TALLER 2</title>
</head>
<body>

	<%
	out.println("<h1>Resultados del formulario</h1>");
	%>
	<br>

	<%
	out.println(n1 + "<br>");
	for (int i = 0; n2 < n1; i++) {
		n1--;
		out.println(n1 + "<br>");
	}
	%>
	<br>
	<a href="formularioTallerDos.jsp"> Volver</a>
</body>
</html>