<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LISTA DE NUMEROS</title>
<script language="JavaScript">

function validar(form){
	if(form.n1.value == ""){
		alert("Debe ingresar un numero...");
		form.n1.focus();
		return;
	}
	if(form.n2.value == ""){
		alert("Debe ingresar un numero...");
		form.n2.focus();
		return;
	}
	if(Number(form.n1.value) > Number(form.n2.value)){
		alert("EL LIMITE INFERIOR DEBE SER MENOR AL LIMITE SUPERIOR...");
		form.n1.focus();
		return;
	}
form.submit();
}

</script>
</head>
<body background="https://i.pinimg.com/originals/c6/1d/95/c61d95738bf8cc5c8e9863bd8d638a78.jpg" >
<br><br><br><br><br><br><br><br><br><br><br><br>

<h1 align="center">VALORES ENTEROS ENTRE DOS N&Uacute;MEROS</h1>

<form action="Receptor2" method="post">


		<table align="center" bgcolor="FBEEE6">
		<tr> 
		
			<h2><td>Digite el limite inferior:</td></h2>
			<td><input type="text" name="n1" value="" size="20"/> </td>
		
		</tr>
		
		<tr> 
		
			<h2><td>Digite el limite superior:</td></h2>
			<td><input type="text" name="n2" value="" size="20"/> </td>
		
		</tr>
		</table>
		
		<center><h2><input type="button" value="CONFIRMAR COMPRA" onClick="validar(this.form)"/></h2></center>

</form>

</body>
</html>