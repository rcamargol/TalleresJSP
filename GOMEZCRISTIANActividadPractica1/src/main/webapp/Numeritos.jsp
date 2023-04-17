<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario</title>
<link rel="stylesheet" href="styleNumeritos.css">

<script type="text/javascript">
	function coso_js(form) {
		if (form.num1.value == "") {
			alert("Ingrese el primer numero");
			form.num1.focus();
			return;
		}
		if (form.num2.value == "") {
			alert("Ingrese el segundo numero");
			form.num2.focus();
			return;
		}

		form.submit();

	}
</script>
</head>
<body>

	<h1>Formulario para operar</h1>
	<div>
		<fieldset>
			<form action="ServletTruco" method="post">
				<table>

					<!-- Cantidad -->

					<tr>
						<td>Numero 1:</td>
						<td><input type="number" name="num1" value="" size="20" /></td>
					</tr>

					<!-- Precio Unitario -->

					<tr>
						<td>Numero 2:</td>
						<td><input type="number" name="num2" value="" size="20" /></td>
					</tr>

					<!-- El poderoso submit -->

					<tr>
						<td colspan="2"><input type="button" value="CONFIRMAR"
							onClick="coso_js(this.form)" /></td>
					</tr>



				</table>
			</form>
		</fieldset>
	</div>

</body>
</html>