<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Ejercicio 2</title>
</head>
<body>
	<%
	String res;
	int n1;
	int n2;
	String numero1 = request.getParameter("numero1").toString();
	String numero2 = request.getParameter("numero2").toString();

	try {
		res = "El resultado del ejercicio 2 es: <br> Los n&uacute;meros comprendidos entre los 2 n&uacute;meros son:<br>";
		n1 = Integer.parseInt(numero1);
		n2 = Integer.parseInt(numero2);

		if (n1 > n2) {
			for (int i = n2; i <= n1; i++) {
		res += i + ", ";
			}
		}
		if (n1 < n2) {
			for (int i = n1; i <= n2; i++) {
		res += i + ", ";
			}
		}
		if (n1 == n2) {
			res = "<br>Ambos n&uacute;meros son iguales";
		}

	} catch (NumberFormatException e) {
		res = "<br> Solo debe ingresar números";
	}
	%>
	<br>
	<%=res%>
</body>
</html>