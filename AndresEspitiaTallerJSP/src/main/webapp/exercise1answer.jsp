<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	int sum = num1+num2;
	int res = num1-num2;
	int mul = num1*num2;
	int div = num1/num2;
	
%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css" type="text/css">
<title>Respuesta</title>
</head>
<body>
	<div class="texto">
		<h1>Para los n&uacute;meros <%=num1%> Y <%=num2%></h1>
		<p>Suma: <%=sum %></p>
		<p>Resta: <%=res %></p>
		<p>Multiplicaci&oacute;n: <%=mul %></p>
		<p>Divisi&oacute;n: <%=div %></p>
	</div>
</body>
</html>