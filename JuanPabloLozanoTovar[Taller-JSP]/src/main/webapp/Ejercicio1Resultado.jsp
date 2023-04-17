<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Ejercicio 1 Resultado</title>
</head>
<body>
<% String numero1 = request.getParameter("numero1").toString();
String numero2 = request.getParameter("numero2").toString();
String resultado = "";
String division = "";

int n1 = 0;
int n2 = 0;

	try{
		n1 = Integer.parseInt(numero1);
		n2 = Integer.parseInt(numero2);
		
		if(n2 == 0){
			division = "No se puede dividir entre 0";
		}
		else{
			division = "" + (n1 / n2);
		}
		
		resultado = "<br>Suma: " + (n1 + n2) + "<br>Resta: " + (n1 - n2) + "<br>Multiplicaci&oacute;n: " + (n1 * n2) + "<br>Divisi&oacute;n: " + division; 
		
	}
	catch(NumberFormatException e){
		resultado = "<BR> DEBE INGRESAR SÓLO NÚMEROS";
	}
%>
<%=resultado %>
</body>
</html>