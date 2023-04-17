<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-color: Black;">
<head>


<meta charset="UTF-8">
<title>Actividad 1</title>
<script languaje="JavaScript">
	function valida_envia(form) {
		if (form.articulo.value == "0") {
			alert("Debe seleccionar un articulo");
			form.articulo.focus();
			return;
		}
		if (form.cantidad.value == "") {
			alert("Debe ingresar la cantidad");
			form.cantidad.focus();
			return;
		}
		if (form.precio.value == "") {
			alert("Debe ingresar el precio");
			form.precio.focus();
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
		if (form.boton.value == "") {
			alert("Debe ingresar un tipo de tarjeta");
			form.boton.focus();
			return;
		}
		
		if (form.numTarjeta.value.length != 16) {
			alert("La tarjeta debe tener 16 digitos");
			form.numTarjeta.focus();
			return;
		}
		
		if (form.numTarjeta.value == "") {
			alert("Debe ingresar el numero de la tarjeta");
			form.numTarjeta.focus();
			return;
		}
		if (form.confirmartarjeta.value == "") {
			alert("Debe confirmar el numero de la tarjeta");
			form.confirmartarjeta.focus();
			return;
		}
		if(form.confirmartarjeta.value != form.numTarjeta.value){
			alert("Los números de tarjeta son diferentes");
			form.confirmartarjeta.focus();
			return;
		}

		form.submit();
	}
</script>
</head>
<body>

	<center style="color: White;">
		<big><u><i><b><h6>
							<p>Formularios y validaciones</p>
						</h6></b></i></u></big>
	</center>
	<center style="color: White;">
		<h1>Formulario de entrada</h1>
	</center>
	<form action="Michico" method="post">
		<table align="center">

			<tr>
				<td style="background-color: Purple; color: White">Articulo:</td>
				<td style="background-color: White;"><select name="articulo"
					style="background-color: White; width: 152px">
						<option value="0">:: seleccione ::</option>
						<option value="1">Zapatos</option>
						<option value="2">Camisa</option>
						<option value="3">Reloj</option>
						<option value="4">Libro</option>
						<option value="5">Computador</option>
				</select></td>
			</tr>
			<tr>
				<td style="background-color: Purple; color: White">Cantidad:</td>
				<td style="background-color: White;"><input type="text"
					name="cantidad" value="" size="20"
					style="color: White; background-color: Black" /></td>
			</tr>
			<tr>
				<td style="color: White; background-color: Purple">Precio por
					Unidad:</td>
				<td style="background-color: White;"><input type="text"
					name="precio" value="" size="20"
					style="background-color: Black; color: White" /></td>
			</tr>
			<tr>
				<td style="color: White; background-color: Purple">Nombres del
					Cliente:</td>
				<td style="background-color: White;"><input type="text"
					name="nombre" value="" size="40"
					style="background-color: Black; color: White" /></td>
			</tr>
			<tr>
				<td style="color: White; background-color: Purple">Apellidos
					del Cliente:</td>
				<td style="background-color: White;"><input type="text"
					name="apellido" value="" size="40"
					style="background-color: Black; color: White" /></td>
			</tr>

			<tr>
			<tr>

				<td style="color: White; background-color: Purple">Tarjeta de
					Credito:</td>

				<td style="background-color: White;">Tarjeta: <input
					type="radio" Name="boton" value="1" style="background-color: Blue;">VISA<input
					type="radio" Name="boton" value="2"
					style="color: Red; background-color: Yellow">MasterCard<input
					type="radio" Name="boton" value="3" style="color: Blue;">American
					Express
				</td>
			</tr>


			</tr>
			<tr>
				<td style="color: White; background-color: Purple">Numero De
					Tarjeta de Credito:</td>
				<td style="background-color: White;"><input type="text"
					name="numTarjeta" value="" size="40"
					style="background-color: Black; color: White" /></td>
			</tr>
			<tr>
				<td style="color: White; background-color: Purple">Confirmar
					Numero de Tarjeta:</td>
				<td style="background-color: White;"><input type="text"
					name="confirmartarjeta" value="" size="40"
					style="background-color: Black; color: White" /></td>
			</tr>
			<tr>
				<td colspan="2" style="background-color: White;"><input
					type="button" value="Confirmar Compra"
					onClick="valida_envia(this.form)"
					style="color: White; background-color: Green; width: 500px"></td>


			</tr>









		</table>


	</form>

</body>
</html>