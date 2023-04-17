<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ejercicio 1 parte 1 resultado</title>
</head>
<body>
<%
String num1 = request.getParameter("num1").toString();
String num2 = request.getParameter("num2").toString();
String resultado = "";

int aux1 = Integer.parseInt(num1);
int aux2 = Integer.parseInt(num2);

	try{
		if(aux2 == 0){
			resultado = "<br>Suma:" + (aux1+aux2) + "<br>Resta: " + (aux1-aux2) + "<br>Multiplicacion: " + (aux1*aux2) + "<br>Division: No se puede dividir entre 0";
		}else{
			resultado = "<br>Suma:" + (aux1+aux2) + "<br>Resta: " + (aux1-aux2) + "<br>Multiplicacion: " + (aux1*aux2) + "<br>Division: " + (aux1/aux2);
		}
	}catch(NumberFormatException e){
		resultado = "<br> Debe ingresar solo numeros";
	}
%>
<%=resultado%>
</body>
</html>