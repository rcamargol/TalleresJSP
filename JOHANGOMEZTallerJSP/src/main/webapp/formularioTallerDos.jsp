<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Taller 2</title>
<script language="JavaScript">
	function valida_envia(form) {
		if (form.numero1.value == "") {
			alert("Debe ingresar un numero")
			form.numero1.focus();
			return;
		}
		if (form.numero2.value == "") {
			alert("Debe ingresar un numero")
			form.numero2.focus();
			return;
		}
		form.submit();
	}
</script>
</head>
<body>
	<center>Taller 2</center>
	<center>
		<h1>Entrada de datos</h1>
	</center>
	<form action="respuestaTallerDos.jsp" method="post">
		<table align="center">
			<tr>
				<td>limite superior:</td>
				<td><input type="text" name="numero1" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Limite inferior:</td>
				<td><input type="text" name="numero2" value="" size="40" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="ACEPTAR"
					onClick="valida_envia(this.form)" /></td>
			</tr>

		</table>
	</form>

</body>
</html>