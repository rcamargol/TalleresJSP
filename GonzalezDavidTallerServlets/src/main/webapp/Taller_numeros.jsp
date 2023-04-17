<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script language ="JavaScript">
function validar(form){
	if(formulario.digito1.value==""||isNaN(parseInt(formulario.digito1.value))){
		alert("No se ha ingresado un primer número o no es un número entero");
		formulario.digito1.focus();
		return;
	}
	if(formulario.digito2.value==""||isNaN(parseInt(formulario.digito2.value))){
		alert("No se ha ingresado un segundo número o no es un número entero");
		formulario.digito2.focus();
		return;
	}
	formulario.submit();
}

</script>
<body><center>
<form name="formulario" action="Servlet_numeros" method="post">
		<table border="0">
			<tr>
				<th colspan="5">Ingresar n&uacute;meros</th>
			</tr>
			<tr><td>N&uacutemero;_1:</td><td><input type="text" name="digito1" value="" size="20"></td><td>(+,-,X,/)</td>
			<td>N&uacutemero;_2:</td><td><input type="text" name="digito2" value="" size="20"></td></tr>
			

				<td><input type="button" value="Confirmar"
					onClick="validar(this.form)"></td>
				
		</table>
		</form>
</center>
</body>
</html>