<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario Numerico</title>
	<script type="text/javascript">
	function ingresa_envia(form) {
		
		if(form.N1.value=="" && form.N2.value=="") {
			alert("Debe ingresar los numeros enteros deseados...");
			form.clave.focus();
			return;
		}
		if(form.N1.value=="" ) {
			alert("Debe ingresar un numero entero en el primer campo... ");
			form.usuario.focus();
			return;
		}
		if(form.N2.value=="" ) {
			alert("Debe ingresar un numero entero en el segundo campo...");
			form.clave.focus();
			return;
		}
		form.submit();
	}
	</script>
</head>
<body>
	<h1>Formulario Numerico</h1>
	<p>A continucacion ingrese algun numero entero en los campos de texto</p>
		<form action="Operaciones.jsp" method="post">
			<table align="left">
			<tr><td>Primer Numero:</td><td><input type="text" name="N1" value="" size="40"></td></tr>
			<tr><td>Segundo Numero:</td><td><input type="text" name="N2" value="" size="40"></td></tr>
		
			<tr><td colspan="2"><input type="button" value="INGRESAR" onClick="ingresa_envia(this.form)"/></td></tr>
		</table>
		</form>
</body>
</html>