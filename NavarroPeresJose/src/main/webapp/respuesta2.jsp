<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="estiloRta.css">
<meta charset="ISO-8859-1">
<title>Respuesta Taller 1</title>
</head>
<body>

<h1>Valores comprendidos entre <%= request.getParameter("num1") %> y <%= request.getParameter("num2") %>:</h1>

<ul>
<%
int n1 = Integer.parseInt(request.getParameter("num1"));
int n2 = Integer.parseInt(request.getParameter("num2"));
if(n1 <= n2){
    for (int i = n1; i <= n2; i++) {
        out.println("<li>" + i + "</li>");
    }
} else {
    for (int i = n2; i <= n1; i++) {
        out.println("<li>" + i + "</li>");
    }
}
%>
</ul>

<a href="trabajoNum2.jsp">
    <button width="50">Volver</button>
</a>

</body>
</html>

