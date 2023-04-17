<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ejemplo 2</title>
<script language="JavaScript">
	function valida_envia(form) {
		if (form.numero1.value == "" || form.numero2.value == "") {
			alert("Debe llenar los campos");
			form.numero1.focus();
			form.numero2.focus();
			return;
		}
		if (form.numero2.value < form.numero1.value) {
			alert("El limite inferior debe ser menor que el limite superior");
			form.numero1.focus();
			form.numero2.focus();
			return;
		}
		form.submit();
	}
</script>
</head>
<body>
	<center>
		Intervalos <br> A continuacion, ingrese dos numeros enteros, el
		primero sera el limite inferior y el segundo dera el limite superior
	</center>
	<form action="respuestaEjemplo2.jsp" method="post">
		<table align="center">
			<tr>
				<td><input type="text" name="numero1" value="" size="40" /></td>
			</tr>
			<tr>
				<td><input type="text" name="numero2" value="" size="40" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="Aceptar"
					onClick="valida_envia(this.form)" /></td>
			</tr>
		</table>
	</form>

</body>
</html>