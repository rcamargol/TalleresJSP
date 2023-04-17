<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Page</title>
<script>
	function valida_envia(form) {
		if (form.cantidad.value == "") {
			alert("Debe ingresar la cantidad de articulos....");
			form.cantidad.focus();
			return;
		} 
		if (form.preciouni.value == "") {
			alert("Debe ingresar el valor por unidad del articulo....");
			form.preciouni.focus();
			return;
		}
		if (form.nombres.value == "") {
			alert("Debe ingresar los nombres del cliente....");
			form.nombres.focus();
			return;
		}
		if (form.apellidos.value == "") {
			alert("Debe ingresar los apellidos del cliente....");
			form.apellidos.focus();
			return;
		}
		if (form.numerotarjeta.value == "") {
			alert("Debe ingresar el numero de la tarjeta de credito....");
			form.numerotarjeta.focus();
			return;
		}
		if (form.numerotarjeta.value.length < 16 || form.numerotarjeta.value.length > 16) {
			alert("Numero de tarjeta invalido (Digitela sin espacios)....");
			form.numerotarjeta.focus();
			return;
		}
		if (form.numerotarjetaconfir.value == "") {
			alert("Debe confirmar el numero de la tarjeta de credito....");
			form.numerotarjetaconfir.focus();
			return;
		}
		if (form.numerotarjeta.value != form.numerotarjetaconfir.value) {
			alert("El numero de la tarjeta no coincide....");
			form.numerotarjetaconfir.focus();
			return;
		}
		if (document.getElementById('visa').checked || document.getElementById('master').checked || document.getElementById('american').checked) {
			form.submit();
		} else {
			alert("Debe escoger una opcion de tarjeta....");
			return;
		}
	}
	function limpiar() {
		for (var i = 0; i < 6; i++) {			
			document.getElementsByClassName("inputs_text")[i].value = " ";
		}
	}
</script>
<style type="text/css">
* {
	margin: 0;
	box-sizing: border-box;
}

html {
     min-height: 100vh;
}

body {
	font-family: "Poppins", sans-serif;
	color: white;
	margin: 0;
	background: linear-gradient(#8b80f9, #212123) ;
	background-size: 100%;
    background-attachment: fixed;
    min-height: 100vh;
    min-width: 100vw;
}

h1 {
  margin: 0 0 20px;
  text-decoration: underline;  
  padding: 0;
  color: #fff;
  text-align: center;
}

.container {
	display: flex;
	aling-items: center;
    justify-content: center;
    height: 100vh;
    width: 100vw;
    background-color: trasparent;
}

#form {
	padding: 40px 0;
	display: flex;
	aling-items: center;
    justify-content: center;
    border-radius: 30px;
	height: 70%;
    width: 40%;
    margin: auto;
	background: rgba(0, 0, 0, 0.5);
	box-shadow: 0 15px 25px rgba(139, 128, 249, 0.6);
}

select {
	width: 100%;
  	font-size: 16px;
  	color: #fff;
  	outline: none;
  	background: rgba(0, 0, 0, 0.5);
}

.inputs_text {
  	width: 100%;
  	color: #fff;
  	outline: none;
  	background: transparent;
}

.container_buttons {
	margin-top: 25px;
	display: flex;
	aling-items: center;
	justify-content: center;
}

td {
	padding: 8px;
}

.radio_butt {
	width: 20px;
	height: 20px;
	margin: 0 10px;
	position: relative;
	top: 4px;
	cursor: pointer;
}

.button {
	background-color: black;
	margin: 0 20px;
	width: 200px;
	height: 30px;
  	padding: 0;
  	color: #fff;
  	text-align: center;
}

</style>
</head>
<body>
	<div class = "container">
		<section id = "form">
			<form action="ResponseServlet" action="post">
				<h1>REGISTRO DE COMPRAS</h1>
				<table>
					<tr>
						<td><p>Art&iacute;culo:</p></td>
						<td><select name="articulos" SIZE="1">
								<option value="Zapatos">Zapatos</option>
								<option value="Camisa">Camisa</option>
								<option value="Reloj">Reloj</option>
								<option value="Libro">Libro</option>
								<option value="Computador">Computador</option>
						</select></td>
					</tr>
					<tr>
						<td><p>Cantidad:</p></td>
						<td><input class = "inputs_text" type="number" name="cantidad"></td>
					</tr>
					<tr>
						<td><p>Precio por unidad:</p></td>
						<td><input class = "inputs_text" type="number" name="preciouni"></td>
					</tr>
					<tr>
						<td><p>Nombres del Cliente:</p></td>
						<td><input class = "inputs_text" type="text" name="nombres" id="nombres"></td>
					</tr>
					<tr>
						<td><p>Apellidos del Cliente:</p></td>
						<td><input class = "inputs_text" type="text" name="apellidos"></td>
					</tr>
					<tr>
						<td><p>Tarjeta de credito:</p></td>
						<td>
							<p>
								Visa:<input type="radio" class="radio_butt" id="visa" name="tarjeta" value="Visa">
							</p>
							<p>
								MasterCard:<input type="radio" class="radio_butt" id="master" name="tarjeta" value="MasterCard">
							</p>
							<p>
								American Express:<input type="radio" class="radio_butt" id="american" name="tarjeta" value="American Express">
							</p>
						</td>
					</tr>
					<tr>
						<td><p>N&uacute;mero de tarjeta de cr&eacute;dito:</p></td>
						<td><input class = "inputs_text" type="text" name="numerotarjeta"></td>
					</tr>
					<tr>
						<td><p>Confirmar n&uacute;mero de tarjeta de
								cr&eacute;dito:</p></td>
						<td><input class = "inputs_text" type="text" name="numerotarjetaconfir"></td>
					</tr>
				</table>
				<div class = "container_buttons">
					<input type="button" class = "button" value="CONFIRMAR COMPRA" onClick="valida_envia(this.form)">
					<input type="button" class = "button" value="LIMPIAR" onClick="limpiar()">
				</div>
			</form>
		</section>
	</div>
</body>
</html>