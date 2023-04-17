<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
	<% int numero1 = Integer.parseInt(request.getParameter("numero1"));
	int numero2 = Integer.parseInt(request.getParameter("numero2"));%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resultados</title>
<style>

 			* {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                background-color: #330033;
                background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='200' height='200' viewBox='0 0 800 800'%3E%3Cg fill='none' stroke='%23404' stroke-width='8.7'%3E%3Cpath d='M769 229L1037 260.9M927 880L731 737 520 660 309 538 40 599 295 764 126.5 879.5 40 599-197 493 102 382-31 229 126.5 79.5-69-63'/%3E%3Cpath d='M-31 229L237 261 390 382 603 493 308.5 537.5 101.5 381.5M370 905L295 764'/%3E%3Cpath d='M520 660L578 842 731 737 840 599 603 493 520 660 295 764 309 538 390 382 539 269 769 229 577.5 41.5 370 105 295 -36 126.5 79.5 237 261 102 382 40 599 -69 737 127 880'/%3E%3Cpath d='M520-140L578.5 42.5 731-63M603 493L539 269 237 261 370 105M902 382L539 269M390 382L102 382'/%3E%3Cpath d='M-222 42L126.5 79.5 370 105 539 269 577.5 41.5 927 80 769 229 902 382 603 493 731 737M295-36L577.5 41.5M578 842L295 764M40-201L127 80M102 382L-261 269'/%3E%3C/g%3E%3Cg fill='%23505'%3E%3Ccircle cx='769' cy='229' r='11'/%3E%3Ccircle cx='539' cy='269' r='11'/%3E%3Ccircle cx='603' cy='493' r='11'/%3E%3Ccircle cx='731' cy='737' r='11'/%3E%3Ccircle cx='520' cy='660' r='11'/%3E%3Ccircle cx='309' cy='538' r='11'/%3E%3Ccircle cx='295' cy='764' r='11'/%3E%3Ccircle cx='40' cy='599' r='11'/%3E%3Ccircle cx='102' cy='382' r='11'/%3E%3Ccircle cx='127' cy='80' r='11'/%3E%3Ccircle cx='370' cy='105' r='11'/%3E%3Ccircle cx='578' cy='42' r='11'/%3E%3Ccircle cx='237' cy='261' r='11'/%3E%3Ccircle cx='390' cy='382' r='11'/%3E%3C/g%3E%3C/svg%3E");
            }
            
            .form-register{
                width: 400px;
                background: #24303c;
                padding: 30px;
                margin: auto;
                margin-top: 100px;
                border-radius: 4px;
                font-family: 'calibri';
                color: white;
                box-shadow: 7px 13px 37px #000;
            }
            
            .form-register h4 {
                font-size: 22px;
                margin-bottom: 20px;
            }
			  button {
			    margin: 0 50px;
			    position: relative;
			    padding: 10px 20px;
			    font-size: 25px;
			    border: none;
			    background: #33004b;
			    color: rgb(255, 255, 255);
			    letter-spacing: 2px;
			    cursor: pointer;
			    overflow: hidden;
			    transition: .3s;
			}
			
			button span {
			    position: absolute;
			    width: 100%;
			    height: 100px;
			    border-radius: 50%;
			    background: rgba(25, 1, 41, 0.2);
			    top: -50%;
			    left: -100%;
			    transition: .3s;
			}
			
			button:hover span {
			    left: -10%;
			}
			
			button:hover {
			    color: #ffffff;
			    background: #2e075a;
			    box-shadow: 0 5px 5px rgba(0, 0, 0, .7);
			}

</style>
</head>
<body>
<section class="form-register">
<%

int suma = numero1 + numero2;
int resta = numero1 - numero2;
int multiplicacion = numero1 * numero2;
double division = numero1 / numero2;


%>
	<h4>RESULTADOS</h4>
	<p>La suma es: <%=suma %></p>
	<p>La resta es: <%=resta %></p>
	<p>La multiplicacion es: <%=multiplicacion %></p>
	<p>La division es: <%=division %></p>
</section>
<br>
<br>
<center>
<a href="ejercicio1.jsp">
<button><span></span>Volver a calcular</button>
</a>
</center>
</body>
</html>