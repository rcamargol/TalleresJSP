<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String num1 = request.getParameter("num1");
String num2 = request.getParameter("num2");
int resultado;
int resultado2;
int resultado3;
int resultado4;
%>
<html>
<head>
<meta charset="UTF-8">
<title>Respuesta Practica 1</title>
</head>
<body align="center">
	<%
	out.println("<h1>Resultados</h1>");
	%>
	<p>
		Los datos ingresados son:
		<%=num1%>
		y
		<%=num2%><br>La suma es:
		<%=resultado = Integer.parseInt(num1) + Integer.parseInt(num2)%><br>La
		multiplicacion es:
		<%=resultado2 = Integer.parseInt(num1) * Integer.parseInt(num2)%><br>La
		division es:
		<%
	if (Integer.parseInt(num2) == 0) {
		out.println("No se puede realizar la division");
	} else {
		resultado3 = Integer.parseInt(num1) / Integer.parseInt(num2);
		out.println(resultado3);
	}
	%><br>La resta es:
		<%=resultado4 = Integer.parseInt(num1) - Integer.parseInt(num2)%>
	</p>
	<a href="actividad1.jsp">Volver</a>
</body>
</html>