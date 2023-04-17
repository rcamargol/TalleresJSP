<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tiendita</title>
</head>
<body bgcolor="#fefbe9">
	<style>
h1 {
	font-family: monospace, Courier New;
	font-size: 2.4em;
	font-weight: bold;
	text-align: center;
	color: #f0a04b;
	text-transform: uppercase;
	margin-top: 1.5em;
	margin-bottom: 1.5em;
	text-shadow: 4px 4px #fff;
}

.botonAceptar {
	background-color: #e1eedd;
	border-radius: 8px;
	text-align: center;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	text-align: center;
	font-family: sans-serif, verdana;
	font-size: 12;
	transition-duration: 0.4s;
}
</style>
	<script language="JavaScript">
		function valida_envia(form) {
			if (form.articulo.value == "0") { //comprueba que no es vacio 
				alert("Debe seleccionar una opcion ");
				form.articulo.focus(); //buscar en el form lo que need
				return;
			}
			if (form.Cantidad.value == "") { //valida clave
				alert("Ingrese la cantidad ");
				form.Cantidad.focus();
				return;
			}
			if (isNaN(parseInt(form.Cantidad.value))) { //  precio sea un número entero
				alert("USUARIO NO DAÑE MI CODIGO PORFA, INGRESE ENTEROOOOOOOOOOOO"); //el nan es funcion js para ver int
				form.Cantidad.focus();
				return;
			}
			if (form.Precio.value == "") { //valida que prof no vacia 
				alert("Ingrese precio ");
				form.Precio.focus();
				return;
			}
			if (isNaN(parseInt(form.Precio.value))) { //  precio sea un número entero
				alert("USUARIO NO DAÑE MI CODIGO PORFA, INGRESE ENTEROOOOOOOOOOOO"); //el nan es funcion js para ver int
				form.Precio.focus();
				return;
			}

			if (form.Nombre.value == "") { //valida 
				alert("Ingrese Nombre ");
				form.Nombre.focus();
				return;
			}
			if (form.Apellido.value == "") { //valida qcia 
				alert("Ingrese apellido ");
				form.Apellido.focus();
				return;
			}
			if (form.tarjeta.value == "") { //valida 
				alert("Escoja una tarjeta ");
				form.tarjeta.focus();
				return;
			}

			if (form.Numero.value.length != 16) {
				alert("El número de tarjeta debe tener 16 dígitos e ingreselo SIN GUIONES, GRX");
				form.Numero.focus();
				return;
			}
			if (form.Numero.value != form.ConfNumero.value) {
				alert("Ojo con los datos que ingresa");
				form.Numero.focus()
				form.ConfNumero.focus()
				return;
			}
		

			form.submit(); //si no hay errores envie

		}
	</script>


	<center>
		<h1>Tiendita sg</h1>
	</center>
	<form action="Servlet1" method="get">
		<!-- DECLARA QUE El form va a servlet : -->
		<!--post = Obtiene info encriptada -->
		<table align="center" bgcolor="fefbe9">
			<tr>
				<td>Art&iacute;culo:</td>
				<td><select name="articulo">
						<!--Coje el form de profesion  -->
						<option value="0">::Seleccione ::</option>
						<option value="1">Zapatos</option>
						<option value="2">Camisa</option>
						<option value="3">Reloj</option>
						<option value="4">Libro</option>
						<option value="5">Computador</option>


				</select></td>
			</tr>
			<tr>
				<td>Cantidad</td>
				<td><input type="text" name="Cantidad" value="" size="20" /></td>
			</tr>
			<tr>
				<td>Precio por unidad</td>
				<td><input type="text" name="Precio" value="" size="20" /></td>
			</tr>
			<tr>
				<td>Nombre</td>
				<td><input type="text" name="Nombre" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Apellidos</td>
				<td><input type="text" name="Apellido" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Tarjeta Credito</td>
				<td><input type="radio" name="tarjeta" id="visa" value="visa"
					required> Visa <input type="radio" name="tarjeta"
					id="mastercard" value="mastercard" required>Mastercard <input
					type="radio" name="tarjeta" id="american" value="american" required>
					American</td>


			</tr>
			<tr>
				<td>N&uacute;mero de tarjeta</td>
				<td><input type="text" name="Numero" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Confirma N&uacute;mero de tarjeta</td>
				<td><input type="text" name="ConfNumero" value="" size="40" /></td>
			</tr>
			<tr>
			</tr>
			<tr>
			</tr>

			<!--Colspan Ocupe X numero columnas -->
			<tr>
				<!-- <td colspan="2"><input type=submit value="Confirmar"></td> -->
				<!--  <td colspan="2"><input type="button" value="ACEPTAR" /></td> onClick="valida_envia(this.form)" /></td> -->

				<td colspan="2"><input type="button" value="ACEPTAR"
					class="botonAceptar" onClick="valida_envia(this.form)" /></td>

			</tr>



		</table>
	</form>
</body>
</html>