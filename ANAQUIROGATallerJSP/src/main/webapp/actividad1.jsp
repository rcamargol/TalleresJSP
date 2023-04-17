<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page session="true"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Actividad 1 - numeros</title>
<script language="JavaScript">
function enviarNum(form){
	if(form.numero1.value=="" ){
		alert("Debe ingresar un numero en la casilla 1....");
		form.numero1.focus();
		return;
	}
	if(form.numero2.value=="" ){
		alert("Debe ingresar un numero en la casilla 2....");
		form.numero2.focus();
		return;
	}
	
	form.submit();
}
</script>
</head>
<body background="https://w0.peakpx.com/wallpaper/726/465/HD-wallpaper-retro-vintage-texture-pink-ornament-background-ornament-texture-seamless-texture-pink-retro-background-damask-texture.jpg">
<br>
<br>
<br>
<center><h1><strong><em>Formulario 1</em></strong></h1></center>
<center><h2><u>Por favor digitar los n&uacute;meros</u></h2></center>
<form action="ServletEjercicio1" method="post">
<center><p>N&uacute;mero 1: <input type="number" name="numero1" value="" size="15"/></p></center>
<center><p>N&uacute;mero 2: <input type="number" name="numero2" value="" size="15"/></p></center>
<center><input type="button" value="REALIZAR CALCULOS" onClick="enviarNum(this.form)"/></center>
</body>
</html>