<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Respuesta 1</title>
</head>
<body>
<%
		int n1 = Integer.parseInt(request.getParameter("n1"));
		int n2 = Integer.parseInt(request.getParameter("n2"));
		int i;
		out.println("<p>Los números que estan entre " + n1 + " y " + n2 + " son: </p>");
		if(n1>n2){
			int max = n1;
			int min = n2;
			int resta = max - min;
			for(i=1;i<=resta-1;i++){
				if(min<max){
					min = min + 1;
					out.println("<p>" + min + "</p>");
				}else if(min==max){
					
				}
			}	
		}else if(n2>n1){
			int max = n2;
			int min = n1;
			int resta = max - min;
			for(i=1;i<=resta-1;i++){
				if(min<max){
					min = min + 1;
					out.println("<p>" + min + "<p>");
				}else if(min==max){
					
				}
			}
		}else if(n1==n2){
			out.println("No hay números entre los números ya que son iguales");
		}
	%>
</body>
</html>