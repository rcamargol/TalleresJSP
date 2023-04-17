<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulario Practica 1</title>

<script language="JavaScript">
	function valida_envia(form) {
		if (form.num1.value == "") {
			alert("Debe ingresar un Numero");
			form.num1.focus();
			return;
		}
		if (form.num2.value == "") {
			alert("Debe ingresar un Numero");
			form.num2.focus();
			return;
		}
		form.submit();
	}
</script>

</head>
<body align="center">

	<center style="height: 114px;">
		<h1>Ingrese los Numeros</h1>
	</center>

	<form action="respuestaactividad1.jsp" method="post">

		<td>Ingrese el primer numero:</td>
		<td><input type="number" name="num1" value="" size="20" /></td><br> <br>

		<td>Ingrese el segundo numero:</td>
		<td><input type="number" name="num2" value="" size="20" /></td><br> <br>


		<td colspan="2"><input type="button" value="Confirmar"
			onClick="valida_envia(this.form)" style="width: 215px;" /></td>

	</form>
</body>
</html>