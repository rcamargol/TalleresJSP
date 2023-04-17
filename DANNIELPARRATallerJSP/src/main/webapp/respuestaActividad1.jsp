<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%   
double n1=Integer.parseInt(request.getParameter("n1"));
double n2 =Integer.parseInt(request.getParameter("n2"));
double suma= n1+n2;
double resta= n1-n2;
double multiplicacion =n1*n2;
double division= n1/n2; 


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
<p>Suma: <%=suma%></p><br>
<p>Resta: <%=resta%></p><br>
<p>Multiplicacion: <%=multiplicacion%></p><br>
<p>Division: <%=division%></p><br>
<a href="inicioActividad1.jsp">Volver</a> 
</body>
</html>