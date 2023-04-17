<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css" type="text/css">
<title>Segundo ejercicio</title>
<script language="JavaScript">
    function valueForm(form){
        if(form.num1.value == ""){
            alert("El primer numero debe tener un valor!");
            form.num1.focus();
            return;
        }
        if(form.num2.value == ""){
            alert("El segundo numero debe tener un valor!");
            form.num2.focus();
            return;
        }
        if(form.num2.value < form.num1.value){
            alert("El segundo numero debe ser mayor al primero!");
            form.num1.focus();
            form.num2.focus();
            return;
        }
        form.submit();
    }
</script>
</head>
<body>
	<form class="box" action="exercise2answer.jsp" method="post">
		<h1>Segundo ejercicio:</h1>
		<input type="number" value="" name="num1" placeholder="Número 1">
		<input type="number" value="" name="num2" placeholder="Número 2">
		<input type="button" value="Calcular" onclick="valueForm(this.form)">
	</form>
</body>
</html>