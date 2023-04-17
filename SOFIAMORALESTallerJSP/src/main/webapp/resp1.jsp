<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%
//ejecute instruccion 
//request.getParameter ess lo que el server requiere
String num1 = request.getParameter("numero1");
String num2 = request.getParameter("numero2");
%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Res1</title>
</head>

<body>
	<center>

		<p>
			Suma :<%
		int sum, n1, n2;
		n1 = Integer.parseInt(num1);
		n2 = Integer.parseInt(num2);
		sum = n1 + n2;
		%>
			<%=sum%>
		</p>
		<br>
		<p>
			Resta :<%
		int res, n3, n4;
		n3 = Integer.parseInt(num1);
		n4 = Integer.parseInt(num2);
		res = n1 - n2;
		%>
			<%=res%>
		</p>

		<p>
			Multiplicacion :<%
		double mul;
		int n5, n6;
		n5 = Integer.parseInt(num1);
		n6 = Integer.parseInt(num2);
		mul = n1 * n2;
		%>
			<%=mul%>
		</p>

		<p>
			Division :<%
		double division;
		int n7, n8;
		n7 = Integer.parseInt(num1);
		n8 = Integer.parseInt(num2);
		division = n1 / n2;
		%>
			<%=division%>
		</p>
		</p>
	</center>

	<a href="Form1.jsp">
		<button width="50">Volver</button>
	</a>

</body>
</html>
