<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario de compra</title>
 <link rel="stylesheet" href="style.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

<script type="text/javascript">
function valida_envia(form) {
	if (form.articulos.value == "0") {
		alert("Debe agregar un articulo.... ");
		form.articulos.focus();
		return;
	}
		if(form.nombresDelCliente.value=="" ) {
			alert("Debe ingresar el nombre del cliente.... ");
			form.nombresDelCliente.focus();
			return;
		}
		if (form.apellidosDelCliente.value == "") {
			alert("Debe ingresar los apellidos del cliente.... ");
			form.apellidosDelCliente.focus();
			return;
		}
	if (form.cantidad.value == "") {
		alert("Debe ingresar la cantidad de articulos.... ");
		form.cantidad.focus();
		return;
	}
	if (form.precioPorUnidad.value == "") {
		alert("Debe ingresar el valor por unidad.... ");
		form.precioPorUnidad.focus();
		return;
	}
	if (form.tipoTarjeta.value == "") {
		alert("Debe elegir un tipo de tarjeta.... ");
		form.tipoTarjeta.focus();
		return;
	}
	if (form.numTarjeta.value == "") {
		alert("Debe ingresar el número de tarjeta.... ");
		form.numTarjeta.focus();
		return;
	}
	if (form.numTarjeta.value<=999999999999999) {
		alert("Número de tarjeta no válido.... ");
		form.numTarjeta.focus();
		return;
	}
	if (form.numTarjeta.value>=10000000000000000) {
		alert("Número de tarjeta no válido.... ");
		form.numTarjeta.focus();
		return;
	}
	form.submit();
}
</script>
</head>
<body>
<div class="login-box">
	<center>
		<br><h1 >Formulario de comprass</h1>
	</center>
	<form action="JavaServlet" method="post">
		<table align="center">
			<tr><td>ARTICULOS:</td>
				<td><select name="articulos">
						<option value="0">:: Seleccione el articulo de interes ::</option>
						<option value="1">Zapatos</option>
						<option value="2">Camisas</option>
						<option value="3">Relojes</option>
						<option value="4">Libros</option>
						<option value="5">Computadores</option>
				</select></td></tr>
				<tr><td>Nombres del cliente:</td><td><input type="text" name="nombresDelCliente" value=""size="40" /></td></tr>
			<tr><td>Apellidos del cliente:</td><td><input type="text" name="apellidosDelCliente" value=""size="40" /></td></tr>
			<tr><td>Cantidad:</td><td><input type="text" name="cantidad" value="" size="20" /></td></tr>
			<tr><td>Precio por unidad:</td><td><input type="text" name="precioPorUnidad" value=""size="20" /></td></tr>
			
			<tr><td><center>
			<label><input type="radio" name="tipoTarjeta" value="visa"> visa</label>
			<label><input type="radio" name="tipoTarjeta" value="masterCard"> MasterCard</label>
			<label><input type="radio" name="tipoTarjeta" value="americanExpress"> americanExpress</label></center></td></tr>
			<tr><td>Numero tarjeta:</td><td><input type="text" name="numTarjeta" value=""size="40" /></td></tr><br><br>
			<tr><td><span class="fa fa-shopping-cart"></span></td></tr>
<br><tr><td colspan="2"><input type="button" id="btn" value="CONFIRMAR COMPRA" value="Enviar"onClick="valida_envia(this.form)" /></td></tr>
		
		</table>
	</form>
	</div>
</body>
</html>