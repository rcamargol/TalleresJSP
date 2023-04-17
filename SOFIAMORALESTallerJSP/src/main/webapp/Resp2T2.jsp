<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String num1 = request.getParameter("numero1");
String num2 = request.getParameter("numero2");
%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Respuesta2</title>
</head>
<body bgcolor="#F5EBEB">
	<h1>
		Los valores entre
		<%=num1%>
		y
		<%=num2%>
		son :
	</h1>
	<%
	int nu1, nu2;
	nu1 = Integer.parseInt(num1);
	nu2 = Integer.parseInt(num2);
	if (nu1 < nu2) {
		for (int i = nu1; i <= nu2; i++) {
	%>
	<p><%=i%></p>
	<%
	}
	} else {
	%>
	<h3>Porfavor señor usuario, sea coherente con lo que ingresa</h3>
	<%
	}
	%>


	<a href="Form2Taller2.jsp">
		<button width="60">Volver</button>
	</a>
</body>
</html>