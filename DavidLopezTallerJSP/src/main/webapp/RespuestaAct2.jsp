<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Respuesta actividad 2</title>
</head>
<body>
<%
String numeroA = request.getParameter("limiteSup");
String numeroB = request.getParameter("limiteInf");
int a = Integer.parseInt(numeroA);
int b = Integer.parseInt(numeroB);
int sup = 0;
int inf = 0;
ArrayList<Integer> numeros = new ArrayList<Integer>();

if(a<b){
	inf = a;
	sup = b;
}else{
	inf = b;
	sup = a;
}

for(int i = inf; i<=sup; i++){
	numeros.add(i);
}

%>
<br><br><br>
<center><h1>Los numero comprendidos entre <%=inf %> y <%=sup %> son: </h1><br><h1><%=numeros %></h1></center>


</body>
</html>