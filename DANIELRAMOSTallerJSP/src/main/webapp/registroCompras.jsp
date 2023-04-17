<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REGISTRO DE COMPRAS</title>

<style type="text/css">
	body{
	background: #FFEFBA;  /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #FFFFFF, #FFEFBA);  /* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to right, #FFFFFF, #FFEFBA); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	}
	
	form{
	width: 1000px;
	background-color: rgb(254, 231, 141);
	padding: 30px;
	border-radius: 40px;
	}
	
	.productos{
	border-radius: 10px;
	font-size: 25px;
	font-family: 'Daytona';
	font-weight: bold;
	font-style: italic;
	}
	.subtitulos{
	font-weight: bold;
	font-size: 30px;
	padding: 10px;
	padding-right: 50px;
	}
	.campos{
	width: 70%;
	font-size: 25px;
	border-radius: 10px;
	border: 3px solid black;
	font-size: 20px;
	}
	
	input[type=radio] {
    width: 20px;
    height: 20px;
	}
	.button {
  	display: inline-block;
  	padding: 15px 25px;
  	font-size: 24px;
  	cursor: pointer;
  	text-align: center;
  	text-decoration: none;
  	outline: none;
 	color: black;
  	background-color: #8BC6E1;
 	border: none;
  	border-radius: 15px;
  	box-shadow: 0 9px #999;
	}

	.button:hover {background-color: #B4B4B4}

	.button:active {
  	background-color: #B4B4B4;
  	box-shadow: 0 5px #666;
  	transform: translateY(4px);
	}
</style>

<script lenguage="JavaScript">

function valida_envia(form) {
	
	var numeTar = form.numTarjeta.value;
	
	if (form.products.value == "0") {
		alert("Debe seleccionar un articulo....");
		form.products.focus();
		return;
	}
	if (form.cantidad.value == "") {
		alert("Debe ingresar la cantidad del producto que eligio....");
		form.cantidad.focus();
		return;
	}
	if (form.valor.value == "") {
		alert("Debe ingresar el valor del producto....");
		form.valor.focus();
		return;
	}
	if (form.nombre.value == "") {
		alert("Debe ingresar el nombre de cliente....");
		form.nombre.focus();
		return;
	}
	if (form.apellido.value == "") {
		alert("Debe ingresar el apellido de cliente....");
		form.apellido.focus();
		return;
	}
	if (form.tarjeta.value == "") {
		alert("Debe seleccionar una tarjeta....");
		form.tarjeta.focus();
		return;
	}
	if (form.numTarjeta.value == "") {
		alert("Debe poner el numero de tarjeta....");
		form.numTarjeta.focus();
		return;
	}
	if (form.numTarjeta.value != form.confNumTarjeta.value) {
		alert("El numero de la tarjeta no coincide....");
		form.numTarjeta.focus();
		return;
	}
	
	form.submit();
}


</script>
</head>
<body>

<center>REGISTRO DE COMPRAS</center>
	<center>
		<h1>FORMULARIO DE COMPRA</h1>
	<form id="formulario" action="ComprasServlet" method="post">
		<table align="center">
			<tr>
				<td class="subtitulos">Articulos</td>
				<td><select name="products" class="productos" >
				<option value="0">:: Seleccione ::</option>
				<option value="Zapatos">Zapatos</option>
				<option value="Camisa">Camisa</option>
				<option value="Reloj">Reloj</option>
				<option value="Libro">Libro</option>
				<option value="Computador">Computador</option>
				</select></td>
			</tr>
			<tr>
				<td class="subtitulos">Cantidad:</td>
				<td><input type="text" name="cantidad" value="" size="20" class="campos"/></td>
			</tr>
			<tr>
				<td class="subtitulos">Valor Unidad:</td>
				<td><input type="text" name="valor" value="" size="20" class="campos"/></td>
			</tr>
			<tr>
				<td class="subtitulos">Nombre:</td>
				<td><input type="text" name="nombre" value="" size="40" class="campos"/></td>
			</tr>
			<tr>
				<td class="subtitulos">Apellido:</td>
				<td><input type="text" name="apellido" value="" size="40" class="campos"/></td>
			</tr>
			<tr>
				<td class="subtitulos">Tarjetas de credito</td>
				<td><input type="radio" name="tarjeta" value="VISA" size="" class="nomTar"/>VISA
					<input type="radio" name="tarjeta" value="MasterCard" size="" class="nomTar"/>MASTERCARD
					<input type="radio" name="tarjeta" value="American Express" size="" class="nomTar"/>AMERICAN EXPRESS</td>
			</tr>
			<tr>
				<td class="subtitulos">Numero de tarjeta:</td>
				<td><input type="text" name="numTarjeta" required minlength="16" maxlength="16" value="" size="40" class="campos" /></td>
			</tr>
			<tr>
				<td class="subtitulos">Confirmar numero de tarjeta:</td>
				<td><input type="text" name="confNumTarjeta" required minlength="16" maxlength="16" value="" size="40"class="campos"/></td>
			</tr>
		</table>
			<br>
			
				<input type="button" value="CONFIRMAR COMPRA" class="button"onclick="valida_envia(this.form)">
			</center>
	</form>
</body>
</html>