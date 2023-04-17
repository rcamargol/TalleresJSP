<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String n1s = request.getParameter("n1");
int n1 = Integer.parseInt(n1s);
String n2s = request.getParameter("n2");
int n2 = Integer.parseInt(n2s);

int suma = n1 + n2;
int resta = n1 - n2;
int multi = n1 * n2;
int divi = n1 / n2;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Operaciones</title>
</head>
<body>
	<center>
		<h1>OPERACIONES</h1>
		<h3>
			Suma:
			<%=suma%></h3>
		<h3>
			Resta:
			<%=resta%></h3>
		<h3>
			Multiplicacion:
			<%=multi%></h3>
		<h3>
			Division:
			<%=divi%></h3>

		<a href="ejemplo1.jsp"> Volver </a>
	</center>


</body>
</html>