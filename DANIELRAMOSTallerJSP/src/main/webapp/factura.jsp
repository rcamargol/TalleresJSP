<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
String productos = request.getAttribute("products").toString();
String cantidad = request.getAttribute("cantidad").toString();
String valor = request.getAttribute("valor").toString();
String valorTotal = request.getAttribute("valTotal").toString();
String nombre = request.getAttribute("nombre").toString();
String apellido = request.getAttribute("apellido").toString();
String tarjetas = request.getAttribute("tarjeta").toString();
String numTarjeta = request.getAttribute("numTarjeta").toString();
String confTarjeta = request.getAttribute("confNumTarjeta").toString();
String dd = request.getAttribute("dia").toString();
String mm = request.getAttribute("mes").toString();
String aaaa = request.getAttribute("año").toString();
String ip = request.getAttribute("ip").toString();
%>
<html>
<head>
<meta charset="UTF-8">
<title>FACTURA DE COMPRA</title>

<style type="text/css">
	body{
	background: #FFEFBA;  /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #FFFFFF, #FFEFBA);  /* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to right, #FFFFFF, #FFEFBA); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	}
	
	form{
	width: 1000px;
	background-color: rgb(254, 231, 141);|
	padding: 30px;
	border-radius: 40px;
	}
		
	.subtitulos{
	font-weight: bold;
	font-size: 10;
	padding: 10px;
	padding-right: 50px;
	}
	
	hr {
  	height: 5px;
  	width: 90%;
 	background-color: black;
	}
	
	table {
 	border-collapse: collapse;
	}
	
	a:link, a:visited {
  	background-color: #8BC6E1;
  	color: black;
  	font-size:30px;
  	font-weight: bold;
  	padding: 14px 25px;
  	text-align: center;
  	text-decoration: none;
  	display: inline-block;
	}

	a:hover, a:active {
  	background-color: gray;
}
</style>
<script type="text/javascript">

function ocultarTarjeta(numero){
	numero = numero.toString()
	acumulador=""
	
	for(let i = 0; i<numero.length; i++){
		if(i>12){
			acumulador = acumulador + numero[i]
		} else {
			acumulador = acumulador + "X"
		}
	}
	return acumulador;
}
</script>
</head>
<body>
	<center>
		<form action="">
			<table align="center" border="1">
			<hr>
			<tr>
				<td class="subtitulos"><h2>USUARIO</td></h2>
				<td>
					<h1><%=nombre %> <%=apellido %></h1>
				</td>
			</tr>
			<tr>
				<td class="subtitulos"><h2>PRODUCTOS</td></h2>
				<td>
					<h1><%=productos %></h1>
				</td>
			</tr>
			
			<tr>
				<td class="subtitulos"><h2>CANTIDAD</td></h2>
				<td>
					<h1><%=cantidad %></h1>
				</td>
			</tr>
			
			<tr>
				<td class="subtitulos"><h2>VALOR</td></h2>
				<td>
					<h1>$ <%=valor %></h1>
				</td>
			</tr>
			
			<tr>
				<td class="subtitulos"><h2>VALOR TOTAL</td></h2>
				<td>
					<h1>$ <%=valorTotal %></h1>
				</td>
			</tr>
			
			<tr>
				<td class="subtitulos"><h2>TARJETA</td></h2>
				<td>
					<h1><%=tarjetas %></h1>
				</td>
			</tr>
			
			<tr>
				<td class="subtitulos"><h2>NUMERO DE TARJETA</td></h2>
				<td>
					<h1>XXXX-XXXX-XXXX-<%=numTarjeta %></h1>
				</td>
			</tr>
			
			<tr>
				<td class="subtitulos"><h2>FECHA DE TRANSACCION</td></h2>
				<td>
					<h1><%=dd %>/<%=mm %>/<%=aaaa %></h1>
				</td>
			</tr>
			
			<tr>
				<td class="subtitulos"><h2>IP CLIENTE</td></h2>
				<td>
					<h1><%=ip %></h1>
				</td>
			</tr>
			</table>
			<br>
			<a href="registroCompras.jsp"> Regresar al formulario </a>
			<hr>
		</form>
	</center>
</body>
</html>