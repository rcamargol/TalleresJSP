<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejemplo #2</title>
<script language="JavaScript">
	function valida(form) {
		if (form.n1.value == "") {
			alert("Debe ingresar un numero")
			form.n1.focus();
			return;

		}
		if (form.n2.value == "") {
			alert("Debe ingresar un numero")
			form.n2.focus();
			return;
		}
		form.submit();
	}
</script>

</head>
<body>
	<center>
		<h1>Valores entre dos n&uacute;meros</h1>
	</center>
	<form action="respuesta2.jsp" method="post">
		<table align="center">
			<tr>
				<td>N&uacute;mero 1:</td>
				<td><input type="text" name="n1" value="" size="20" /></td>
			</tr>
			<tr>
				<td>N&uacute;mero2:</td>
				<td><input type="text" name="n2" value="" size="20" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="ACEPTAR"
					onClick="valida(this.form)" /></td>
			</tr>

		</table>
	</form>

</body>
</html>