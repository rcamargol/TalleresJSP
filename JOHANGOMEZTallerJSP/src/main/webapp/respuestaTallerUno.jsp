<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String numero1 = request.getParameter("numero1");
String numero2 = request.getParameter("numero2");
int respuestasuma = 0;
int respuestamulti = 0;
int respuestadiv = 0;
int respuestaresta = 0;
int n1 = Integer.parseInt(numero1);
int n2 = Integer.parseInt(numero2);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RESPUESTA TALLER 1</title>
</head>
<body>
	<%
	out.println("<h1>Resultados del formulario</h1>");
	respuestasuma = n1 + n2;
	respuestamulti = n1 * n2;
	respuestaresta = n1 - n2;
	respuestadiv = n1 / n2;
	%>
	<br>
	<p>
		La suma de ambos n&uacute;meros es:<%=respuestasuma%></p>
	<br>
	<p>
		La multiplicaci&oacute;n de ambos n&uacute;meros es:<%=respuestamulti%></p>
	<br>
	<p>
		La resta de ambos n&uacute;meros es:<%=respuestaresta%></p>
	<br>
	<p>
		La divici&oacute; de ambos n&uacute;meros es:<%=respuestadiv%></p>
	<br>
	<a href="formularioTallerUno.jsp"> Volver</a>
</body>
</html>