<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resultados 2</title>
</head>
<body>
<center>
	<%
		int numero1 = Integer.parseInt(request.getParameter("numero1"));
		int numero2 = Integer.parseInt(request.getParameter("numero2"));
		int i;
		out.println("<p>Los números que estan entre " + numero1 + " y " + numero2 + " son: </p>");
		if(numero1>numero2){
			int max = numero1;
			int min = numero2;
			int resta = max - min;
			for(i=1;i<=resta-1;i++){
				if(min<max){
					min = min + 1;
					out.println("<p>" + min + "</p>");
				}else if(min==max){
					
				}
			}
		}else if(numero2>numero1){
			int max = numero2;
			int min = numero1;
			int resta = max - min;
			for(i=1;i<=resta-1;i++){
				if(min<max){
					min = min + 1;
					out.println("<p>" + min + "</p>");
				}else if(min==max){
					
				}
			}
		}else if(numero1==numero2){
			out.println("<p>No hay n&uacute;meros entre los números ya que son iguales</p>");
		}
	%>
	<tr><a href="actividad2.jsp">Volver al inicio</a></tr>
</center>
</body>
</html>