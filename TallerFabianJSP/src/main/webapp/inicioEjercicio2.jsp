<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">

		<title>Ejercicio 2</title>

		<script language="JavaScript">

			function validacion(form) {
				
				if (form.numero1.value == "") {
					alert("Debe ingresar el primer numero");
					form.cantidad.focus();
					return;
				}
				if (form.numero2.value == "") {
					alert("Debe ingresar el segundo numero");
					form.precio.focus();
					return;
				}
				
				form.submit();

			}

		</script>

	</head>

	<body>

		<center style="color: Black; ">
			<br>
			<h1>NUMEROS ENTRE NUMEROS</h1>
		</center>

		<form action="respuestaEjercicio2.jsp" method="post">

			<table align="center">

				<tr>
					<td style="background-color: White; color: Black">Ingrese el numero 1: </td>
					<td style="background-color: White; "><input type="text" name="numero1" value="" size="10" /></td>
				</tr>
				<tr>
					<td style="background-color: White; color: Black">Ingrese el numero 2: </td>
					<td style="background-color: White; "><input type="text" name="numero2" value="" size="10" /></td>
				</tr>
				
				<tr>
					<td style="background-color: Lime; "><br><input type="button" value="Aceptar" onClick="validacion(this.form)" style="background-color: Green; color: White"/>
					</td>
				</tr>

			</table>

		</form>

	</body>

	</html>