<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<TITLE>Taller Registro</TITLE>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background-image:
		url("https://png.pngtree.com/thumb_back/fw800/background/20201208/pngtree-black-plaid-simple-background-image_505180.jpg");
}

h2 {
	text-align: center;
	margin-bottom: 20px;
	color: rgba(0, 0, 0, 0.5);
}

h4 {
	text-align: center;
}

input {
	display: block;
	padding: 5px;
	width: 30%;
	margin: 30px 0;
	font-size: 20px;
}

.form-register {
	width: 400px;
	padding: 30px;
	margin: auto;
	margin-top: 10px;
	border-radius: 4px;
	box-shadow: 7px 13px 37px #000;
}
</style>

<script language="JavaScript">
	function validar_envio(form) {
		
		
		if(form.nombre.value==""){
			alert("Debes poner un nombre");
			form.nombre.focus();
			return;
			if(form.apellidos.value==""){
				alert("Debes poner un apellido");
				form.apellidos.focus();
			}
			
			if(form.tarjeta.value==""){
				alert("Digite su numero de tarjeta")
				form.tarjeta.focus();
				return;
			}
			if(form.tarjeta.value <= 999999999999999){
				alert("Digite la cantidad de 16 numeros de su tarjeta para ser efectuada su compra")
				form.tarjeta.focus();
		
		if (form.ntarjeta.value == "" || form.ntarjeta.value != form.tarjeta.value) {
			alert("Por favor digite el número de su tarjeta")
			form.ntarjeta.focus();
			return;
		}
		form.submit();
	}
	function mostrarMonto() {
		var lista = document.getElementById("productos");
		var texto = document.getElementById("cantidad");
		texto.value = lista.value;
	}
</script>
<head>
</head>
<style>
body {
	background-color: black;
	color: orange
}
</style>
</HEAD>
<BODY>

	
	<center>

		<selection class="form-register">
		<h1>Formulario de Compra</h1>
        <br><br>
		<form action="Servlet" method="get">

            <input class="logica" type="text" name="nombre" id="nombre"placeholder="Ponga su nombre" value="" size="40"> 
                <input class="logica" type="text" name="apellidos" id="apellidos" placeholder="Ponga su apellido" value="" size="40">
                
                
			<select onchange="mostrarmonto()" name="procutos" id="procutos"
				class="logica">
    

				<option value="" disabled selected>--------Escoge una
					opcion-----</option>
				<option value="1000000">computadora</option>
				<option value="75000">Reloj</option>
				<option value="10000">Camisa</option>
				<option value="35000">Libro</option>
				<option value="40000">zapatos</option>
			</select>
            <br><br><br><br>
             <select name="Nproductos" id="canti" class="logica">

				<option value="0" disabled selected>Elije la cantidad</option>
				<OPTION value="1">1</OPTION>
				<OPTION value="2">2</OPTION>
				<OPTION value="3">3</OPTION>
				<OPTION value="4">4</OPTION>
				<OPTION value="5">5</OPTION>
				<OPTION value="6">6</OPTION>
				<OPTION value="7">7</OPTION>
				<OPTION value="8">8</OPTION>
				<OPTION value="9">9</OPTION>
				<option value="10">10</OPTION>
			</select> <input class="logica" disabled type="number" name="Nproductos"
				id="Nproductos" placeholder="Valor por unidad" size="20" value="">
			
			
			Tarjeta:<input type="radio" name="tarjeta" value="VISA">Visa
			 <input	type="radio" name="tarjeta" value="MASTER CARD">  Master Card
			<input type="radio" name="tarjeta" value="AMERICAN EXPRESS">  American Express <br> <br>
			
			
			
			
			<input class= "logica" type="number" name="ntarjeta" id="ntarjeta" placeholder="Digite el numero de su tarjeta" size="40" value="">
			<input  class="logica" type="number" name="Confirmartarjeta" id="confirmartarjeta" placeholder="Digite el numero de la tarjeta por seguridad" size="40" value="">
			<input class="botones" type="button" value="Confirmar" onclick="valida_envia(this.form)">
			<INPUT TYPE="Reset">
		
		
		</form>
		


</body>

</html>