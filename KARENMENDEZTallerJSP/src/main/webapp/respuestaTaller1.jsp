<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.lang.Integer" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Operaciones num�ricas</title>
<link rel="stylesheet" href="StyleTaller1.css">
</head>
<body background="math.jpg">
	
<center><h2 style="font-style: oblique;">Operaciones num�ricas: </h2></center>
<a name="arriba"></a>
<a href="#abajo">Ir abajo</a><br><br>

<%

String usuario = request.getParameter("usuario");

// Verificar si el valor de usuario no es nulo o vac�o
if (usuario == null || usuario.isEmpty()) {
	usuario = "desconocido";
}
  // Obtener los valores de los n�meros ingresados
  int num1 = Integer.parseInt(request.getParameter("num1"));
  int num2 = Integer.parseInt(request.getParameter("num2"));

  // Realizar las operaciones matem�ticas
  int suma = num1 + num2;
  int resta = num1 - num2;
  int multiplicacion = num1 * num2;
  int division = num1 / num2;
%>

<p style="font-family: cursive;">Se leyeron los siguientes valores:   
	Se�or/a  <%=usuario %>   los resultados son:
	</p>
	<br>
<center><p>La suma de <%= num1 %> y <%= num2 %> es: <%= suma %></p>
<p>La resta de <%= num1 %> y <%= num2 %> es: <%= resta %></p>
<p>La multiplicaci�n de <%= num1 %> y <%= num2 %> es: <%= multiplicacion %></p>
<p>La divisi�n de <%= num1 %> y <%= num2 %> es: <%= division %></p></center>


<a href="inicioTaller1jsp.jsp"> Volver </a><br><br><br>
<br><br>
<br>
<br>
<br>
<br>
<br>
<br><br>
<br><br>
<br>
<br>
<br>
<br>
<br>


<a name="abajo"><br></a>
<a href="#arriba" type="button">Ir arriba</a>

</body>
</html>