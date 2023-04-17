<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario de compra</title>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script language="JavaScript">
	/*function valida_envia(form) {
		if (form.usuario.value == "") {
			alert("Debe ingresar el nombre de usuario....");
			form.usuario.focus();
			return;
		}
		if (form.clave.value == "") {
			alert("Debe ingresar la clave....");
			form.clave.focus();
			return;
		}
		if (form.prof.value == "0") {
			alert("Debe seleccionar una opcion....");
			form.prof.focus();
			return;
		}
		form.submit();
	}*/
</script>
</head>
<body>
<form action="Servlet" method="post">

	<div class="container">
		<div class="form Bienvenido">
			<h2>Bienvenido</h2>
			<div class="content-select">
			 <span style="color: gray">Articulo</span>
				<select name="art" id="art">
					<option value="0">:: Seleccione ::</option>
					<option value="1">Zapatos</option>
					<option value="2">Camisa</option>
					<option value="3">Reloj</option>
					<option value="4">Libro</option>
					<option value="5">Computador:</option>
				</select>
			</div>
			<div class="inputBox numberonly">
				<input type="text" name="cant" id="cant" required="required"> 
				<span>Cantidad</span>
			</div>
			<div class="inputBox numberonly">
				<input type="text" name="precio" id="precio" required="required"> 
				<span>Precio por unidad</span>
			</div>
			<div class="inputBox">
				<input type="text" name="nombre" id="nombre" required="required"> 
				<span>Nombre</span>
			</div>
			<div class="inputBox">
				<input type="text" name="apellido" id="apellido" required="required"> 
				<span>Apellido</span>
			</div>
			<div class="radio">
				<span style="color: white">Tarjeta</span><br>
				<input type="radio" name="tarjeta" id="tarjeta" value="Visa" required="required"> 
				<span style="color: gray">Visa</span>
				
				<input type="radio" name="tarjeta" id="tarjeta" value="MasterCard"required="required"> 
				<span style="color: gray">MasterCard</span>
				
				<input type="radio" name="tarjeta" id="tarjeta" value="American Express"required="required"> 
				<span style="color: gray">American Express</span>
			</div>
			<div class="inputBox numberonly">
				<input type="text" name="notarj" id="notarj" maxlength="16" required="required"> 
				<span>Numero de tarjeta</span>
			</div>
			<div class="inputBox numberonly">
				<input type="text" name="conftarj" id="conftarj" maxlength="16" required="required"> 
				<span>Verificar numero de tarjeta</span>
			</div>
			<div class="inputBox">
				<input type="submit" value="Confirmar">
			</div>
		</div>
	</div>
</form>
</body>
<script>
$(document).ready(function () {    
    
    $('.numberonly').keypress(function (e) {    

        var charCode = (e.which) ? e.which : event.keyCode    

        if (String.fromCharCode(charCode).match(/[^0-9]/g))    

            return false;                        

    });    

});
</script>
</html>