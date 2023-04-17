<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejercicio 3</title>
<script language="JavaScript">
	function valida_envio(form) {
		if (form.articulo.value == "0") {
			alert("Debe seleccionar un artículo....");
			form.articulo.focus();
			return;
		}
		if (form.cantidad.value == "") {
			alert("Debe ingresar la cantidad....");
			form.cantidad.focus();
			return;
		}
		if (form.precio.value == "") {
			alert("Debe ingresar el precio del artículo....");
			form.precio.focus();
			return;
		}
		if (form.nombre.value == "") {
			alert("Debe ingresar el nombre del cliente....");
			form.nombre.focus();
			return;
		}
		if (form.apellido.value == "") {
			alert("Debe ingresar el apellido del cliente....");
			form.apellido.focus();
			return;
		}
		if (form.boton1.value == "") {
			alert("Debe ingresar el tipo de tarjeta....");
			form.boton1.focus();
			return;
		}
		if (form.tarjetacredito.value == "") {
			alert("Debe ingresar la tarjeta de credito....");
			form.tarjetacredito.focus();
			return;
		}
		if (form.comfirmartarjeta.value == "") {
			alert("Debe comfirmar el número de la tarjeta....");
			form.comfirmartarjeta.focus();
			return;
		}if (form.comfirmartarjeta.value != form.tarjetacredito.value) {
			alert("Los numeros de tarjeta deben ser iguales");
			form.comfirmartarjeta.focus();
			return;
		}
		
		form.submit();
	}
</script>
</head>
<body>
	<center>
		<h1>Registro de compras</h1>
	</center>
	<form action="Servlet" = method="post">
		<tr>
			<td>Art&iacute;culo</td>
		</tr>
		<select name="articulo">
			<br>
			<option value="0">:: Seleccione ::</option>
			<option value="Zapato(s)">Zapatos</option>
			<option value="Camisa(s)">Camisa</option>
			<option value="Reloj(es)">Reloj</option>
			<option value="Libro(s)">Libro</option>
			<option value="Computador(es)">Computador</option>
		</select>
		<tr>
			<td>Cantidad</td>
			<td><input type="text" name="cantidad" value="" size="20"></td>
		</tr>
		<br> <br>
		<tr>
			<td>Precio por unidad</td>
			<td><input type="text" name="precio" value="" size="20"></td>
		</tr>
		<br> <br>
		<tr>
			<td>Nombre</td>
			<td><input type="text" name="nombre" value="" size="40"></td>
		</tr>
		<br> <br>
		<tr>
			<td>Apellido</td>
			<td><input type="text" name="apellido" value="" size="40"></td>
		</tr>
		<br> <br> Tipo tarjeta:<INPUT TYPE="radio" Name="boton1"
			value="VISA"> Visa <INPUT TYPE="radio" Name="boton1"
			value="MASTERCARD"> MasterCard <INPUT TYPE="radio"
			Name="boton1" value="AMERICAN EXPRESS"> American Express<br>
		<br>
		<tr>
			<td>Tarjeta Cr&eacute;dito</td>
			<td><input type="text" name="tarjetacredito" value="" size="40"></td>
		</tr>
		<br> <br>
		<tr>
			<td>Comfirmar tarjeta</td>
			<td><input type="text" name="comfirmartarjeta" value=""
				size="40"></td>
		</tr>
		<br> <br>
		<tr>
			<td colspan="2"><input type="button" value="Comfirmar compra"
				onclick="valida_envio(this.form)" /></td>
		</tr>
	</form>
</body>
</html>