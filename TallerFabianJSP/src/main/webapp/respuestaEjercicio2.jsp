<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html style="background-color: Aqua; ">
<head>
<meta charset="UTF-8">
<title>Ejercicio 2 </title>
</head>
<body>
<% String numero1 = request.getParameter("numero1").toString();
String numero2 = request.getParameter("numero2").toString();
String resultado = "Los numeros comprendidos entre los 2 numeros son:";

int n1 = 0;
int n2 = 0;

	try{
		n1 = Integer.parseInt(numero1);
		n2 = Integer.parseInt(numero2);
		
		if(n1 < n2){
			for(int i = n1; i <= n2; i++){
				resultado += i;
			}	
		}
		if(n1 > n2){
			for(int i = n2; i <= n1; i++){
				resultado += i;
			}
		}
		if(n1 == n2){
			resultado = "Ambos numeros son iguales";
		}
		
		
	}
	catch(NumberFormatException e){
		resultado = "<BR> SÓLO NÚMEROS";
	}
%>
<br>
<%=resultado %>
</body>
</html>