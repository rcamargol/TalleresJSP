<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RESPUESTA</title>
</head>
<body background="https://thumbs.dreamstime.com/b/fondo-del-vector-de-n%C3%BAmeros-35323313.jpg">
<br><br><br><br><br><br><br><br>
<h1 align="center">RESULTADOS DE LA OPERACI&Oacute;N aa</h1>

	<%
	String n1 = request.getAttribute("n1").toString();
	String n2 = request.getAttribute("n2").toString();
	String cadena = request.getAttribute("cadena").toString();
	%>

<table align="center" bgcolor="5DADE2">

	<tr>
	
		<td>Limite inferior:</td>
		<td><%=n1 %></td>
	
	</tr>
	<tr>
	
		<td>Limite superior:</td>
		<td><%=n2 %></td>
	
	</tr>
	<tr>
	
		<td>CADENA:</td>
		<td><%=cadena %></td>
	
	</tr>

</table>
	
<h3 align="center" style="5DADE2"><a href="formulario2.jsp">REALIZAR OTRO CALCULO</a></h3>

</body>
</html>