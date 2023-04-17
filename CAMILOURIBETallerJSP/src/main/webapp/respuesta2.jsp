<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	String cont = "";
	for(int i = num1; i<=num2; i++){
		cont = cont + ", " + i;
	}
%>
<html style="background-color: purple;">
<head>
<meta charset="UTF-8">
<title>Respuesta 2</title>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
<table style="color:white">
	<tr><td><h1>N&uacutemeros: <%=num1 %>, <%=num2 %></h1></td></tr>
	<tr><td><h3>N&uacutemeros comprendidos entre <%=num1 %> y <%=num2 %>: <%=cont %></h3></td></tr>
</table>
</body>
</html>