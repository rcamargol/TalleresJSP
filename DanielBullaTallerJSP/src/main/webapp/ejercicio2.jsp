<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EJERCICIO2</title>
<script language="JavaScript">
function valida_envia(form){
	
	if(form.numero1.value==""){
		alert("Debe ingresar el primer numero.");
		form.numero1.focus();
		return;
	}
	if(form.numero2.value==""){
		alert("Debe ingresar el segundo numero.");
		form.numero2.focus();
		return;
	}
	form.submit();
}
</script>

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

            .div {
                font-size: 18px;
                font-family: 'calibri';
                margin: 0.4rem;
            }
            .controls {
                width: 100%;
                background: #24303c;
                padding: 10px;
                border-radius: 4px;
                margin-bottom: 16px;
                border: 1px solid #1f53c5;
                font-family: 'calibri';
                font-size: 18px;
                color: white;
            }
            
            .form-register .botons {
                width: 100%;
                background: #1f53c5;
                border: none;
                padding: 12px;
                color: white;
                margin: 16px 0;
                font-size: 16px;
            }
        </style>
</head>
<body>
<form method="post" action="respuesta2.jsp">
<section class="form-register">
	<h4>Formulario:</h4>
	<input class="controls" type="number" name="numero1" id="numero1" placeholder="Ingrese el primer numero" size="40" value="">
    <input class="controls" type="number" name="numero2" id="numero2" placeholder="Ingrese el segundo numero" size="40" value="">
    <input class="botons" type="button" value="ACEPTAR" onclick="valida_envia(this.form)">
</section>
</form>
</body>
</html>