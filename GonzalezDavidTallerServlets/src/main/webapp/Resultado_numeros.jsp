<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<% String numero1 = request.getAttribute("numero1").toString();
String numero2 = request.getAttribute("numero2").toString();
String suma = request.getAttribute("suma").toString();
String resta = request.getAttribute("resta").toString();
String multiplicacion = request.getAttribute("multiplicacion").toString();
String division = request.getAttribute("division").toString();
String lista = request.getAttribute("lista").toString();

%>


<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2>Resultados:</h2>

<table border="1">
<tr><th>Suma </th>
<th>Resta</th>
<th>Multiplicaci&oacute;n</th>
<th>Divisi&oacute;n</th>
<th>N&uacute;meros comprendidos</th>

 </tr>
<tr>
<td><%=suma%></td>
<td><%=resta%></td>
<td><%=multiplicacion %></td>
<td><%=division%></td>
<td><%=lista %>
</tr>

<tr>


</tr>
</table>

</body>
</html>