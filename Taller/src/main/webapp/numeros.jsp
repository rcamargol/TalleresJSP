<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script language="JavaScript">
	function valida_envia(form) {
		
		if (form.numero_1.value == "") { //valida que prof no vacia 
			alert("Insertar primer numero");
			form.numero_1.focus();
			return ;
		}
		if (form.numero_2.value == "") { //valida que prof no vacia 
			alert("Insertar segundo numero");
			form.numero_2.focus();
			return ;
		}
		if (isNaN(parseInt(form.numero_1.value)) || isNaN(parseInt(form.numero_2.value))) {
		    alert("Por favor, ingrese un número entero");
		    return ;
		}
		form.submit(); //si no hay errores envie

	}
</script>
<meta charset="ISO-8859-1">
<title>Numeros</title>

</head>
<body>
<center><h1>Operaciones con dos números</h1></center>
<form action="Servlet_numeros" method="get">
	<table align="center">
	<tr><td>Digite el primer número:</td><td><input type="text" name="numero_1" value="" size="40"/></td></tr>
	<tr><td>Digite el segundo número:</td><td><input type="text" name="numero_2"" value=""  size="40"/></td></tr>
	<tr><td colspan="2"><input type="button" value="ACEPTAR" onClick="valida_envia(this.form)"/></td></tr>
	</table>
	

</form>
</body>
</html>