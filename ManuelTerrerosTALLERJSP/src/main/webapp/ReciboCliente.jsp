<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Comprobante de Pago</title>
<style type="text/css">
      body{
      background: #654ea3;  /* fallback for old browsers */
      background: -webkit-linear-gradient(to top, #eaafc8, #654ea3);  /* Chrome 10-25, Safari 5.1-6 */
      background: linear-gradient(to top, #eaafc8, #654ea3); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
      }
</style>

</head>

<center><body>
Estimado Usuario, <h4>${apellido} ${nombre}</h4>
<br> 
Su compra fue realizada satisfactoriamente por un valor de <b>${total}</b>.
Correspondiente a: <b>${cant}</b> <b>${articulo}</b>.
<br>
El precio por unidad fue de: <b>${precio} C/U</b><br>
La compra fue realizada con la tarjeta de crédito número: <b>${numtar}</b> de la 
franquicia <b>${tarj}</b>.  El día <b>${local}</b>.
<br>
Compra realizada desde: <b>${ip}</b><br>
<br>
<input type="button" value="Volver" onclick="history.back()">
</center>

</body>
</html>