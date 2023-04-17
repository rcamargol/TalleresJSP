<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String articulo = request.getAttribute("articulo").toString();
String cantidad = request.getAttribute("cantidad").toString();
String precio = request.getAttribute("precio").toString();
String nombre = request.getParameter("nombre");
String apellido = request.getParameter("apellido");
String boton = request.getAttribute("boton").toString();
String numTarjeta = request.getAttribute("numTarjeta").toString();
String confirmartarjeta = request.getParameter("confirmartarjeta");
String precioTotal = request.getAttribute("precioTotal").toString();
String dia = request.getAttribute("dia").toString();
String ip = request.getAttribute("ip").toString();
%>
<html style="background-color: Aqua; ">
<head>
<meta charset="UTF-8">
<title>Respuesta desde el JSP</title>
</head>
<body>
	<%
	out.println("<h1>Resultados del formulario</h1>");
	%>
	<p>Se leyeron los siguientes valores:<br></p>
	
	<p>
		Señor Usuario:
		<%=nombre%>
		<%=apellido%><br></p>
	
	<p>
		Su compra fue realizada satisfactoriamente por un valor de $
		<%=precioTotal%>
		correspondiente a
		<%=cantidad%>
		<%=articulo%><br></p>
	
	<p>
		El precio por unidad fue de:
		<%=precio%><br>
	</p>
	<p>
		La compra fue realizada con la tarjeta de credito numero:
		<%=numTarjeta%>
		de la franquicia
		<%=boton%>.
		Fecha de la compra:
		<%=dia%><br>
	</p>
	<p>
		Direccion IP:
		<%=ip%>
	</p>
	<br>

<a href="inicio.jsp" align="center">Volver</a>


</body>
</html>