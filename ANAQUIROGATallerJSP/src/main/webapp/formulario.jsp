<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page session="true"%>
<html>
<head>
<meta charset="UTF-8">
<title>Taller</title>

<script language="JavaScript">
function valida_envia(form){
	if(form.articulo.value=="0" ){
		alert("Debe seleccionar una opcion....");
		form.articulo.focus();
		return;
	}
	if(form.cantidad.value=="" ){
		alert("Debe ingresar la cantidad de articulos....");
		form.cantidad.focus();
		return;
	}
	if(form.cantidad.value<=0 ){
		alert("Por favor ingrese una cantidad positiva....");
		form.cantidad.focus();
		return;
	}
	if(form.precioArt.value=="" ){
		alert("Debe ingresar el precio por unidad....");
		form.precioArt.focus();
		return;
	}
	if(form.precioArt.value<=0 ){
		alert("Por favor introduzca un valor positivo....");
		form.precioArt.focus();
		return;
	}
	if(form.clienteNombre.value=="" ){
		alert("Debe ingresar el nombre del cliente....");
		form.clienteNombre.focus();
		return;
	}
	if(form.clienteApellido.value=="" ){
		alert("Debe ingresar el apellido del cliente....");
		form.clienteApellido.focus();
		return;
	}
	if(form.tarjetaNumero.value=="" ){
		alert("Debe ingresar el numero de la tarjeta de credito....");
		form.tarjetaNumero.focus();
		return;
	}
	
	if(form.confirmarTarjetaNumero.value=="" ){
		alert("Debe ingresar la confirmacion del numero de la tarjeta de credito....");
		form.confirmarTarjetaNumero.focus();
		return;
	}
	if(form.tarjetaNumero.value!=form.confirmarTarjetaNumero.value ){
		alert("El numero de la tarjeta de credito no coincide, por favor vuelva a digitar....");
		form.tarjetaNumero.focus();
		form.confirmarTarjetaNumero.focus();
		return;
	}
	if(Number(form.tarjetaNumero.value<1000000000000000)){
		alert("Faltan numeros en la tarjeta de credito....");
		form.tarjetaNumero.focus();
		return;
	}
	
	if(Number(form.tarjetaNumero.value>=10000000000000000)){
		alert("Sobran numeros en la tarjeta de credito....");
		form.tarjetaNumero.focus();
		return;
	}
	
	form.submit();
}
</script>
</head>
<body  background="https://w0.peakpx.com/wallpaper/127/547/HD-wallpaper-red-floral-pattern-floral-greek-ornaments-background-with-floral-ornaments-floral-textures-floral-patterns-red-floral-background-greek-ornaments.jpg">
<br>
<center><h1 style="color:white"><strong><em>Formulario de Compras</em></strong></h1></center>
<center><h3 style="color:white"><u>Por favor llene los espacios</u></h3></center>
<form action="Servlet1" method="post">
	<table align="center" bgcolor="007773" border="0">
	<tr><td><h3 style="color:white"><b>   Art&iacute;culo:</b></h3></td><td><select name="articulo">
	<option value="0">::Seleccione ::</option>
	<option value="pares de zapatos">Zapatos</option> 
	<option value="camisas">Camisa</option> 
	<option value="relojes">Reloj</option> 
	<option value="libros">Libro</option> 
	<option value="computadores">Computador</option> 
										</select></td></tr>
	<tr><td><h3 style="color:white"><b>   Cantidad:</b></h3></td><td><input type="number" name="cantidad" value="" size="20"/></td></tr>
	<tr><td><h3 style="color:white"><b>   Precio por unidad:</b></h3></td><td><input type="number" name="precioArt" value="" size="20"/></td></tr>
	<tr><td><h3 style="color:white"><b>   Nombre cliente:</b></h3></td><td><input type="text" name="clienteNombre" value="" size="40"/></td></tr>
	<tr><td><h3 style="color:white"><b>   Apellido cliente:</b></h3></td><td><input type="text" name="clienteApellido" value="" size="40"/></td></tr>
	<tr><td><h3 style="color:white"><b>   Tarjeta de credito:</b> </h3></td>
	
	
	<td><h5 style="color:white"><input type="radio" id="visa" name="tarjetacredito" value="visa" checked>Visa
	<input type="radio" id="masterCard" name="tarjetacredito" value="masterCard">MasterCard
	<input type="radio" id="american" name="tarjetacredito" value="american">American Express</h5><br></td></tr>
	
	
	<tr><td><h3 style="color:white"><b>   Num. de la tarjeta de credito:</b></h3></td><td><input type="number" name="tarjetaNumero" value="" size="40"/></td></tr>
	<tr><td><h3 style="color:white"><b>   Confirmar num. de tarjeta de credito:</b></h3></td><td><input type="number" name="confirmarTarjetaNumero" value="" size="40"/></td></tr>
	<br>
	</table>
	<br>
	<center><td colspan="2"><input type="button" value="CONFIRMAR COMPRA" onClick="valida_envia(this.form)"/></td></center>
	
</form>

</body>
</html>