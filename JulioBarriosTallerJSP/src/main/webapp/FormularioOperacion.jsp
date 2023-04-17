<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script language="JavaScript">

function valida_envia(form) {
	
	if (form.Numero1.value == "") {
		alert("Debe ingresar un entero en la casilla 1 ..");
		form.Numero1.focus();
		return;
	}
	if (form.Numero2.value == "") {
		alert("Debe ingresar un entero en la casilla 2...");
		form.Numero2.focus();
		return;
	}
	form.submit();
	
}
	</script>

	
	
<title>Formulario de operaciones</title>
</head>
<body>
	<h1>Bienvenido a Operaciones Basicas</h1>
	<form action="ServletOperacion" method="post">
	<table border="0" >

		<tr>
			<td><p>Digita a continuacion un numero entero</p></td>
			<td><input type="number" name="Numero1" value="" size="10"></td>
		</tr>
		<tr>
			<td><p>Digita a continuacion un numero entero</p></td>
			<td><input type="number" name="Numero2" value="" size="10"></td>

		</tr>
		<tr>
				<td><input type="button" value="ACEPTAR"
					onClick="valida_envia(this.form)" /></td>
			</tr>

	</table>
	</form>

</body>
</html>