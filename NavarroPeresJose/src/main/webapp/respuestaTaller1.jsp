<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="estiloRta.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	

		
			<h1>Sumar</h1> 
<%
int n1 = Integer.parseInt(request.getParameter("num1"));
int n2 = Integer.parseInt(request.getParameter("num2"));
int suma = n1 + n2;
int resta = n1 - n2;
int muliplicar = n1 * n2;
double dividir = (double) n1 / n2;
%>
	

	<%="La suma entre " + n1 + " " + "Y" + " " + n2 + " es: " + suma%>

	<%="La resta entre " + n1 + " " + "Y" + " " + n2 + " es: " +  resta%>

	<%="La muliplicacion entre " + n1 + " " + "Y" + " " + n2+ " es: " +  + muliplicar%>

	<%="La divicion entre " + n1 + " " + "Y" + " " + n2+ " es: " +  + dividir%>
	 
</body>
</html>