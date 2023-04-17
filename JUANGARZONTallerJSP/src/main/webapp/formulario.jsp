<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulario de Compras</title>
<script language="JavaScript">
	function valida_compra(form) {
		if (form.art.value == "0") {
			alert("Debe seleccionar un articulo");
			form.articulo.focus();
			return;
		}
		if (form.cantidad.value == "") {
			alert("Debe ingresar la cantidad");
			form.cantidad.focus();
			return;
		}
		if (form.ppu.value == "") {
			alert("Debe ingresar el precio por unidad");
			form.prof.focus();
			return;
		}
		if (form.nombre.value == "") {
			alert("Debe ingresar el nombre");
			form.nombre.focus();
			return;
		}
		if (form.apellido.value == "") {
			alert("Debe ingresar el apellido");
			form.apellido.focus();
			return;
		}
		if (form.tipotarjeta.value == "") {
			alert("Debe ingresar el tipo de tarjeta");
			form.tipotarjeta.focus();
			return;
		}
		if (form.numero.value == "") {
			alert("Debe ingresar el numero de la tarjeta de credito");
			form.tipotarjeta.focus();
			return;
		}
		if (form.numeroconf.value == "") {
			alert("Debe confirmar el numero de la tarjeta de credito");
			form.tipotarjeta.focus();
			return;
		}
		if (form.numeroconf.value != form.numero.value) {
			alert("Los numeros de tarjeta deben ser iguales");
			form.tipotarjeta.focus();
			return;
		}

		form.submit();
	}
</script>
</head>
<body>
	<center>Registro de Compras</center>
	<form action="ServletCompras" method="post">

		<table align="center">
			<tr>
				<td>Articulo</td>
				<td><select name="art" />
					<option value="0">:: Seleccione ::</option>
					<option value="Zapatos">Zapatos</option>
					<option value="Camisas">Camisa</option>
					<option value="Relojes">Reloj</option>
					<option value="Libros">Libro</option>
					<option value="Computadores">Computador</option> </select></td>
			</tr>
			<tr>
				<td>Cantidad:</td>
				<td><input type=text name="cantidad" value="" size="20" /></td>
			</tr>
			<tr>
				<td>Precio por Unidad:</td>
				<td><input type=text name="ppu" value="" size="20" /></td>
			</tr>
			<tr>
				<td>Nombre:</td>
				<td><input type=text name="nombre" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Apellido:</td>
				<td><input type=text name="apellido" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Tarjeta de Credito:</td>
				<td><input type="radio" name="tipotarjeta" value="Visa">
					Visa <input type="radio" name="tipotarjeta" value="MasterCard">
					MasterCard <input type="radio" name="tipotarjeta"
					value="AmericanExpress"> American Express</td>
			</tr>
			<tr>
				<td>Numero de Tarjeta de Credito:</td>
				<td><input type=text
					placeholder="Introduce solo numeros en formato **** **** **** **** "
					name="numero" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Confirme el numero de la Tarjeta de Credito:</td>
				<td><input type=text
					placeholder="Introduce solo numeros en formato **** **** **** **** "
					name="numeroconf" value="" size="40" /></td>
			</tr>

			<tr>
				<td colspan="2"><input type="button" value="CONFIRMAR COMPRA"
					onClick="valida_compra(this.form)" /></td>
			</tr>
		</table>
	</form>
</body>
</html>