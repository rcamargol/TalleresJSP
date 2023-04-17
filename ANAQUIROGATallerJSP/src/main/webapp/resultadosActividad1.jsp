<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String numero1 = request.getAttribute("numero1").toString();
String numero2 =  request.getAttribute("numero2").toString();

double num1 = Integer.parseInt(numero1);
double num2 = Integer.parseInt(numero2);
double suma = num1+num2;
double resta = num1-num2;
double multi = num1*num2;
double divi= num1/num2;


%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resultados del ejercicio 1 de numeros</title>
</head>
<body background="https://w0.peakpx.com/wallpaper/559/471/HD-wallpaper-luxury-ornaments-texture-retro-ornament-texture-retro-backgrounds-beige-retro-texture-seamless-texture.jpg">
<br>
<center><h1><strong><em>Los resultados de los n&uacute;meros son: </em></strong></h1></center>
<br>
<center><h3>Numero 1: <%out.println(num1);%></h3></center>
<center><h3>Numero 2: <%out.println(num2);%></h3></center>
<br>
<center><p><h4>Suma:           <%out.println(suma);%></h4></p></center>
<center><p><h4>Resta:           <%out.println(resta);%></h4></p></center>
<center><p><h4>Multiplicac&iacute;on:           <%out.println(multi);%></h4></p></center>
<center><p><h4>Divisi&oacute;n:           <%out.println(divi);%></h4></p></center>
<br>
<br>
<br>
<p>
Link para volver a la primera pagina: <A HREF="actividad1.jsp">Formulario de numeros1</A><br><br>
</p>
</body>
</html>