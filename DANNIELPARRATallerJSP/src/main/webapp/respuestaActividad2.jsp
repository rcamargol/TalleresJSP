<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int n1=Integer.parseInt(request.getParameter("n1"));
int n2 =Integer.parseInt(request.getParameter("n2"));
int suma= n1+n2;
int resta= n1-n2;
double multiplicacion =n1*n2;
double division= n1/n2; 
String cadena="valores comprendidos";
for (int i = n1; i <= n2; i++) {
	cadena+=i;
	cadena+=",";
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Respuesta del formulario</title>
</head>
<body>
<% out.println("<h1>Resultados del Formulario</h1>");%>
<p>Se leyeron los siguientes valores</p><br>
<p>Numero 1: <%=n1%></p><br>
<p>Numero 2: <%=n2%></p><br>
<p>Valores correspondidos: [<%=cadena%>]</p><br>
<a href="inicioActividad2.jsp">Volver</a> 
</body>
</html>