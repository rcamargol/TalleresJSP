<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro De Compras</title>
<link href="estilo.css" rel="stylesheet" type="text/css">
	<script type="text/javascript">
	
	function validar_enviar(form){
		
		if(form.arti.value == "0" || form.cantidad.value == "" || form.precioxunidad.value == "" || form.precioxunidad.value == "" 
				|| form.nombrecliente.value == "" || form.apellidocliente.value == "" || form.tipotarjeta.value == "" || form.ntarjeta.value == ""
				|| form.confirmartarjeta.value == "" ){
			alert("Porfavor, rellenar los campos de texto para realizar la compra...");
			form.arti.focus();
			form.cantidad.focus();
			form.precioxunidad.focus();
			form.nombrecliente.focus();
			form.apellidocliente.focus();
			form.tipotarjeta.focus;
			form.ntarjeta.focus();
			form.confirmartarjeta.focus();
			return;
			
		}
		if(form.arti.value == "0") {
			alert("Debe seleccionar un articulo.... ");
			form.arti.focus();
			return;
		}
		if(form.cantidad.value == ""){
			alert("Debe ingresar la cantidad...");
			form.cantidad.focus();
			return;
		}
		if(form.precioxunidad.value == ""){
			alert("Debe ingreasar el precio por unidad...");
			form.precioxunidad.focus();
			return;
		}
		if(form.nombrecliente.value == ""){
			alert("Debe ingresar el nombre del comprador...");
			form.nombrecliente.focus();
			return;
		}
		if(form.apellidocliente.value == ""){
			alert("Debe ingresar el apellido del comprador...");
			form.apellidocliente.focus();
			return;
		}
		if(form.tipotarjeta.value == ""){
			alert("Debe escojer un tipo de tarjeta de creadito para realizar la compra...");
			form.tipotarjeta.focus;
			return;
		}
		if(form.ntarjeta.value == ""){
			alert("Debe ingresar el numero de la tarjeta de credito para realizar la compra...");
			form.ntarjeta.focus();
			return;
		}
		if(form.confirmartarjeta.value == ""){
			alert("Debe ingresar el numero dela tarjeta de credito para confirmar...");
			form.confirmartarjeta.focus();
			return;
		}
		if(form.ntarjeta.value != form.confirmartarjeta.value){
			alert("No se pudo confirmar el numero de tarjeta, ingresar bien en ambos campos para confirmar la compra...");
			form.confirmartarjeta.focus();
			return;
		}
		
	form.submit();	
	}
	</script>
</head>
<body>
	<center>Formulario y validacion</center>
	<center><h1>Registro de compra</h1></center>
	<form action="Redirectorio" method="post">
		<table align="center">
		<tr><td>Art&iacute;culo:</td><td><select name="arti">
	  	  <option value="0">:: Seleccione ::</option> 
	  	  <option value="Zapatos">Zapatos</option> 
	  	  <option value="Camisas">Camisas</option> 
	  	  <option value="Reloj">Reloj</option> 
	  	  <option value="Libro">Libro</option> 
	  	  <option value="Computador">Computador</option> 
	  	  </select></td></tr>
	  	<tr><td>Cantidad:</td><td><input type="text" name="cantidad" value="" size="20"></td></tr>
	  	<tr><td>Precio por unidad:</td><td><input type="text" name="precioxunidad" value="" size="20"></td></tr>
	  	<tr><td>Nombre del cliente:</td><td><input type="text" name="nombrecliente" value="" size="40"></td></tr>
	  	<tr><td>Apellido del cliente:</td><td><input type="text" name="apellidocliente" value="" size="40"></td></tr>
	  	
	  	<tr><td>Tarjeta de credito:</td>
	  	
	  	<td><label><input type="radio" name="tipotarjeta" value="Visa">Visa</label>
	  	<label><input type="radio" name="tipotarjeta" value="MasterCard">MasterCard</label>
	  	<label><input type="radio" name="tipotarjeta" value="AmericanExpress">American Express</label></td></tr> 
	  	<tr><td>N° Tarjeta de credito</td><td><input type="text" name="ntarjeta" value="" size="40"></td></tr>
	  	<tr><td>Confirmar n° Tarjeta de credito</td><td><input type="text" name="confirmartarjeta" value="" size="40"></td></tr>
	  	<tr></tr>
	  	<tr><td colspan="2"><input type="button" value="CONFIRMAR COMPRA" onClick="validar_enviar(this.form)"></td></tr>
	  	<tr></tr>
		</table>
	</form>
</body>
</html>