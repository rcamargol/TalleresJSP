<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	int n1 = Integer.parseInt(request.getParameter("num1"));
	int n2 = Integer.parseInt(request.getParameter("num2"));
	String res = "";
	for (int i = n1; i <= n2; i++) {
		if (i == n1) res += i;
		else res = res + ", " + i; 
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Respuesta Ejercicio 2</title>
</head>
<body>
	<h2>Los numeros digitados fueron: <%=n1%> y <%=n2%></h2>
	<h3>Los numeros comprendidos entre <%=n1%> y <%=n2%> son: <%=res%></h3>
</body>
</html>