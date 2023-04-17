<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String nombre = request.getAttribute("nombre").toString().toUpperCase() + " "
		+ request.getAttribute("apellido").toString().toUpperCase();
String pFinal = "$" + request.getAttribute("pFinal").toString();
String productos = request.getAttribute("cantidad").toString() + " " + request.getAttribute("articulo").toString();
String precio = "$" + request.getAttribute("precio").toString();
String numeroTarjeta = request.getAttribute("numeroTarjeta").toString();
String tarjeta = request.getAttribute("tarjeta").toString().toUpperCase();
String fecha = request.getAttribute("fecha").toString();
String ip = request.getAttribute("ip").toString();
%>

<html>

<head>
<meta charset="UTF-8">
<title>COMPRA</title>
</head>

<body>

	<center>
		<br>
		<h1>RECIBO DE COMPRA</h1>
	</center>

	<table align="center">

		<tr>

			<td>Se&ntilde;or Usuario: <b> <%=nombre%>
			</b> <br>Su compra fue realizada satisfactoriamente por un valor de
				<b> <%=pFinal%>
			</b>. Correspondiente a <b> <%=productos%>
			</b>. <br>
			<br>El precio por unidad fue de: <b> <%=precio%>
			</b> <br>La compra fue realizada con la tarjeta de cr&eacute;dito
				n&uacute;mero <b> <%=numeroTarjeta%>
			</b> de la franquicia <b> <%=tarjeta%>.
			</b> Fecha de la compra: <b> <%=fecha%>.
			</b> <br>
			<br>Direcci&oacute;n IP: <b> <%=ip%>
			</b>

			</td>

		</tr>

	</table>



</body>

</html>