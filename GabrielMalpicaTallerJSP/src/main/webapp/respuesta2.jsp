<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
String n1 = request.getParameter("numero1");
String n2 = request.getParameter("numero2");
int numero1 = Integer.parseInt(n1);
int numero2 = Integer.parseInt(n2);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Respuesta 2 </title>
</head>
<body>
<br><br><br>
<center>
<h1>N&uacute;meros entre <%=numero1%> y <%=numero2%></h1>
<%
out.println(numero1 );
for(int i = 0; numero2< numero1; i++  ){
	numero1--;
	out.println(numero1 + "\t");
} %>
<br><a href = "ejercicio2.jsp">Volver</a> 
</center>
</body>
</html>