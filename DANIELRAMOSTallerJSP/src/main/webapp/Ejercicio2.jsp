<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejercicio 2</title>
<script lenguage="JavaScript">
	function valida_envia(form) {
		if (form.num2.value == "" || form.num1.value == "") {
			alert("Debe ingresar un numero....");
			form.num2.focus();
			return;
		}
		form.submit();
	}
</script>
</head>
<body>

	<center>MUESTRA NUMEROS ESTABLECIDOS ENTRE N1 Y N2</center>
	<center>
		<h1>FORMULARIO PARA ESTABLECER RANGO DE NUMEROS</h1>
	</center>
	<form action="Respuesta2.jsp" method="post">
		<table align="center">
			<tr>
				<td>N&uacute;mero 1:</td>
				<td><input type="number" name="num1" value="" size="20" /></td>
				<br>
				<td>N&uacute;mero 2:</td>
				<td><input type="number" name="num2" value="" size="20" /></td>
			</tr>
			
		</table>
			<br>
			<center>
				<input type="button" value="Mostrar numeros" onclick="valida_envia(this.form)">
			</center>
	</form>

</body>
</html>