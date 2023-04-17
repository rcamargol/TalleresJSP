<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Ejercicio 1 parte 1 inicio</title>
	<script language="JavaScript">
	
		function validacion(form){
			
			if (form.num1.value == ""){
				alert("Debe ingresaar un numero");
				form.num1.focus();
				return;
			}
			if (form.num2.value == ""){
				alert("Debe ingresar un numero");
				form.num2.focus();
				return;
			}
			form.submit();
		}
	
	</script>
</head>
<body>
	<center>
		<br>
		<h1>Ingrese dos numeros</h1>
	</center>
	<form action="ejercicio1parte1resultado.jsp" method="post">
		<table align="center">
		<tr>
			<td style="background-color: Red; ">Ingrese el numero 1: </td>
			<td style="background-color: Red; "><input type="text" name="num1" value="" size="20"></td>
		</tr>
		<tr>
			<td style="background-color: Red; ">Ingrese el numero 2: </td>
			<td style="color: Red; background-color: Red"><input type="text" name="num2" value="" size="20"></td>
		</tr>
		<tr>
			<td style="background-color: Green; "><input type="button" value="Aceptar" onclick="validacion(this.form)"/></td>
	    </tr>	
	</table>
	</form>	
</body>
</html>