<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html style="background-color: Black; ">

	<head>
		<meta charset="UTF-8">

		<title>Ejercicio 1</title>

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

		<center style="color: Red; ">
			<br>
			<h1>Calculadora</h1>
		</center>

		<form action="respuestaEjercicio1.jsp" method="post">

			<table align="center">

				<tr>
					<td style="background-color: Red; ">Ingrese el numero 1: </td>
					<td style="background-color: Red; "><input type="text" name="numero1" value="" size="10" /></td>
				</tr>
				<tr>
					<td style="background-color: Red; ">Ingrese el numero 2: </td>
					<td style="background-color: Red; "><input type="text" name="numero2" value="" size="10" /></td>
				</tr>
				
				<tr>
					<td style="background-color: Green; "><br><input type="button" value="Aceptar" onClick="validacion(this.form)" style="background-color: Lime; "/>
					</td>
				</tr>

			</table>

		</form>

	</body>

	</html>