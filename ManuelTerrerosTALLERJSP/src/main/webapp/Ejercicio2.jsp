<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Intervalo de Numeros</title>
</head>
<script lenguage="JavaScript">
function validarEspacios(form){
	 if (form.inf.value==""){
	    	alert("Debe completar los campos.");
	    	form.inf.focus();
	    	return;
	    }
	    if (form.sup.value==""){
	    	alert("Debe completar los campos.");
	    	form.sup.focus();
	    	return;
	    }
	    form.submit();
}
   
</script>
 <body>
     <form action="Ejercicio2Servlet" method="post">
     <center><h3>Limite de numeros</h3>
     <br>
     Ingrese Limite Inferior: <input type="number" size="20" name="inf">
     <br>
     Ingrese Limite Superior: <input type="number" size="20" name="sup">
     </center>
     <center><input type="button" value="Calcular" onclick="validarEspacios(this.form)"></center>
     </form> 

</body>
</html>