<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
int num1 = Integer.parseInt(request.getParameter("num1"));
int num2 = Integer.parseInt(request.getParameter("num2"));
int sum = num1 + num2;
int sub = num1 - num2;
int mult = num1 * num2;
int div = num1 / num2;
%>
<html style="background-color: white;">
<head>
<meta charset="UTF-8">
	<title>Respuesta 1</title>
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
<table style="color:white">
	<tr><td><h1>
		N&uacutemeros:
		<%=num1%>,
		<%=num2%></h1></td></tr>
	<tr><td><h3>
		Suma:
		<%=sum%></h3></td></tr>
	<tr><td><h3>
		Resta:
		<%=sub%></h3></td></tr>
	<tr><td><h3>
		Muliplicaci&oacuten:
		<%=mult%></h3></td></tr>
	<tr><td><h3>
		Divisi&oacuten:
		<%=div %></h3></td></tr>
</table>

</body>
</html>