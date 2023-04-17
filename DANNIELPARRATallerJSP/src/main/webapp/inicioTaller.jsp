<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Taller 1</title>
<link rel="stylesheet" href="estilo.css">
<script type="text/javascript">
	function valida_envidia(form) {
		if (form.articulo.value == 0) {
			alert("Debe seleccionar el articulo...");
			form.articulo.focus();
			return;
		}
		if (form.cantidad.value == "") {
			alert("Debe ingresar la cantidad..");
			form.cantidad.focus();
			return;
		}
		if(isNaN(form.cantidad.value)){
			alert("Debe ingresar un numero en cantidad..");
			form.cantidad.focus();
			return;
		}
		if (form.precio.value == "") {
			alert("Debe ingresar el precio..");
			form.precio.focus();
			return;
		}
		if(isNaN(form.precio.value)){
			alert("Debe ingresar un numero en el precio..");
			form.precio.focus();
			return;
		}
		if (form.nombre.value == "") {
			alert("Debe ingresar el nombre..");
			form.nombre.focus();
			return;
		}
		if(!isNaN(form.nombre.value)){
			alert("Debe ingresar el nombre sin numeros..");
			form.nombre.focus();
			return;
		}
		
		if (form.apellido.value == "") {
			alert("Debe ingresar el apellido..");
			form.apellido.focus();
			return;
		}
		if(!isNaN(form.apellido.value)){
			alert("Debe ingresar el apellido sin numeros..");
			form.apellido.focus();
			return;
		}
		if (form.numTC.value == "") {
			alert("Debe ingresar el numero de la tarjeta..");
			form.numTC.focus();
			return;
		}
		if ((form.numTC.value).length != 19) {
			alert("Debe ingresar el farmato establecido que es 0000-0000-0000-0000..");
			form.numTC.focus();
			return;
		}
		if (form.confirmarnumTC.value == "") {
			alert("Debe ingresar el numero de la tarjeta para confirmar..");
			form.confirmarnumTC.focus();
			return;
		}
		if (form.numTC.value != form.confirmarnumTC.value) {
			alert("Debe confirmar el numero de la tarjeta..");
			form.confirmarnumTC.focus();
			return;
		}
		if (form.tarjeta.value == "") {
			alert("Debe seleccionar el tipo de la tarjeta..");
			form.tarjeta.focus();
			return;
		}

		form.submit();
	}
</script>
</head>
<body>
	<form class="form" action="respuestaTaller.jsp" method="post">
		<h1 class="formTitle">Tienda</h1>
		<h2 class="formingre">Ingrese los datos para su compra</h2>

		<table align="center">
			<tr class="formcontenedor">
			<tr class="form_group">
			<tr>
				<td>Articulo:</td>
				<td><select name="articulo">
						<option value="0">:: Seleccione ::</option>
						<option value="Zapatos">Zapatos</option>
						<option value="Camisa">Camisa</option>
						<option value="Reloj">Reloj</option>
						<option value="Libro">Libro</option>
						<option value="Computador">Computador</option>
				</select></td>
			</tr>
			<tr class="form_group">
				<td>Cantidad:</td>
				<td><input class="formInput" type="text" name="cantidad"
					value="" size="20" /></td>
			</tr>
			<tr class="form_group">
				<td>Precio por Unidad:</td>
				<td><input class="formInput" type="text" name="precio" value=""
					size="20" /></td>
			</tr>
			<tr class="form_group">
				<td>Nombres del cliente:</td>
				<td><input class="formInput" type="text" name="nombre" value=""
					size="40" /></td>
			</tr>
			<tr class="form_group">
				<td>Apellidos del cliente:</td>
				<td><input class="formInput" type="text" name="apellido"
					value="" size="40" /></td>
			</tr>
			<tr class="form_group">
				<td>Seleccione la tarjeta de Credito:</td>
				<td><input  type="radio" name="tarjeta"
					value="Visa"> Visa <input type="radio" name="tarjeta"
					value="MasterCard"> MasterCard <input type="radio"
					name="tarjeta" value="AmericanExpress"> AmericanExpress</td>
			</tr>
			<tr class="form_group">
				<td>Numero de la tarjeta:</td>
				<td><input class="formInput" type="text" name="numTC" value=""
					size="40" /></td>
			</tr>
			<tr class="form_group">
				<td>Confirmar Numero de la tarjeta:</td>
				<td><input class="formInput" type="text" name="confirmarnumTC"
					value="" size="40" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="CONFIRMAR COMPRA"
					onClick="valida_envidia(this.form)" /></td>
			</tr>



		</table>
	</form>
</body>
</html>