<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Respuesta actividad 1</title>
</head>
<body>
	<center>
		<%
			double n1 = Double.parseDouble(request.getParameter("numero1"));
			double n2 = Double.parseDouble(request.getParameter("numero2"));
			double s = 0;
			double r = 0;
			double m = 0;
			double d = 0;
			%>
		
	<table border = "4">
			<tr>
				<th> N&uacute;meros </th>
				<th> Suma </th>
				<th> Resta </th>
				<th> Multiplicaci&oacute;n </th> 
				<th> Divisi&oacute;n </th>
			</tr>
		
			<tr>
				<%
				s = n1 + n2;
				r = n1 - n2;
				m = n1 * n2;
				d = n1 / n2;
				%>
				<th>
				<%
					out.println("( " + n1 + " | "  + n2 +")" + "<br>" );
				%>
				</th>
				<th>
					<%
					out.println(s);
					%>
				</th>
				
				<th>
					<%
					out.println(r);
					%>
				</th>
				
				<th>
					<%
					out.println(m);
					%>
				</th>
				
				<th>
					<%
					out.println(d);
					%>
				</th>
			</tr>
		</table>
		</center>
</body>
</html>