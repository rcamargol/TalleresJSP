<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTRO COMPRAS</title>
<script language="JavaScript">
	function valida_envia(form) {

		if (form.articulo.value == "0") {
			alert("Debe seleccionar un articulo")
			form.articulo.focus();
			return;
		}
		if (form.cantidad.value == "") {
			alert("Debe digitar la cantidad de articulos")
			form.cantidad.focus();
			return;
		}
		if (form.preciou.value == "") {
			alert("Debe digitar el precio por unidad de articulo")
			form.preciou.focus();
			return;
		}
		if (form.nombres.value == "") {
			alert("Debe digitar el nombre")
			form.nombres.focus();
			return;
		}
		if (form.apellidos.value == "") {
			alert("Debe digitar los apellidos")
			form.apellidos.focus();
			return;
		}
		if ((form.radio.value != "Visa") && (form.radio.value != "MasterCard")
				&& (form.radio.value != "American Express")) {
			alert("Debe seleccionar una tarjeta de credito")
			form.radio.focus();
			return;
		}
		if (form.numtarjeta.value == "") {
			alert("Debe digitar el numero de tarjeta de credito")
			form.numtarjeta.focus();
			return;
		}
		if (form.numtarjeta2.value == "") {
			alert("Debe confirmar el numero de tarjeta de credito")
			form.numtarjeta2.focus();
			return;
		}
		if (form.numtarjeta.value != form.numtarjeta2.value) {
			alert("El numero de tarjeta de credito no coincide")
			form.numtarjeta.focus();
			form.numtarjeta2.focus();
			return;
		}
		form.submit();
	}
</script>
</head>
<body>
	<center>Registro de compra</center>
	<form action="Servlet" method="post">
		<table align="center">
			<tr>
				<td>Art&iacute;culo:</td>
				<td><select name="articulo">
						<option value="0">Seleccione
							</opcion>
						<option value="Zapatos">Zapatos
							</opcion>
						<option value="Camisa">Camisa
							</opcion>
						<option value="Reloj">Reloj
							</opcion>
						<option value="Libro">Libro
							</opcion>
						<option value="Computador">Computador
							</opcion>
				</select></td>
			</tr>
			<tr>
				<td>Cantidad:</td>
				<td><input type="text" name="cantidad" value="" size="20" /></td>
			</tr>
			<tr>
				<td>Precio por unidad:</td>
				<td><input type="text" name="preciou" value="" size="20" /></td>
			</tr>
			<tr>
				<td>Nombres del cliente:</td>
				<td><input type="text" name="nombres" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Apellidos del cliente:</td>
				<td><input type="text" name="apellidos" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Tarjeta de credito:</td>
				<td><input type="radio" name="radio" value="Visa">Visa<br>
					<input type="radio" name="radio" value="MasterCard">MasterCard<br>
					<input type="radio" name="radio" value="American Express">American
					Express</td>
			</tr>
			<tr>
				<td>Numero de tarjeta de credito:</td>
				<td><input type="text" name="numtarjeta" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Confirmar numero de tarjeta de credito:</td>
				<td><input type="text" name="numtarjeta2" value="" size="40" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="CONFIRMAR COMPRA"
					onClick="valida_envia(this.form)" /></td>
			</tr>
		</table>
	</form>

</body>
</html>