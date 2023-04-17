<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Operaciones entre dos números</title>
<link rel="stylesheet" href="StyleTaller1.css">
<script type="text/javascript">
	function valida_envia(form) {
		if(form.usuario.value=="" ) {
			alert("Debe ingresar el nombre de cliente.... ");
			form.usuario.focus();
			return;
		}
		if(form.num1.value=="" ) {
			alert("Debe ingresar el primer digito.... ");
			form.num1.focus();
			return;
		}
		if(form.num2.value=="" ) {
			alert("Debe ingresar el segundo digito.... ");
			form.num2.focus();
			return;
		}
		form.submit();
	}
	</script>
</head>	
<body>
		<center><h1>Operacion entre dos números</h1></center><br>
	  <form action="respuestaTaller1.jsp" method="post">
	  	  <table align="center">
	  	  <tr><td>Nombre:<br><input type="text" name="usuario" value="" size="40"/></td></tr>
	  	  <tr><td><h2>Ingresa dos números:</h2></td></tr>
  <tr><td><label for="num1">Número 1:</label></td></tr>
  <tr><td><input type="text" id="num1" name="num1"><br><br></td></tr>
  <tr><td><label for="num2">Número 2:</label></td></tr>
  <tr><td><input type="text" id="num2" name="num2"><br><br></td></tr>
	  	  <tr><td colspan="2"><input type="button" value="CALCULAR" onClick="valida_envia(this.form)"/></td></tr>
	  	  </table>
	  </form>
</body>
</html>