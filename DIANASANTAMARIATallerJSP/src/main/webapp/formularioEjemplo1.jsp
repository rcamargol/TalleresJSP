<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ejemplo 1</title>
<script language="JavaScript">
	function valida_envia(form) {
		if (form.numero1.value == "" || form.numero2.value == "") {
			alert("Debe llenar los campos");
			form.numero1.focus();
			form.numero2.focus();
			return;
		}
		if (form.numero2.value == 0) {
			alert("No se puede dividir entre 0")
		}
		form.submit();
	}
</script>
</head>
<body>
	<center>
		Operaciones de numeros <br> A continuacion, ingrese dos numeros
		enteros
	</center>
	<form action="respuestaEjemplo1.jsp" method="post">
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