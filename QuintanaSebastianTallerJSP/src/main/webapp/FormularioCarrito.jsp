<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Carrito de Compras</title>
<script language = "JavaScript">

function actualizarPrecio() {
	var lista = document.getElementById("articulo");
	var texto = document.getElementById("unidad");
	texto.value = lista.value;
}

function valida_envia(form){
	if(form.articulo.value==""){
		alert("Se debe seleccionar un articulo.");
		form.articulo.focus();
		return;
	}
	if(form.cantidad.value=="0"){
		alert("Se debe seleccionar la cantidad de articulos.");
		form.cantidad.focus();
		return;
	}
	if(form.nombreu.value==""){
		alert("Se debe ingresar un nombre.");
		form.nombreu.focus();
		return;
	}
	if(form.apellidou.value==""){
		alert("Se debe ingresar un apellido.");
		form.apellidou.focus();
		return;
	}
	if(form.marca.value==""){
		alert("Se debe seleccionar la franquicia.");
		form.marca.focus();
		return;
	}
	if(form.tarjeta.value==""){
		alert("Se debe ingresar el numero de tarjeta.");
		form.tarjeta.focus();
		return;
	}
	if(form.ctarjeta.value==""){
		alert("Se debe confirmar el numero de tarjeta.");
		form.ctarjeta.focus();
		return;
	}
	if(form.tarjeta.value<=999999999999999){
		alert("El numero de tarjeta de credito debe tener 16 digitos.");
		form.tarjeta.focus();
		return;
	}
	if(form.tarjeta.value>=10000000000000000){
		alert("El numero de tarjeta de credito debe tener 16 digitos.");
		form.tarjeta.focus();
		return;
	}
	if(form.ctarjeta.value!=form.tarjeta.value){
		alert("Los numeros de tarjeta no son iguales.");
		form.ctarjeta.focus();
		return;
	}
	form.submit();
	}
	</script>
</head>
<body>
	<center><h1>Carrito de Compras</h1></center>
	<style> body{
 background-color: #487346;
background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='163' height='163' viewBox='0 0 200 200'%3E%3Cg %3E%3Cpolygon fill='%234c8e43' points='100 57.1 64 93.1 71.5 100.6 100 72.1'/%3E%3Cpolygon fill='%236aac5f' points='100 57.1 100 72.1 128.6 100.6 136.1 93.1'/%3E%3Cpolygon fill='%234c8e43' points='100 163.2 100 178.2 170.7 107.5 170.8 92.4'/%3E%3Cpolygon fill='%236aac5f' points='100 163.2 29.2 92.5 29.2 107.5 100 178.2'/%3E%3Cpath fill='%2389CC7C' d='M100 21.8L29.2 92.5l70.7 70.7l70.7-70.7L100 21.8z M100 127.9L64.6 92.5L100 57.1l35.4 35.4L100 127.9z'/%3E%3Cpolygon fill='%23768c3a' points='0 157.1 0 172.1 28.6 200.6 36.1 193.1'/%3E%3Cpolygon fill='%2396ac58' points='70.7 200 70.8 192.4 63.2 200'/%3E%3Cpolygon fill='%23B6CC76' points='27.8 200 63.2 200 70.7 192.5 0 121.8 0 157.2 35.3 192.5'/%3E%3Cpolygon fill='%2396ac58' points='200 157.1 164 193.1 171.5 200.6 200 172.1'/%3E%3Cpolygon fill='%23768c3a' points='136.7 200 129.2 192.5 129.2 200'/%3E%3Cpolygon fill='%23B6CC76' points='172.1 200 164.6 192.5 200 157.1 200 157.2 200 121.8 200 121.8 129.2 192.5 136.7 200'/%3E%3Cpolygon fill='%23768c3a' points='129.2 0 129.2 7.5 200 78.2 200 63.2 136.7 0'/%3E%3Cpolygon fill='%23B6CC76' points='200 27.8 200 27.9 172.1 0 136.7 0 200 63.2 200 63.2'/%3E%3Cpolygon fill='%2396ac58' points='63.2 0 0 63.2 0 78.2 70.7 7.5 70.7 0'/%3E%3Cpolygon fill='%23B6CC76' points='0 63.2 63.2 0 27.8 0 0 27.8'/%3E%3C/g%3E%3C/svg%3E");}
</style>
	<form action = "Servlet1" method ="get">
		<table align = "center">
		<tr><td>Articulo:</td><td><select onchange="actualizarPrecio()" name="articulo">
			 <option value="" disabled selected> Seleccione el articulo </option>
			 <option value="129900"> Zapatos</option>
			 <option value="59900"> Camisa</option>
			 <option value="129900"> Reloj</option>
			 <option value="39900"> Libro</option>
			 <option value="4699900"> Computador</option>
		</select></td></tr>
		<tr><td>Cantidad:</td><td><select name="cantidad">
			 <option value="0" disabled selected>Seleccione la cantidad</option>
			 <option value="1"> 1</option>
			 <option value="2"> 2</option>
			 <option value="3"> 3</option>
			 <option value="4"> 4</option>
			 <option value="5"> 5</option>
			 <option value="6"> 6</option>
			 <option value="7"> 7</option>
			 <option value="8"> 8</option>
			 <option value="9"> 9</option>
			 <option value="10"> 10</option>
			 <option value="11"> 11</option>
			 <option value="12"> 12</option>
			 <option value="13"> 13</option>
			 <option value="14"> 14</option>
			 <option value="15"> 15</option>
		</select></td></tr>
		<tr><td>Precio por Unidad:</td><td><input disabled type="number" name="unidad" value="" size="20"/></td></tr>
		<tr><td>Nombres del Cliente:</td><td><input type="text" name="nombreu" value="" size="40"/></td></tr>
		<tr><td>Apellidos del Cliente:</td><td><input type="text" name="apellidou" value="" size="40"/></td></tr>
		<tr><td><label>
	        <input type="radio" name="marca" value="VISA"> Visa
	    </label>
	    <label>
	        <input type="radio" name="marca" value="MASTER CARD"> Master Card
	    </label>
	    <label>
	        <input type="radio" name="marca" value="AMERICAN EXPRESS"> American Express
	    </label></td></tr>
		<tr><td>Numero de Tarjeta :</td><td><input type="number" name="tarjeta" value="" size="40"/></td></tr> 
		<tr><td>Confirmar Numero de Tarjeta :</td><td><input type="number" name="ctarjeta" value="" size="40"/></td></tr> 
		<tr><td colspan="2"><input type="button" value="ACEPTAR" onClick="valida_envia(this.form)"/></td></tr>
		</table>
	</form>
</body>
</html>