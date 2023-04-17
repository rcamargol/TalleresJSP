<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro de Compra</title>
	<script language="JavaScript">
	
	function mostrarValor(){
		var lista = document.getElementById("articulo");
		var texto = document.getElementById("precio");
		texto.value = lista.value;
	}
	
	function valida_envia(form){
		if(form.articulo.value=="0"){
			alert("Debe seleccionar una opcion de articulo");
			form.articulo.focus();
			return;
		}
		if(form.cantidad.value==""){
			alert("Debe ingresar la cantidad de articulos que desea");
			form.cantidad.focus();
			return;
		}
		if(form.cantidad.value<="0"){
			alert("Debe ingresar una cantidad valida de articulos - No numeros menores a cero");
			form.cantidad.focus();
			return;
		}
		
		if(form.precio.value==""){
			alert("Debe ingresar el precio del articulo");
			form.precio.focus();
			return;
		}
		if(form.nombres.value==""){
			alert("Debe ingresar al menos uno de sus nombres");
			form.nombres.focus();
			return;
		}
		if(form.apellidos.value==""){
			alert("Debe ingresar al menos uno de sus apellidos");
			form.apellidos.focus();
			return;
		}
		if(form.tipo.value==""){
			alert("No hay ningun elemento seleccionado");
			form.tipo.focus();
			return;
		}
		if(form.tarjeta.value==""){
			alert("Debe agregar el número de la tarjeta de crédito para realizar la transacción");
			form.tarjeta.focus();
			return;
		}
		if(form.tarjeta.value<=999999999999999){
			alert("Debe ingresar los 16 digitos de la tarjeta de credito - Ingresa todos los numeros");
			form.tarjeta.focus();
			return;
		}
		if(form.tarjeta.value>=10000000000000000){
			alert("Debe ingresar los 16 digitos de la tarjeta de credito - Ingrese menos numeros");
			form.conftarjeta.focus();
			return;
		}
		
		if(form.conftarjeta.value==""){
			alert("Debe agregar la confimación del número de su tarjeta");
			form.conftarjeta.focus();
			return;
		}
		
		if(form.tarjeta.value!=form.conftarjeta.value){
			alert("Los numeros de la tarjeta de credito no coinciden");
			form.tarjeta.focus();
			form.conftarjeta.focus();
			return;
		}
		form.submit();
	}
	</script>
</head>
<body>
	<style>
		body{
		background-image: url("1fondo.jpg");
		background-size: cover;
		color: black;
		font-family: Georgia;
		}
		h1{
			color: #59352D;
			text-align: center;
			font-size: 35pt;
		}
		h2{
			text-align: center;
			color: #59352D;
		}
		p {
			text-align: center;
		}
	</style>
	<h1>Registro de compras</h1>
	<p>Rellene la siguiente informaci&oacute;n dependiendo de los datos de su articulo<br>a comprar junto sus nombres y apellidos.</p><br>
	<form action="Servlet1" method="post">
		<table align="center">
			<tr><td>Articulo: </td><td><select onchange="mostrarValor()" name="articulo" id="articulo" class="controls">
			<option value="0">:: Seleccione ::</option>
			<option value="74000">Zapatos</option>
			<option value="42000">Camisa</option>
			<option value="28000">Reloj</option>
			<option value="15000">Libro</option>
			<option value="2700000">Computador</option>
			</select></td></tr>
			<tr><td>Cantidad: </td><td><input type="number" name="cantidad" value="" size="20" class="controls"/></td></tr>
			<tr><td>Precio por unidad: </td><td><input class="controls" disabled type="number" name="precio" id="precio" placeholder="Precio del articulo" value="" size="20"/></td></tr>
			<tr><td>Nombres del cliente: </td><td><input type="text" name="nombres" value="" size="40"/></td></tr>
			<tr><td>Apellidos del cliente: </td><td><input type="text" name="apellidos" value="" size="40"/></td></tr>
		</table><br>
		<h2>Datos de la transacci&oacute;n</h2>
		<table align="center">
			<tr><td>Tarjeta de cr&eacute;dito: </td><td><input type="radio" name="tipo" value="Visa"/>Visa<br>
												 		<input type="radio" name="tipo" value="MasterCard"/>MasterCard<br>
												 		<input type="radio" name="tipo" value="American Express"/>American Express</td></tr>
			<tr><td>N&uacute;mero de tarjeta de cr&eacute;dito: </td><td><input type="number" name="tarjeta" value="" size="40"/></td></tr>
			<tr><td>Confirmar n&uacute;mero de tarjeta de cr&eacute;dito: </td><td><input type="number" name="conftarjeta" value="" size="40"/></td></tr>
		</table><br><br>
		<table align="center"><tr><td><input type="button" value="CONFIRMAR COMPRA" onClick="valida_envia(this.form)"/></td></tr></table>
	</form>
</body>
</html>