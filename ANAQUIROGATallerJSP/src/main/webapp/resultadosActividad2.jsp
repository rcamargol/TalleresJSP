<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String numero1 = request.getAttribute("numero1").toString();
String numero2 =  request.getAttribute("numero2").toString();
int num1 = Integer.parseInt(numero1);
int num2 = Integer.parseInt(numero2);

String cuatro = "";

for(int i = num1; i <= num2; i++) {
	int nu = i;
	if(nu==num2){
		cuatro= cuatro+nu;
	}else{
		cuatro = cuatro+nu+"  -  ";
	}
	}

%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resultados del ejercicio 2 de numeros</title>
</head>
<body background="https://w0.peakpx.com/wallpaper/61/558/HD-wallpaper-black-damask-pattern-vintage-floral-pattern-black-vintage-background-floral-patterns-background-with-flowers-vintage-backgrounds-black-retro-backgrounds-floral-vintage-pattern.jpg">
<br>
<center><h1 style="color:white"><strong><em>Los resultados de los n&uacute;meros son: </em></strong></h1></center>
<br>
<center><h3 style="color:white">Numero 1: <%out.println(num1);%></h3></center>
<center><h3 style="color:white">Numero 2: <%out.println(num2);%></h3></center>
<br>
<center><p><h4 style="color:white">Valores entre <%out.println(num1);%> y <%out.println(num2);%></h4></p></center>
<center><p><h4 style="color:white"><%out.println(cuatro);%></h4></p></center>


<br>
<br>
<p style="color:white">
Link para volver a la primera pagina: <A HREF="actividad2.jsp"><h3 style="color:white">Formulario de numeros1</h3></A><br><br>
</p>
</body>
</html>