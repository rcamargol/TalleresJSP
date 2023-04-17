<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	int n1 = Integer.parseInt(request.getParameter("num1"));
	int n2 = Integer.parseInt(request.getParameter("num2"));
	int suma = n1 + n2;
	int resta = n1 - n2;
	int multi = n1 * n2;
	int div = n1 / n2;
%>
<html>
<head>
<meta charset="UTF-8">
<title>Respuesta Ejercicio 1</title>
</head>
<body>
	<h2>Los numeros digitados fueron: <%=n1%> y <%=n2%></h2>
	<h3>La suma entre los dos numeros es: <%=suma%></h3>
	<h3>La resta entre los dos numeros es: <%=resta%></h3>
	<h3>La multiplicaci&oacute;n entre los dos numeros es: <%=multi%></h3>
	<h3>La divisi&oacute;n entre los dos numeros es: <%=div%></h3>
</body>
</html>