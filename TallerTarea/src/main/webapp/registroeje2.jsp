<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="color: White; background-color: Orange">
<head>
<meta charset="ISO-8859-1">
<title>Registro compras</title>
<script language="JavaScript">
	
function validacion(form) {
	if (form.articulo.value == "0") {
		alert("Debe seleccionar una opcion");
		form.articulo.focus();
		return;
	}
	if (form.cantidad.value == "") {
		alert("Debe ingresar la cantidad de articulos");
		form.cantidad.focus();
		return;
	}
	if (form.precio.value == "") {
		alert("Debe ingresar el precio por unidad del artículo escogido");
		form.precio.focus();
		return;
	}
	if (form.apellido.value == "") {
		alert("Debe ingresar el apellido");
		form.apellido.focus();
		return;
	}
	if (form.nombre.value == "") {
		alert("Debe ingresar el nombre");
		form.nombre.focus();
		return;
	}
	if (form.tarjeta.value == "") {
		alert("Debe elegir un tipo de tarjeta");
		form.tarjeta.focus();
		return;
	}
	if (form.numTarjeta.value == "") {
		alert("Debe ingresar el número de tarjeta");
		form.numTarjeta.focus();
		return;
	}
	if (form.numTarjeta.value.length != 16) {
		alert("El numero de la tarjeta tiene que ser de 16 digitos");
		form.numTarjeta.focus();
		return;
	}
	if (form.confirmarTarjeta.value == "") {
		alert("Por favor confirme el número de tarjeta");
		form.confirmarTarjeta.focus();
		return;
	}
	if(form.confirmarTarjeta.value != form.numTarjeta.value){
		alert("Los números de las tarjetas no coinciden");
		form.confirmarTarjeta.focus();
		return;
	}

	form.submit();

}
	
	</script>
</head>
<body style="color: Orange; ">
	<center style="color: Black; ">
		<br>
		<h1>REGISTRO DE COMPRAS</h1>
	</center>

	<form action="servlet" method="post">

		<table align="center" style="background-color: Black; color: White">

			<tr>
				<td style="background-color: Black; color: White">Articulos:</td>
				<td><select name="articulo" style="color: Black; ">
						<option value="0">Seleccione algun articulo</option>
						<option value="1">Zapatos</option>
						<option value="2">Camisas</option>
						<option value="3">Relojes</option>
						<option value="4">Libros</option>
						<option value="5">Computadores</option>
				</select></td>
			</tr>
			<tr>
				<td>Cantidad:</td>
				<td><input type="text" name="cantidad" value="" size="20" /></td>
			</tr>
			<tr>
				<td>Precio por unidad:</td>
				<td><input type="text" name="precio" value="" size="20" /></td>
			</tr>
			<tr>
				<td>Apellidos del cliente:</td>
				<td><input type="text" name="apellido" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Nombres del cliente:</td>
				<td><input type="text" name="nombre" value="" size="40" /></td>
			</tr>
				<tr>
					<td>Tarjeta de credito: </td>
					<td>Visa <input type="radio" name="tarjeta" value="Visa" style="background-color: Black; ">
						MasterCard <input type="radio" name="tarjeta" value="MasterCard" style="background-color: Black; ">
						American Express <input type="radio" name="tarjeta" value="American Express" style="background-color: Black; "></td>
				</tr>
			<tr>
				<td>Numero de tarjeta de credito:</td>
				<td><input type="text" name="numTarjeta" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Confirmar numero de tarjeta de credito:</td>
				<td><input type="text" name="confirmarTarjeta" value=""
					size="40" /></td>
			</tr>
				<tr>
					<td><br><input type="button" value="CONFIRMAR COMPRA" onclick="validacion(this.form)" />
					</td>
				</tr>
		</table>

	</form>

</body>
</html>