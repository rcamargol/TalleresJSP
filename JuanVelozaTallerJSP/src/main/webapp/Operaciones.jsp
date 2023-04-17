<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>P&aacute;gina con operaciones </title>
</head>
<body>
	<style>
		body{
			background-color: black;
			color: white;
		}
	</style>
	<center>
		<a name = "Arriba"><h1>Operaciones</h1></a>
		<a href = "#Abajo">Ir abajo <br><br></a>
		<table border = "4">
			<tr>
				<th> N&uacute;meros </th>
				<th> Suma </th>
				<th> Resta </th>
				<th> Multiplicaci&oacute;n </th> 
				<th> Divisi&oacute;n </th>
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
		<br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br><br>
		
		<h2>Hola :D</h2><br>
		<a name = "Abajo"><br></a>
		<a href= "#Arriba">Volver a la tabla</a> 
	</center>
</body>
</html>