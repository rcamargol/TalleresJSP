<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String num1 = request.getParameter("num1");
String num2 = request.getParameter("num2");
int resultado;
%>
<html>
<head>
<meta charset="UTF-8">
<title>Respuesta Practica 2</title>
</head>
<body align="center">
	<%
	out.println("<h1>Resultados</h1>");
	%>
	<p>
		Los datos ingresados son:
		<%=num1%>
		y
		<%=num2%><br>
	</p>
	<p>
		<%
		if (Integer.parseInt(num1) > Integer.parseInt(num2)) {
			out.println("El numero 1/Limite inferior debe ser mayor a numero2/Limite superior");
		} else {
			for (int i = Integer.parseInt(num1); i <= Integer.parseInt(num2); i++) {
				out.println(i);

			}
		}
		%>

	</p>
	<a href="actividad2.jsp">Volver</a>
</body>
</html>