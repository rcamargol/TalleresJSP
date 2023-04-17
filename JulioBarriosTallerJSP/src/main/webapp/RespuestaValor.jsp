<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%
String num1=request.getAttribute("Numero1").toString();
String num2=request.getAttribute("Numero2").toString();
int numero1=Integer.parseInt(num1);
int numero2=Integer.parseInt(num2);
ArrayList<Integer>conjunto=new ArrayList<>();
int menor;
int mayor;

if(numero1>numero2){
	mayor=numero1;
	menor=numero2;
}else if(numero2>numero1){
	mayor=numero2;
	menor=numero1;
}else{
	mayor=numero1;
	menor=numero2;
}
for(int i=menor;i<=mayor;i++){
	conjunto.add(i);
}


%>
<head>
<meta charset="ISO-8859-1">
<title>Respuesta entre dos numeros</title>
</head>
<body>
<p>El numero mayor es <%=mayor %> y el numero menor es <%=menor %> <br></p>
<p>Los numeros entre <%=numero1 %> y <%=numero2 %> son: <br>
<%=conjunto %></p>


</body>
</html>