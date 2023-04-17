<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Resultado de Intervalos</title>
</head>
<% double inf = Double.parseDouble(request.getParameter("inf")); 
   double sup = Double.parseDouble(request.getParameter("sup"));%>
<center><body>
Los numeros encontrados entre <b>${inferior}</b> y <b>${superior}</b> son :
<br>
     <%
      if(inf==sup){
    	 out.println("Es el mismo numero, no hay intervalos");
     }
     while(inf<sup){	
    	 inf++;
    	 out.println("- "+ inf +" -");
     }
     
     while(inf>sup){	
    	 inf--;
    	 out.println("- "+ inf +" -");
     }
     

   %>
   <br>
   <input type="button" value="Volver" onclick="history.back()">
     

</body></center>
</html>