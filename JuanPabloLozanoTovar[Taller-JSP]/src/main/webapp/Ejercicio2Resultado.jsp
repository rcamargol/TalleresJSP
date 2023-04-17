<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Ejercicio 2 Resultado</title>
</head>
<body>
<% String numero1 = request.getParameter("numero1").toString();
String numero2 = request.getParameter("numero2").toString();
String resultado = "Los n&uacute;meros comprendidos entre los 2 n&uacute;meros son:";

int n1 = 0;
int n2 = 0;

	try{
		n1 = Integer.parseInt(numero1);
		n2 = Integer.parseInt(numero2);
		
		if(n1 < n2){
			for(int i = n1; i <= n2; i++){
				resultado += "<br>" + i;
			}	
		}
		if(n1 > n2){
			for(int i = n2; i <= n1; i++){
				resultado += "<br>" + i;
			}
		}
		if(n1 == n2){
			resultado = "<Br>Ambos n&uacute;meros son iguales";
		}
		
		
	}
	catch(NumberFormatException e){
		resultado = "<BR> DEBE INGRESAR SÓLO NÚMEROS";
	}
%>
<br>
<%=resultado %>
</body>
</html>