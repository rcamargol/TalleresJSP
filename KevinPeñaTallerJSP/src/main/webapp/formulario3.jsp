<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>COMPRAS</title>
<script language="JavaScript">

	function validar(form){
		if(form.articulo.value == "0"){
			alert("Debe seleccionar un articulo...");
			form.articulo.focus();
			return;
		}
		if(form.cantidad.value == ""){
			alert("Debe ingresar la cantidad...");
			form.usuario.focus();
			return;
		}
		if(form.precioUnidad.value == ""){
			alert("Debe ingresar el precio por unidad...");
			form.precioUnidad.focus();
			return;
		}
		if(form.nombres.value == ""){
			alert("Debe ingresar los nombres...");
			form.nombres.focus();
			return;
		}
		if(form.apellidos.value == ""){
			alert("Debe ingresar los apellidos...");
			form.apellidos.focus();
			return;
		}
		
		if(form.tarjeta.value == ""){
			alert("Debe seleccionar una tarjeta...");
			form.tarjeta.focus();
			return;
		}
		if(form.tarjeta.value == ""){
			alert("Debe seleccionar una tarjeta...");
			form.tarjeta.focus();
			return;
		}
		
		if(form.nTarjeta.value == ""){
			alert("Debe ingresar un numero tarjeta...");
			form.nTarjeta.focus();
			return;
		}
		if(form.confirmarNTarjeta.value == ""){
			alert("Debe ingresar la confirmacion del numero de tarjeta...");
			form.confirmarNTarjeta.focus();
			return;
		}
		if(form.confirmarNTarjeta.value < 1000000000000000){
			alert("El numero de la tarjeta debe tener 16 digitos");
			form.confirmarNTarjeta.focus();
			return;
		}
		if(form.confirmarNTarjeta.value >= 10000000000000000){
			alert("El numero de la tarjeta debe tener 16 digitos...");
			form.confirmarNTarjeta.focus();
			return;
		}
		if(form.nTarjeta.value != form.confirmarNTarjeta.value){
			alert("El numero de la tarjeta es diferente a la confirmacion del numero de tarjeta...");
			form.confirmarNTarjeta.focus();
			return;
		}
		
		
	form.submit();
	}

</script>
</head>
<body background="https://i.pinimg.com/originals/8c/30/13/8c3013b5f4339339407de4165941d1c8.jpg">

<form action="Receptor3" method="post">
<br><br><br><br><br><br><br><br>
	<h1 style="ECF0F1" align="center" >REGISTRO DE COMPRAS</h1>

		<table align="center" bgcolor="FBEEE6 ">
		
		<tr>
			<td align="left"> Art&iacute;culo: </td>
				<td><select name="articulo">
						<option value="0">: : Seleccione : :</option>
						<option value="Zapatos">Zapatos</option>
						<option value="Camisa">Camisa</option>
						<option value="Reloj">Reloj</option>
						<option value="Libro">Libro</option>
						<option value="Computador">Computador</option>
				</select></td>

		</tr>
		
		<tr> 
		
			<td>Cantidad:</td>
			<td><input type="text" name="cantidad" value="" size="20"/> </td>
		
		</tr>
		
		<tr> 
		
			<td>Precio por unidad:</td>
			<td><input type="text" name="precioUnidad" value="" size="20"/> </td>
		
		</tr>
		
		<tr> 
		
			<td>Nombres del cliente:</td>
			<td><input type="text" name="nombres" value="" size="40"/> </td>
		
		</tr>
		
		<tr> 
		
			<td>Apellidos del cliente:</td>
			<td><input type="text" name="apellidos" value="" size="40"/> </td>
		
		</tr>
		
		<tr>

				<td>Tarjetas de cr&eacute;dito:</td>
				<td><input type="radio" name="tarjeta" value="visa"> Visa
					<input type="radio" name="tarjeta" value="masterCard">MasterCard
					<input type="radio" name="tarjeta" value="americanEx">American Express
				</td>

		</tr>
		
		<tr> 
		
			<td>N&uacute;mero de tarjeta de cr&eacute;dito:</td>
			<td><input type="text" name="nTarjeta" value="" size="40"/> </td>
		
		</tr>
		
		<tr> 
		
			<td>Confirmar n&uacute;mero de tarjeta de cr&eacute;dito:</td>
			<td><input type="text" name="confirmarNTarjeta" value="" size="40"/> </td>
		
		</tr>

		</table>
		
		
		<center><h3><input type="button" value="CONFIRMAR COMPRA" onClick="validar(this.form)"/></h3></center>
		
</form>


</body>
</html>