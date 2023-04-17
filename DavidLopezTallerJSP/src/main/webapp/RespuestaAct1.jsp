<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center><h1>El resultado de los calculos son: </h1></center>
<% 
String numeroA = request.getParameter("numeroA");
String numeroB = request.getParameter("numeroB");
int a = Integer.parseInt(numeroA);
int b = Integer.parseInt(numeroB);

int suma = a+b;
int resta = a-b;
int multiplicacion = a*b;
double division = a/b;
%>
<center><h2>A= <%=a %></h2></center>
<center><h2>B= <%=b %></h2></center><br><br>
<table border="1" align="center">
<tr><td><h3>Suma</h3></td><td><h3>Resta</h3></td><td><h3>Multiplicaci&oacute;n</h3></td><td><h3>Division</h3></td></tr>
<tr><td><h3><%=suma %></h3></td><td><h3><%=resta %></h3></td><td><h3><%=multiplicacion %></h3></td><td><h3><%=division %></h3></td></tr>
</table>

</body>
</html>