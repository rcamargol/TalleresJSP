<%@page import="java.sql.DataTruncation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%
String articulo = request.getParameter("articulo");
int cantidad = Integer.parseInt(request.getParameter("cantidad"));
int precioUnitario = Integer.parseInt(request.getParameter("precio"));
String nombre = request.getParameter("nombre");
String apellido = request.getParameter("apellido");
String tarjeta = request.getParameter("tarjeta");
String tarjetanum = request.getParameter("numTC");
String tarjetanumcom = request.getParameter("confirmarnumTC");
int precioT = precioUnitario * cantidad;
String ultimosdigitos = "";
String fecha = (new java.util.Date()).toLocaleString();
for (int i = 0; i < tarjetanum.length(); i++) {
	char temp = ' ';
	char temp2 = ' ';
	char temp3 = ' ';
	char temp4 = ' ';
	char temp5 = ' ';
	if (i == 15) {
		temp = tarjetanum.charAt(i);
	}
	if (i == 17) {
		temp3 = tarjetanum.charAt(i);
	}
	if (i == 16) {
		temp2 = tarjetanum.charAt(i);
	}
	if (i == 18) {
		temp4 = tarjetanum.charAt(i);
	}

	ultimosdigitos += temp;
	ultimosdigitos += temp2;
	ultimosdigitos += temp3;
	ultimosdigitos += temp4;

}
%>

<html>
<head>
<meta charset="UTF-8">
<title>Carrito</title>
<link rel="stylesheet" href="estilo.css">
</head>
<body>
	<p class="resp"><b>Resultado de la compra</b><br><br> Señor Usuario:<b><%=nombre %> <%=apellido %></b><br>
	Su compra fue realizada satisfactoriamente por un valor de: <b>$<%=precioT %></b>. Correspondiente <br>a <b><%=cantidad %> <%=articulo %></b><br>
	<br>El precio por unidad fue de: <b>$<%=precioUnitario %></b><br>
	La compra fue realizada con la tarjeta de credito numero: "****-****-****-<%=ultimosdigitos %> de la <br>franquicia <b><%=tarjeta %></b>. Fecha de compra:<b><%=fecha %></b><br><br>
	Direccion IP:
	<b><strong id="ipId"></strong></b>
	<script type="text/javascript">
		function get_ip(obj) {
			document.getElementById('ipId').innerHTML = obj.ip;
		}
	</script>
	<script type="text/javascript"
		src="https://api.ipify.org/?format=jsonp&callback=get_ip"></script>
	<br><br><b><a href="inicioTaller.jsp">Volver a Comprar</a> </b>
	
	</p>
	
</body>
</html>