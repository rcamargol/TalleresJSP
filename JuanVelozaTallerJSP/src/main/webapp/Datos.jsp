<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Detalles de compra</title>
</head>
<% String respServlet1 = request.getAttribute("linea1").toString();
		String respServlet2 = request.getAttribute("linea2").toString();
		String respServlet3 = request.getAttribute("linea3").toString();
		String respServlet4 = request.getAttribute("linea4").toString();
		String respServlet5 = request.getAttribute("linea5").toString();%>
<body>
	<style>
		body{
				font-family: cursive; background-color: #02735E; box-sizing: border-box; background-image: url(slanted-gradient.png);
			}
			h1{
				 margin: 0 auto;
			     padding: 20px 0;
			     color: white;
			     text-shadow: 3px 3px 1px black;
			}
			h3{
				margin: 0 auto;
				padding: 20px;
				color: white;
				font-size: 20px;
				text-align: justify;
			}
			
			.button {
			    background-color: #245BCB; 
			    border: black;
			    color: white;
			    padding: 15px 32px;
			    text-align: center;
			    text-decoration: none;
			    display: inline-block;
			    font-size: 16px;
			    margin: 0 auto;
			}
	</style>
</body>
	<center><h1>Detalles de la compra</h1><br></center>	
	
	<center>
	<h3><%= respServlet1 %></h3><br>
	<h3><%= respServlet2 %></h3><br>
	<h3><%= respServlet3 %></h3><br>
	<h3><%= respServlet4 %></h3><br>
	<h3><%= respServlet5 %></h3><br>
	<input type="button" class="button" value="Volver a Comprar" onClick="history.back()"/>
	</center>
	
</html>