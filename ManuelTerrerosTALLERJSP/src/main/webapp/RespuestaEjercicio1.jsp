<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resultados</title>
</head>
<body>
<center><h2>Operaciones Básicas</h2>
     <table align="center">
     <tr>
        <td><b>La Suma entre ${numa} y ${numb} es igual a:</b></td>
        <td>${suma}</td>
     </tr>
     <tr>
        <td><b>La Resta entre ${numa} y ${numb} es igual a:</b></td>
        <td>${resta}</td>
     </tr>
     <tr>
        <td><b>La Multiplicación entre ${numa} y ${numb} es igual a:</b></td>
        <td>${multi}</td>
     </tr>
     <tr>
        <td><b>La División entre ${numa} y ${numb} es igual a:</b></td>
        <td>${divi}</td>
     </tr>
     </table>
</center>
     <br>
    <center><input type="button" value="Volver" onclick="history.back()"></center> 

</body>
</html>