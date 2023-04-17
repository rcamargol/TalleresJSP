<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Actividad 1</title>
<script type="text/javascript">
	function valida_envidia(form) {
		if (form.n1.value == "") {
			alert("Debe ingresar el primer numero...");
			form.usuario.focus();
			return;
		}
		if(isNaN(form.n1.value)){
			alert("Debe ingresar un numero...");
			form.n1.focus();
			return;
		}
		if(parseInt(form.n2.value)==0){
			alert("El segundo numero no puede ser 0...");
			form.n2.focus();
			return;
		}
		if (form.n2.value == "") {
			alert("Debe ingresar el segundo numero..");
			form.clave.focus();
			return;
		}
		if(isNaN(form.n2.value)){
			alert("Debe ingresar un numero...");
			form.n2.focus();
			return;
		}

		form.submit();
	}
</script>
</head>
<body>
	<h1>Formularios</h1>
	<h2>Formulario</h2>
	<form action="respuestaActividad1.jsp" method="post">
		<table align="center">
			<tr>
				<td>Numero 1:</td>
				<td><input type="text" name="n1" value="" size="40" /></td>
			</tr>
			<tr>
				<td>Numero 2:</td>
				<td><input type="text" name="n2" value="" size="40" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="ACEPTAR"
					onClick="valida_envidia(this.form)" /></td>
			</tr>
		</table>
	</form>
</body>
</html>