<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Actividad 2</title>
<script language="javascript">
  function valida_envia(form){
	  
	  if(form.limiteSup.value==""){
		  alert("Debe digitar un numero valido");
		  form.limiteSup.focus();
		  return;
	  }
	  if(form.limiteInf.value==""){
		  alert("Debe digitar un numero valido");
		  form.limiteInf.focus();
		  return;
	  }
	  form.submit();
}
  </script>
</head>
<body style="background-color: #B2B2B2"><br><br>
<center><h1>Ingrese los numeros a calcular.</h1></center>
<form action="RespuestaAct2.jsp" method="post">
<table align="center" style="background-color: GREY">
<tr><td><h2>Limite superior: </h2></td><td><input type="number" name="limiteSup" size="40"></td></tr>
<tr><td><h2>Limite inferior: </h2></td><td><input type="number" name="limiteInf" size="40"></td></tr>
</table>
<center> <input type="button" value="CALCULAR" onClick="valida_envia(this.form)"/></center>
</form>

</body>
</html>