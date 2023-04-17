<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resultados 2</title>
</head>
<body>
	<%
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		int i;
		out.println("<p>Los numeros que estan entre " + number1 + " y " + number2 + " son: </p>");
		if(number1>number2){
			int max = number1;
			int min = number2;
			int resta = max - min;
			for(i=1;i<=resta-1;i++){
				if(min<max){
					min = min + 1;
					out.println("<p>" + min + "</p>");
				}else if(min==max){
					
				}
			}
		}else if(number2>number1){
			int max = number2;
			int min = number1;
			int resta = max - min;
			for(i=1;i<=resta-1;i++){
				if(min<max){
					min = min + 1;
					out.println("<p>" + min + "</p>");
				}else if(min==max){
					
				}
			}
		}else if(number1==number2){
			out.println("<p>No hay numeros entre los numeros ya que son iguales</p>");
		}
	%>
</body>
</html>