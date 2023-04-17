<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Taller 2</title>
<script language = "JavaScript">
function valida_envio(form){
	if (form.numero1.value == "") {
		alert("Debe ingresar el primer número");
		form.numero1.focus();
		return;
	}if (form.numero2.value == "") {
		alert("Debe ingresar el segundo número");
		form.numero2.focus();
		return;
	}if (form.numero2.value > form.numero1.value) {
		alert("El limite inferior no puede ser mayor al superior");
		form.numero2.focus();
		return;
	}
	form.submit();
}
</script>
</head>
<body>
<center><h1>Ingrese dos n&uacute;meros enteros</h1></center>
<form action = "respuesta2.jsp" method = "post">
<br>
<center><td><h1>L&iacute;mite superior : </h1><input type = "text" name = "numero1" value = ""  size = "20"/></td></center>
<br>
<center><td><h1>L&iacute;mite inferior : </h1><input type = "text" name = "numero2" value = ""  size = "20"/></td></center>
<br>
<center><td colspan = "2"><input type = "button" value = "ACEPTAR" onClick = "valida_envio(this.form)" size = 40/></td></center>
</form>
</body>
</html>