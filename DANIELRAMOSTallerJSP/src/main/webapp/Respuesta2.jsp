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
<title>Respuesta Ejercicio 2</title>
</head>
<body>

	<h1>CADENA DE NUMEROS DEL <%=num1 %> AL <%=num2 %></h1>
	
	<%
	int nume1 = (int)Integer.parseInt(num1); 
	int nume2 = (int)Integer.parseInt(num2);
	
	while(nume1 <= nume2){
		out.print(nume1+"\t");
		nume1++;
	}
	%>

</body>
</html>