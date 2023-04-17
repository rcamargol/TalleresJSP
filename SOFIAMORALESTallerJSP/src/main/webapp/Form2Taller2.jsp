<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Taller 2</title>
</head>
<body bgcolor="#E4D0D0">
	<form action="Resp2T2.jsp" method="post">
		<!--post = Obtiene info encriptada -->
		<table align="center" bgcolor="#E4D0D0">
			<tr>
				<td>Numero 1:</td>
				<td><input type="text" name="numero1" value="" size="30" /></td>
			</tr>
			<tr>
				<td>Numero 2:</td>
				<td><input type="text" name="numero2" value="" size="30" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type=submit value="Confirmar"></td>
				<!--  <td colspan="2"><input type="button" value="ACEPTAR" /></td> onClick="valida_envia(this.form)" /></td> -->
			</tr>
</body>
</html>