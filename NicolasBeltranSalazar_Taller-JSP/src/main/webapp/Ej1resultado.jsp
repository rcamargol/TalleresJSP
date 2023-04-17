<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Ejercicio 1</title>
</head>
<body>
	<%
	String res;
	String div;

	int n1;
	int n2;
	String numero1 = request.getParameter("numero1").toString();
	String numero2 = request.getParameter("numero2").toString();

	try {

		n1 = Integer.parseInt(numero1);
		n2 = Integer.parseInt(numero2);

		if (n2 == 0) {
			div = "No se puede dividir entre 0";
		} else {
			div = "" + (n1 / n2);
		}

		res = "Los resultados de las operaciones del primer ejercicio son: " + "<br>Suma: " + (n1 + n2) + "<br>Resta: "
		+ (n1 - n2) + "<br>Multiplicaci&oacute;n: " + (n1 * n2) + "<br>Divisi&oacute;n: " + div;

	} catch (NumberFormatException e) {
		res = "<br> Solo debe ingresar números";
	}
	%>
	<%=res%>
</body>
</html>