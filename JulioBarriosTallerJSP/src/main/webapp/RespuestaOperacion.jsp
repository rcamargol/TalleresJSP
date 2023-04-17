<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%String num1=request.getAttribute("Numero1").toString();
String num2=request.getAttribute("Numero2").toString();
int numero1=Integer.parseInt(num1);
int numero2=Integer.parseInt(num2);


%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Respuesta Operaciones</title>
</head>
<body>
<p>Suma: <%=numero1+numero2%> </p>
<p>Resta numero1-numero2: <%=numero1-numero2 %> </p>
<p>Resta numero2-numero1: <%=numero2-numero1 %> </p>

<p>Multiplicacion: <%=numero1*numero2 %> </p>
<p>Division numero1/numero2: <%=numero1/numero2 %> </p>
<p>Division numero2/numero1: <%=numero2/numero1 %> </p>

</body>
</html>