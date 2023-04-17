<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
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
		<p>Los numeros entre estos son: 
		<%
		for(int i=num1; i<=num2; i++){
			if(i==num2) out.print(i+".");
			else out.print(i+",");
		}
		%></p>
	</div>
</body>
</html>