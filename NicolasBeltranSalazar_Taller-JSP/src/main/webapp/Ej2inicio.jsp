<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">

		<title>Ejercicio 2</title>

		<script language="JavaScript">

			function validacion(form) {
				
				if (form.numero1.value == "") {
					alert("Debe ingresar el primer número");
					form.cantidad.focus();
					return;
				}
				if (form.numero2.value == "") {
					alert("Debe ingresar el segundo número");
					form.precio.focus();
					return;
				}
				
				form.submit();

			}

		</script>

	</head>

	<body>

		<center>
			<br>
			<h1>Ingrese 2 n&uacute;meros</h1>
		</center>

		<form action="Ej2resultado.jsp" method="post">

			<table align="center">

				<tr>
					<td>Ingrese el n&uacute;mero 1: </td>
					<td><input type="text" name="numero1" value="" size="10" /></td>
				</tr>
				<tr>
					<td>Ingrese el n&uacute;mero 2: </td>
					<td><input type="text" name="numero2" value="" size="10" /></td>
				</tr>
				
				<tr>
					<td><br><input type="button" value="Aceptar" onclick="validacion(this.form)" />
					</td>
				</tr>

			</table>

		</form>

	</body>

	</html>