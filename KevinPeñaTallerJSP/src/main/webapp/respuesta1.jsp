<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RESPUESTA</title>
</head>
<body background="https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/3c6d55fbb2fb4316c9d9c9632da4462308f7d3e1.jpg">

<h1 align="center">RESULTADOS DE LA OPERACI&Oacute;N</h1>

	<%
	String n1 = request.getAttribute("n1").toString();
	String n2 = request.getAttribute("n2").toString();
	String suma = request.getAttribute("suma").toString();
	String multiplicacion = request.getAttribute("multiplicacion").toString();
	String division = request.getAttribute("division").toString();
	String resta = request.getAttribute("resta").toString();
	%>

<table align="center" bgcolor="FBEEE6">

	<tr>
	
		<td>PRIMER N&Uacute;MERO:</td>
		<td><%=n1 %></td>
	
	</tr>
	<tr>
	
		<td>SEGUNDO N&Uacute;MERO:</td>
		<td><%=n2 %></td>
	
	</tr>
	<tr>
	
		<td>SUMA:</td>
		<td><%=suma %></td>
	
	</tr>
	<tr>
	
		<td>MULTIPLICACI&Oacute;N:</td>
		<td><%=multiplicacion %></td>
	
	</tr>
	<tr>
	
		<td>DIVISI&Oacute;N:</td>
		<td><%=division %></td>
	
	</tr>
	<tr>
	
		<td>RESTA:</td>
		<td><%=resta %></td>
	
	</tr>
	

</table>
	
<h3 align="center"><a href="formulario1.jsp">REALIZAR OTRO CALCULO</a></h3>


</body>
</html>