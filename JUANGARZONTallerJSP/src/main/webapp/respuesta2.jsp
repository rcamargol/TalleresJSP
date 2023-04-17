<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String n1s = request.getParameter("n1");
int n1 = Integer.parseInt(n1s);
String n2s = request.getParameter("n2");
int n2 = Integer.parseInt(n2s);

String aux = "";

for (int i = n1; i <= n2; i++) {
	aux += i + " ";
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Valores</title>
</head>
<body>
	<center>
		<h1>Valores</h1>
		<h3><%=aux%></h3>
		<a href="ejemplo2.jsp"> Volver </a>
	</center>
</body>
</html>