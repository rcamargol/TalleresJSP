<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page session="true"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Actividad 2 - numeros</title>
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
	
	if(Number(form.numero1.value)==Number(form.numero2.value)){
		alert("Debe el numero en la casilla 1 no puede ser igual al de la casilla 2....");
		form.numero1.focus();
		form.numero2.focus();
		form.numero1.value = "";
		form.numero2.value = "";
		return;
	}
	
	if(Number(form.numero1.value)>Number(form.numero2.value)){
		alert("El numero en la casilla 1 no puede ser mayor que el de la casilla 2....");
		form.numero1.focus();
		form.numero1.value = "";
		form.numero2.value = "";
		return;
	}
	
	
	form.submit();
}
</script>
</head>
<body background="https://w0.peakpx.com/wallpaper/550/287/HD-wallpaper-purple-damask-background-damask-floral-texture-purple-floral-texture-purple-retro-background-floral-ornaments-vintage-textures.jpg">
<br>
<br>
<br>
<center><h1 style="color:white"><strong><em>Formulario 2</em></strong></h1></center>
<center><h2 style="color:white"><u>Por favor digitar los n&uacute;meros</u></h2></center>
<form action="ServletEjercicio2" method="post">
<center><p style="color:white">N&uacute;mero 1: <input type="number" name="numero1" value="" size="15"/></p></center>
<center><p style="color:white">N&uacute;mero 2: <input type="number" name="numero2" value="" size="15"/></p></center>
<center><input type="button" value="REALIZAR LIMITES" onClick="enviarNum(this.form)"/></center>


</body>
</html>