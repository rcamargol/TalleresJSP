<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Formulario</title>
</head>
<body>
	<form method="post" action="procesar.jsp">
		<label>Ingrese el primer número:</label>
		<input type="number" name="numero1"><br>
		<label>Ingrese el segundo número:</label>
		<input type="number" name="numero2"><br>
		<input type="submit" value="Calcular">
	</form>
</body>
</html>