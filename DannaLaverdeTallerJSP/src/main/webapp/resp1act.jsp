<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	<title>Resultados 1</title>
</head>
<body>
	<center>
	<%
		// Recuperar los valores ingresados por el usuario
		int numero1 = Integer.parseInt(request.getParameter("numero1"));
		int numero2 = Integer.parseInt(request.getParameter("numero2"));
		
		// Realizar las operaciones matemáticas
		int suma = numero1 + numero2;
		int resta = numero1 - numero2;
		int multiplicacion = numero1 * numero2;
		double division = numero1 / numero2;

		
		
		// Mostrar los resultados
		out.println("<p>La suma de los números es: " + suma + "</p>");
		out.println("<p>La resta de los números es: " + resta + "</p>");
		out.println("<p>La multiplicación de los números es: " + multiplicacion + "</p>");
		out.println("<p>La división de los números es: " + division + "</p>");
	%>
	<tr><a href="actividad1.jsp">Volver al inicio</a></tr>
	</center>
</body>
</html>