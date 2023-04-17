<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Actividad 1</title>
<script language="javascript">
  function valida_envia(form){
	  form.numeroA.value=="";
	  if(form.numeroA.value==""){
		  alert("Debe digitar un numero valido");
		  form.numeroA.focus();
		  return;
	  }
	  if(form.numeroB.value==""){
		  alert("Debe digitar un numero valido");
		  form.numeroB.focus();
		  return;
	  }
	  form.submit();
}
  </script>
</head>
<body style="background-color: #B2B2B2"><br><br>
<center><h1>Ingrese los numeros a calcular.</h1></center>
<form action="RespuestaAct1.jsp" method="post">
<table align="center" style="background-color: GREY">
<tr><td><h2>Numero A: </h2></td><td><input type="text" name="numeroA" size="40"></td></tr>
<tr><td><h2>Numero B: </h2></td><td><input type="text" name="numeroB" size="40"></td></tr>
</table>

<center> <input type="button" value="CALCULAR" onClick="valida_envia(this.form)"/></center>
</form>
</body>
</html>