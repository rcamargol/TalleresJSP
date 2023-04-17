<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OPERACIONES BASICAS</title>
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
form.submit();
}

</script>
</head>
<body background="https://www.kioannouinstitute.com/wp-content/uploads/2017/11/043-calculator.png">
<br><br><br><br><br><br><br><br><br><br><br><br>
<h1 align="center">OPERACIONES BASICAS ENTRE DOS NUMEROS</h1>

<form action="Receptor1" method="post">

		<table align="center" bgcolor="EAEDED">
		<tr> 
		
			<td>Digite el primer n&uacute;mero:</td>
			<td><input type="text" name="n1" value="" size="20"/> </td>
		
		</tr>
		
		<tr> 
		
			<td>Digite el segundo n&uacute;mero:</td>
			<td><input type="text" name="n2" value="" size="20"/> </td>
		
		</tr>
		</table>
		
		<center><h3><input type="button" value="CALCULAR" onClick="validar(this.form)"/></h3></center>

</form>

</body>
</html>