<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	<title>Resultados</title>
</head>
<body>
	<%
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		int suma = number1 + number2;
		int resta = number1 - number2;
		int multiplicacion = number1 * number2;
		double division = number1 / number2;

		out.println("<p>La suma de los numeros es: " + suma + "</p>");
		out.println("<p>La resta de los numeros es: " + resta + "</p>");
		out.println("<p>La multiplicacion de los numeros es: " + multiplicacion + "</p>");
		out.println("<p>La division de los numeros es: " + division + "</p>");
	%>
</body>
</html>