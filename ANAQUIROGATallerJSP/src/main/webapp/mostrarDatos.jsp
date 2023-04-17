<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

String articulo = request.getAttribute("articulo").toString();
String cantidad =  request.getAttribute("cantidad").toString();
String precio = request.getAttribute("precio").toString();
String clienteNombre = request.getAttribute("clienteNombre").toString();
String clienteApellido = request.getAttribute("clienteApellido").toString();
String tarjetaCredito = request.getAttribute("tarjetaCredito").toString();
String tarjetaNumero = request.getAttribute("tarjetaNumero").toString();
String ip = request.getAttribute("ip").toString();
String fecha = request.getAttribute("fecha").toString();

double cantidad1 = Double.parseDouble(cantidad);
double precio1 = Double.parseDouble(precio);
double precioTotal = precio1*cantidad1;

String cuatro = "";

for(int i = 0; i < tarjetaNumero.length(); i++) {
	char ar = tarjetaNumero.charAt(i);
	if(i>=tarjetaNumero.length()-4){
		cuatro = cuatro+ar;
	}
}



%>
<html>
<head>
<meta charset="UTF-8">
<title>Pagina de confirmaci&oacute;n de compra</title>
</head>
<body  background="https://img.freepik.com/vector-premium/patron-lunares-costuras-colores-colores-pastel-suaves-fondo-ninos_511024-716.jpg?w=740" margin: 10em>
<br>
<br>
<center><h1><em>P&aacute;gina de confirmaci&oacute;n de compra</em></h1><br>

<br><h3>
<p> 
Señor/a Usuario: <% out.println(clienteNombre+" "+clienteApellido); %> <br>
Su compra fue realizada satisfactoriamente por un valor de $<%out.println(precioTotal+" ");%> correspondiente a <%out.println(cantidad+" "+articulo);%></p><br>
<p>
El precio por unidad fue de: $<%out.println(precio+""); %><br>
La compra fue realizada con la tarjeta de credito numero: ****  ****  ****  <%out.println(cuatro); %> de la franquicia <%out.println(tarjetaCredito+"."); %><br>
Fecha de la compra:<%out.println(" "+fecha+"."); %></p></h3> <br>
<p>
Direccion ip del usuario de la compra:<%out.println(" "+ip+"."); %> <br>
</p>
<br>
<p>
Link para realizar una nueva compra: <A HREF="formulario.jsp">Formulario de compra</A><br><br>
</p>
</center>
</body>
</html>