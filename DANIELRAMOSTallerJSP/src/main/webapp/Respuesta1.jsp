<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String num1 = request.getParameter("num1");
String num2 = request.getParameter("num2");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Respuesta Ejercicio 1</title>
</head>
<body>

	<h1>SUMA DE LOS DOS NUMEROS</h1>
	<%
	int nume1 = (int)Integer.parseInt(num1); 
	int nume2 = (int)Integer.parseInt(num2);
	
	int suma = nume1 + nume2;
	%>
	<h3>La suma entre <%= num1 %> y <%=num2 %> es: <%=suma %> </h3>
	
	<br>
	<br>
	
	<h1>RESTA DE LOS DOS NUMEROS</h1>
	<%
	int resta = nume1 - nume2;
	%>
	<h3>La resta entre <%= num1 %> y <%=num2 %> es: <%=resta %> </h3>
	
	<br>
	<br>
	
	<h1>MULTIPLICACI&Oacute;N DE LOS DOS NUMEROS</h1>
	<%
	int multi = nume1 * nume2;
	%>
	<h3>La multiplicacion entre <%= num1 %> y <%=num2 %> es: <%=multi %> </h3>
	
	<br>
	<br>
	
	<h1>DIVISI&Oacute;N DE LOS DOS NUMEROS</h1>
	<%
	int div = nume1 / nume2;
	%>
	<h3>La divisi&oacute;n entre <%= num1 %> y <%=num2 %> es aproximadamente: <%=div %> </h3>

</body>
</html>