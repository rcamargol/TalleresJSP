<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Operaciones </title>
</head>
<body>
<body>
	<style>
		body{
			background-color: white;
			color: black;
		}
	</style>
	<center>
		<a name = "Arriba"><h1>Operaciones</h1></a>
		<a href = "#Abajo">Ir a la parte de abajo <br><br></a>
		<table border = "50">
			<tr>
				<th> Nmeros </th>
				<th> Suma </th>
				<th> Resta </th>
				<th> Multiplicacion </th> 
				<th> Division </th>
			</tr>
			<%
				double n1 = 15;
				double n2 = 20;
				double s;
				double r;
				double m;
				double d;
			%>
			<tr>
				<%
				s = n1 + n2;
				r = n1 - n2;
				m = n1 * n2;
				d = n1 / n2;
				%>
				<th>
				<%
					out.println("( " + n1 + " | "  + n2 +")" + "<br>" );
				%>
				</th>
				<th>
					<%
					out.println(s);
					%>
				</th>
				
				<th>
					<%
					out.println(r);
					%>
				</th>
				
				<th>
					<%
					out.println(m);
					%>
				</th>
				
				<th>
					<%
					out.println(d);
					%>
				</th>
			</tr>
		</table>
		<br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br>
		<h2>Hola profe</h2><br>
		<a name = "Abajo"><br></a>
		<a href= "#Arriba">Volver a la parte de arriba de la pagina </a> 
	</center>
</body>
</body>
</html>