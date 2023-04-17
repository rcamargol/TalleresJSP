<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ejercicio 1 parte 2 resultado</title>
</head>
<body>
	<%
String num1 = request.getParameter("num1").toString();
String num2 = request.getParameter("num2").toString();

int aux1 = Integer.parseInt(num1);
int aux2 = Integer.parseInt(num2);
String resultado = "Los numeros comprendidos entre " + aux1 + " y " + aux2 + " son: ";
try{
	if(aux1 < aux2){
	for(int i = aux1; i<= aux2; i++){
		resultado += "<br>" + i; 
	}
	}
	if(aux1>aux2){
		for(int i = aux2; i <= aux1; i++){
			resultado += "<br>" + i; 
		}
	}
	if(aux1==aux2){
		resultado = "Los numeros son iguales no se pueden mostrar los numeros comprendidos entre si";
	}
}catch(NumberFormatException e){
	resultado = "<br> Debe ingresar solo numeros";
}
%>
	<%=resultado%>
</body>
</html>