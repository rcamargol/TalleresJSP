<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tienda de Articulos</title>
<script type="text/javascript">
	function valida_envia(form) {
		if (form.articulos.value == "0") {
			alert("Debe seleccionar una opcion de articulo.... ");
			form.articulos.focus();
			return;
		}

		if (form.preciou.value == "") {
			alert("Debe agregar el precio del articulo.... ");
			form.precio.focus();
			return;
		}

		if (form.cantidad.value == "") {
			alert("Debe ingresar la cantidad de articulos.... ");
			form.cantidad.focus();
			return;
		}
		if (form.NombreCliente.value == "") {
			alert("Debe ingresar los nombres.... ");
			form.nombresDelCliente.focus();
			return;
		}
		if (form.ApellidoCliente.value == "") {
			alert("Debe ingresar los apellidos.... ");
			form.apellidosDelCliente.focus();
			return;
		}
		
		if (form.tarjeta.value == "") {
			alert("Debe ingresar algun tipo de targeta.... ");
			form.tarjeta.focus();
			return;
		}
		
		if (form.numtarjeta.value == "") {
			alert("Debe ingresar un numero de tarjeta ");
			form.numtarjeta.focus();
			return;
		}

		if (form.cnumtarjeta.value != form.numtarjeta.value) {
			alert("El numero de tarjeta es diferente o Ingrese el numero de la tarjeta ");
			form.cnumtarjeta.focus();
			return;
		}
		
		

		form.submit();
	}
	
	
	
</script>
<style>
body {
	background-color: #f2f2f2;
	font-family: Arial, sans-serif;
	color: #333;
	margin: 0;
	padding: 0;
}

.login-box {
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
	margin: 50px auto;
	max-width: 600px;
	padding: 20px;
}

h1 {
	text-align: center;
	margin: 0;
}

form {
	margin-top: 20px;
}

table {
	margin: 0 auto;
}

td {
	padding: 10px;
	text-align: right;
}

td input[type="text"], td input[type="number"], td select {
	width: 100%;
	padding: 10px;
	border-radius: 5px;
	border: 1px solid #ccc;
}

td input[type="radio"] {
	margin-right: 10px;
}

input[type="button"] {
	background-color: #4CAF50;
	color: #fff;
	border: none;
	padding: 10px 20px;
	border-radius: 5px;
	cursor: pointer;
	margin-top: 20px;
}

input[type="button"]:hover {
	background-color: #3e8e41;
}
</style>
</head>
<body>
	<div class="login-box">
		<h1>TIENDA VIRTUAL</h1>
		<form action="RedirectorServlet" method="post">
			<table>
				<tr>
					<td>ARTICULOS:</td>
					<td><select name="articulos">
							<option value="0">Articulos Disponibles</option>
							<option value="Zapatos">Zapatos</option>
							<option value="Camisas">Camisa</option>
							<option value="Relojes">Reloj</option>
							<option value="Libros">Libro</option>
							<option value="Computadores">Computador</option>
					</select></td>
				</tr>
				<tr>

					<td>Precio por unidad</td>
					<td><input type="number" name="preciou" value="" /></td>
				</tr>
				<tr>
					<td>Cantidad</td>
					<td><input type="number" name="cantidad" min="1" max="10"
						step="1" /></td>
				</tr>
				<tr>
					<td>Nombre del Cliente</td>
					<td><input type="text" name="NombreCliente" value="" /></td>
				</tr>
				<tr>
					<td>Apellido del Cliente</td>
					<td><input type="text" name="ApellidoCliente" value="" /></td>
				</tr>


				<tr>
					<td>Tipo de tarjeta</td>
					<td><label><input type="radio" name="tarjeta"
							value="VISA"> Visa</label> <label><input type="radio"
							name="tarjeta" value="MASTERCARD"> Mastercard</label> <label>
							<input type="radio" name="tarjeta" value="AMERICAN EXPRESS">
							American Express
					</label>
				<tr>

					<td>Numero de Targeta</td>
					<td><input type="text" name="numtarjeta" value="" /></td>
				</tr>

				<tr>

					<td>Confirmar Numero de Targeta</td>
					<td><input type="text" name="cnumtarjeta" value="" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" id="myButton"
						value="CONFIRMAR COMPRA" onClick="valida_envia(this.form)" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>