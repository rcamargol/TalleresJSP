<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro de Compras</title>
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
	if(form.nombrec.value==""){
		alert("Se debe ingresar un nombre.");
		form.nombrec.focus();
		return;
	}
	if(form.apellidoc.value==""){
		alert("Se debe ingresar un apellido.");
		form.apellidoc.focus();
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
	<center><h1>Registro de Compras</h1></center>
	<form action = "ServletFuncional" method ="get">
		<table align = "center">
		<tr><td>Articulo:</td><td><select onchange="actualizarPrecio()" name="articulo">
			 <option value="" disabled selected> Seleccione el articulo </option>
			 <option value="75000"> Zapatos</option>
			 <option value="45000"> Camisa</option>
			 <option value="95000"> Reloj</option>
			 <option value="20000"> Libro</option>
			 <option value="3000000"> Computador</option>
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
		</select></td></tr>
		<tr><td>Precio por Unidad:</td><td><input disabled type="number" name="unidad" value="" size="20"/></td></tr>
		<tr><td>Nombres del Cliente:</td><td><input type="text" name="nombrec" value="" size="40"/></td></tr>
		<tr><td>Apellidos del Cliente:</td><td><input type="text" name="apellidoc" value="" size="40"/></td></tr>
		<tr><td><label>
	        <input type="radio" name="marca" value="VISA"> Visa
	    </label>
	    <label>
	        <input type="radio" name="marca" value="MASTER CARD"> Master Card
	    </label>
	    <label>
	        <input type="radio" name="marca" value="AMERICAN EXPRESS"> American Express
	    </label></td></tr>
		<tr><td>Numero de Tarjeta de Credito:</td><td><input type="number" name="tarjeta" value="" size="40"/></td></tr> 
		<tr><td>Confirmar Numero de Tarjeta de Credito:</td><td><input type="number" name="ctarjeta" value="" size="40"/></td></tr> 
		<tr><td colspan="2"><input type="button" value="ACEPTAR" onClick="valida_envia(this.form)"/></td></tr>
		</table>
	</form>
</body>
</html>