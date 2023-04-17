<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Taller 3</title>
<script language="JavaScript">
	function valida_envia(form) {
		if (form.arti.value == "0") {
			alert("Debe seleccionar un artículo....");
			form.arti.focus();
			return;
		}
		if (form.cantidad.value == "") {
			alert("Debe ingresar la cantidad....");
			form.cantidad.focus();
			return;
		}
		if (form.preciound.value == "") {
			alert("Debe ingresar el precio del artículo....");
			form.preciound.focus();
			return;
		}
		if (form.nombres.value == "") {
			alert("Debe ingresar el nombre del cliente....");
			form.nombres.focus();
			return;
		}

		if (form.apellidos.value == "") {
			alert("Debe ingresar el apellido del cliente....");
			form.apellidos.focus();
			return;
		}
		if (form.numerotar.value == "") {
			alert("Debe ingresar la tarjeta de credito....");
			form.numerotar.focus();
			return;
		}
		if (form.confirmar.value == "") {
			alert("Debe confirmar la tarjeta de credito....");
			form.confirmar.focus();
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
	<form action="Servlet" method="post">
		<table align="center">
			<tr>
				<td>Articulo:</td>
				<td><select name="arti">
						<option value="0">::Seleccione::</option>
						<option value="zapa">::Zapatos::</option>
						<option value="cami">::Camisa::</option>
						<option value="reloj">::Reloj::</option>
						<option value="libro">::Libro::</option>
						<option value="compu">::Computador::</option>
				</select></td>
			</tr>
			<tr>
				<td>Cantidad:</td>
				<td><input type="text" name="cantidad" value="" size="20" /></td>
			</tr>
			<tr>
				<td>PrecioUnd:</td>
				<td><input type="text" name="preciound" value="" size="20" /></td>
			</tr>
			<tr>
				<td>Nombres:</td>
				<td><input type="text" name="nombres" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Apellidos:</td>
				<td><input type="text" name="apellidos" value="" size="40" /></td>
			</tr>
			<tr>
				<td>TarjetaCredito:</td>
				<td><INPUT TYPE="radio" Name="boton" value="VISA"> Visa
					<INPUT TYPE="radio" Name="boton" value="MASTERCARD">
					MasterCard <INPUT TYPE="radio" Name="boton"
					value="AMERICAN EXPRESS"> American Express</td>
			</tr>
			<tr>
				<td>N&uacute;mero Tarjeta de credito:</td>
				<td><input type="text" name="numerotar" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Confirmar n&uacute;mero Tarjeta de credito:</td>
				<td><input type="text" name="confirmar" value="" size="40" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="ACEPTAR"
					onClick="valida_envia(this.form)" /></td>
			</tr>

		</table>
	</form>
</body>
</html>