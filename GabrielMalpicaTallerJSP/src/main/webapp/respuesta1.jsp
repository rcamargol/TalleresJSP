<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
String n1 = request.getParameter("numero1");
String n2 = request.getParameter("numero2");
int numero1 = Integer.parseInt(n1);
int numero2 = Integer.parseInt(n2);

int suma = numero1 + numero2;
int resta = numero1 - numero2;
int multiplicacion = numero1 * numero2;
float division= numero1 / numero2;
%>
<html>
<head>
<meta charset="UTF-8">
<title>Respuesta 1</title>
</head>
<body>
<center>
<p><h1>Suma : </h1><%= suma %></p>
<p><h1>Resta : </h1><%= resta %></p>
<p><h1>Multiplicaci&oacute;n : </h1><%= multiplicacion %></p>
<p><h1>Divisi&oacute;n : </h1><%= division %></p>
<br><a href = "ejercicio1.jsp">Volver</a>
</center>
</body>
</html>