<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script language="JavaScript">
	function valida_envia(form) {
	
		
		if (form.valores.value == "0") {
			alert("Debe ingresar algun articulo..");
			form.valores.focus();
			return;
		}
		
		if (form.Cantidad.value == "") {
			alert("Debe ingresar un dato valido entero para cantidad..");
			form.Cantidad.focus();
			return;
		}
		if (form.Unidad.value == "") {
			alert("Debe ingresar un dato valido entero para unidad...");
			form.Unidad.focus();
			return;
		}
		if (form.Nombre.value == "") {
			alert("Debe ingresar el nombre...");
			form.Nombre.focus();
			return;
		}
		if (form.Apellido.value == "") {
			alert("Debe ingresar el apellido...");
			form.Apellido.focus();
			return;
		}
		var s="no";
		for(var i=0;i<document.f1.Tarjeta.length;i++)
			{
			if(document.f1.Tarjeta[i].checked){
				
				s="si"
			}
			}
		if(s=="no"){
			alert("Debe seleccionar una tarjeta");
		}
		
		if (form.Credito.value == "") {
			alert("Debe ingresar el numero de la tarjeta de credito...");
			form.Credito.focus();
			return;
		}
		if (form.ConfirmarCredito.value == "") {
			alert("Debe ingresar la confirmacion del numero de la tarjeta de credito...");
			form.ConfirmarCredito.focus();
			return;
		}
		if(form.Credito.value<1000000000000000){
			alert("Debe ingresar numeros en la tarjeta")
			form.Credito.focus();
			return
		}
		if(form.Credito.value>=10000000000000000){
			alert("Numero mayor al de una cuenta de credito")
			form.Credito.focus();
			return
		}
		if(form.Credito.value != form.ConfirmarCredito.value){
			alert("Los valores de las tarjetas deben coincidir..");
			form.Credito.focus();
			form.ConfirmarCredito.focus();
			return;
		}
		
		form.submit();
	}
</script>
<style>
.rounded {
	border: 1px solid black;
	border-radius: 10px;
}
</style>
<style>
.imagen {
	position: absolute;
	top: 590px;
	left: 30px;
}
</style>
<style>
.imagen2 {
	position: absolute;
	top: 610px;
	left: 1380px;
}
</style>
</head>
<body style="background-color: #5d9b9b;">
	<form name="f1" action="Servlet" method="post">
		<h1 align="center">
			<br> <br> <b>Registro de compras </b>
		</h1>

		<img src="Image/gokupixel1.png" width="140" height="140"
			class="imagen2" /> <img src="Image/gokus1.gif" width="140"
			height="140" class="imagen" /> <br> <br> <br> <br>
		<br> <br>
		<table border="0" align="center" style="background-color: #33475b"
			class="rounded">
			<tr>
				<td style="color: white;">Articulo:</td>
				<td><select name="valores" id="objeto">
						<option value="0">seleccionar</option>
						<option value="Zapatos">Zapatos</option>
						<option value="Camisas">Camisas</option>
						<option value="Reloj">Reloj</option>
						<option value="Libro">Libro</option>
						<option value="Computador">Computador</option>
				</select></td>
			</tr>
			<tr>
				<td style="color: white;">Cantidad:</td>
				<td><input type="number" name="Cantidad" value="" size="20">
				</td>
			</tr>
			<tr>
				<td style="color: white;">Precio por unidad:</td>
				<td><input type="number" name="Unidad" value="" size="20">
				</td>
			</tr>
			<tr>
				<td style="color: white;">Nombres del cliente:</td>
				<td><input type="text" name="Nombre" value="" size="40">
				</td>
			</tr>
			<tr>
				<td style="color: white;">Apellidos del cliente:</td>
				<td><input type="text" name="Apellido" value="" size="40">
				</td>
			</tr>
			<tr>
				<td style="color: white;">Tarjeta de credito:</td>
				<td style="color: white;"><input type="radio" name="Tarjeta"
					value="" size="20"> <label for="visa">Visa</label> <input
					type="radio" name="Tarjeta" value="" size="20"> <label
					for="mastercard">MasterCard</label> <input type="radio"
					name="Tarjeta" value="" size="20"> <label
					for="americaexpress">American Express</label></td>
			</tr>
			<tr>
				<td style="color: white;">Numero de tarjeta de credito:</td>
				<td><input type="number" name="Credito" value="" size="40">
				</td>
			</tr>
			<tr>
				<td style="color: white;">Confirmar numero de tarjeta de
					credito:</td>
				<td><input type="number" name="ConfirmarCredito" value=""
					size="40"></td>
			</tr>
			<tr>
				<td><input type="button" value="ACEPTAR"
					onClick="valida_envia(this.form)" /></td>
			</tr>

		</table>





	</form>
</body>
</html>