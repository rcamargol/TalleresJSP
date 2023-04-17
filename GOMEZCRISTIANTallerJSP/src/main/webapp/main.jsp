<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page session="true"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario</title>
<link rel="stylesheet" href="styleMAIN.css">

<script type="text/javascript">
	function coso_js(form) {
		if (form.art.value == "0") {
			alert("Escoja un artículo para comprar");
			form.art.focus();
			return;
		}
		if (form.cantidad.value == "") {
			alert("Cuántos va a comprar?");
			form.cantidad.focus();
			return;
		}
		if (form.preciocu.value == "") {
			alert("Cual es el costo?");
			form.preciocu.focus();
			return;
		}
		if (form.nombres.value == "") {
			alert("Y su nombre?");
			form.nombres.focus();
			return;
		}
		if (form.apellidos.value == "") {
			alert("Le faltó el apellido");
			form.apellidos.focus();
			return;
		}

		if (form.numtar.value == "") {
			alert("Y la tarjeta?");
			form.numtar.focus();
			return;
		}

		if (form.numtarConf.value == "") {
			alert("Confirme la tarjeta");
			form.numtarConf.focus();
			return;
		}
		if (form.numtarConf.value != form.numtar.value) {
			alert("Se equivocó volviendo a poner la tarjeta :/");
			form.numtarConf.focus();
			return;
		}

		form.submit();

	}
</script>
</head>
<body>

	<h1>Formulario para comprar</h1>
	<div>
		<fieldset>
			<legend>Ingrese los datos indicados para realizar la compra
				:)</legend>
			<form action="ServletTruco" method="post">
				<table>

					<!-- Articulo -->

					<tr>
						<td>Art&iacute;culo:</td>
						<td><select name="art">
								<option value="0">Elige una opci&oacute;n</option>
								<option value="zapatos">Zapatos</option>
								<option value="camisa">Camisa</option>
								<option value="reloj">Reloj</option>
								<option value="libro">Libro</option>
								<option value="computador">Computador</option>
						</select></td>
					</tr>

					<!-- Cantidad -->

					<tr>
						<td>Cantidad:</td>
						<td><input type="text" name="cantidad" value="" size="20" /></td>
					</tr>

					<!-- Precio Unitario -->

					<tr>
						<td>Precio Unitario:</td>
						<td><input type="text" name="preciocu" value="" size="20" /></td>
					</tr>

					<!-- Nombres -->

					<tr>
						<td>Nombres:</td>
						<td><input type="text" name="nombres" value="" size="40" /></td>
					</tr>

					<!-- Apellidos -->

					<tr>
						<td>Apellidos:</td>
						<td><input type="text" name="apellidos" value="" size="40" /></td>
					</tr>


					<!-- Tarjeta -->

					<tr>
						<td>Tarjeta:</td>
						<td><input type="radio" name="tarjeta" id="visa" value="visa"
							checked> <label for="visa">Visa</label> <input
							type="radio" name="tarjeta" id="mc" value="mc"> <label
							for="mc">MasterCard</label> <input type="radio" name="tarjeta"
							id="ae" value="ae"> <label for="ae">American
								Express</label></td>
					</tr>

					<!-- Num Tarjeta -->

					<tr>
						<td>Numero de tarjeta:</td>
						<td><input type="text" name="numtar" value="" size="40"
							maxlength="16" /></td>
					</tr>

					<!-- Num Tarjeta Conf -->

					<tr>
						<td>Confirme su numero de tarjeta:</td>
						<td><input type="text" name="numtarConf" value="" size="40"
							maxlength="16" /></td>
					</tr>

					<!-- El poderoso submit -->

					<tr>
						<td colspan="2"><input type="button" value="CONFIRMAR COMPRA"
							onClick="coso_js(this.form)" /></td>
					</tr>



				</table>
			</form>
		</fieldset>
	</div>

</body>
</html>