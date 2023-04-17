<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Operaciones Básicas</title>
</head>
<script lenguage="JavaScript">
function validarEspacios(form){
	 if (form.numa.value==""){
	    	alert("Debe completar los campos.");
	    	form.numa.focus();
	    	return;
	    }
	    if (form.numb.value==""){
	    	alert("Debe completar los campos.");
	    	form.numb.focus();
	    	return;
	    }
	    form.submit();
}
   
</script>

<body>
<form action="Ejercicio1Servlet" method="post">
     <center><h3>Calculadora de Prog 2</h3></center>
     <br>
     Ingrese un numero A:<input type="number" size="20" name="numa">
     <br>
     Ingrese un numero B:<input type="number" size="20" name="numb">
     <center><input type="button" value="Calcular" onclick="validarEspacios(this.form)" ></center>
</form>
     

</body>
</html>