<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String serv_numero_1 = request.getAttribute("numero_1").toString();
String serv_numero_2 = request.getAttribute("numero_2").toString();
String serv_multiplicación = request.getAttribute("multiplicacion").toString();
String serv_suma = request.getAttribute("suma").toString();
String serv_resta = request.getAttribute("resta").toString();
String serv_division = request.getAttribute("division").toString();

%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css_datos.css">
</head>
<body class="container">
	<h2>Operaciones</h2>
	<p>El primero numero es: </p><h2><%= serv_numero_1 %></h2>
	<p>El segundo numero es: </p><h2><%= serv_numero_2 %></h2>
	<p>La suma de los dos es: </p><h2><%= serv_suma %></h2>
	<p>La resta de los dos: </p><h2><%= serv_resta %></h2>
	<p>La multiplicacion de los dos es: </p><h2><%= serv_multiplicación %></h2>
	<p>La division de los dos es: </p><h2><%= serv_division %></h2>
	
	<h1>
		Los valores entre
		<%=serv_numero_1%>
		y
		<%=serv_numero_2%>
		son :
	</h1>
	<%
int primer_num = Integer.parseInt(serv_numero_1);
int segundo_num = Integer.parseInt(serv_numero_2);

// intercambiar los valores si primer_num es mayor que segundo_num
if (primer_num > segundo_num) {
    int temp = primer_num;
    primer_num = segundo_num;
    segundo_num = temp;
}

// Mostrar secuencia del primer número al segundo
for (int i = primer_num; i <= segundo_num; i++) {
%>
<p><%=i%></p>
<%
}

%>
<h2>Secuencia inversa</h2>
<%
// Mostrar secuencia del segundo número al primero
for (int i = segundo_num; i >= primer_num; i--) {
%>
<p><%=i%></p>
<%
}
%>
</body>
</html>