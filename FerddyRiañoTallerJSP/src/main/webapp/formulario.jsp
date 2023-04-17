<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro de Compras</title>
<script language = "JavaScript">

		function mostrarValor() {
			var lista = document.getElementById("art");
			var texto = document.getElementById("puni");
			texto.value = lista.value;
		}
		
		function valida_envia(form){
			if(form.art.value==""){
				alert("Debes seleccionar un producto.");
				form.art.focus();
				return;
			}
			if(form.cant.value=="0"){
				alert("Debes seleccionar la cantidad de productos que deseas.");
				form.cant.focus();
				return;
			}
			if(form.ncli.value==""){
				alert("Debes ingresar tu nombre.");
				form.ncli.focus();
				return;
			}
			if(form.acli.value==""){
				alert("Debes ingresar tu apellido.");
				form.acli.focus();
				return;
			}
			if(form.fran.value==""){
				alert("Debes seleccionar la franquicia a la cual pertenece la tarjeta de credito.");
				form.fran.focus();
				return;
			}
			if(form.nt.value==""){
				alert("Debes ingresar el numero de la tarjeta de credito.");
				form.nt.focus();
				return;
			}
			if(form.cnt.value==""){
				alert("Debes confirmar el numero de la tarjeta de credito.");
				form.cnt.focus();
				return;
			}
			if(form.nt.value<=999999999999999){
				alert("El numero de tarjeta de credito debe tener 16 digitos validos.");
				form.nt.focus();
				return;
			}
			if(form.nt.value>=10000000000000000){
				alert("El numero de tarjeta de credito debe tener 16 digitos validos.");
				form.nt.focus();
				return;
			}
			if(form.cnt.value!=form.nt.value){
				alert("Los numeros de tarjeta de credito no coinciden, por favor revisa.");
				form.cnt.focus();
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
                background-color: #000000;
                background-color: #ffffff;
				background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100%25'%3E%3Cdefs%3E%3ClinearGradient id='a' gradientUnits='userSpaceOnUse' x1='0' x2='0' y1='0' y2='100%25' gradientTransform='rotate(210,640,324)'%3E%3Cstop offset='0' stop-color='%23ffffff'/%3E%3Cstop offset='1' stop-color='%23B5E61D'/%3E%3C/linearGradient%3E%3Cpattern patternUnits='userSpaceOnUse' id='b' width='605' height='504.2' x='0' y='0' viewBox='0 0 1080 900'%3E%3Cg fill-opacity='0.2'%3E%3Cpolygon fill='%23444' points='90 150 0 300 180 300'/%3E%3Cpolygon points='90 150 180 0 0 0'/%3E%3Cpolygon fill='%23AAA' points='270 150 360 0 180 0'/%3E%3Cpolygon fill='%23DDD' points='450 150 360 300 540 300'/%3E%3Cpolygon fill='%23999' points='450 150 540 0 360 0'/%3E%3Cpolygon points='630 150 540 300 720 300'/%3E%3Cpolygon fill='%23DDD' points='630 150 720 0 540 0'/%3E%3Cpolygon fill='%23444' points='810 150 720 300 900 300'/%3E%3Cpolygon fill='%23FFF' points='810 150 900 0 720 0'/%3E%3Cpolygon fill='%23DDD' points='990 150 900 300 1080 300'/%3E%3Cpolygon fill='%23444' points='990 150 1080 0 900 0'/%3E%3Cpolygon fill='%23DDD' points='90 450 0 600 180 600'/%3E%3Cpolygon points='90 450 180 300 0 300'/%3E%3Cpolygon fill='%23666' points='270 450 180 600 360 600'/%3E%3Cpolygon fill='%23AAA' points='270 450 360 300 180 300'/%3E%3Cpolygon fill='%23DDD' points='450 450 360 600 540 600'/%3E%3Cpolygon fill='%23999' points='450 450 540 300 360 300'/%3E%3Cpolygon fill='%23999' points='630 450 540 600 720 600'/%3E%3Cpolygon fill='%23FFF' points='630 450 720 300 540 300'/%3E%3Cpolygon points='810 450 720 600 900 600'/%3E%3Cpolygon fill='%23DDD' points='810 450 900 300 720 300'/%3E%3Cpolygon fill='%23AAA' points='990 450 900 600 1080 600'/%3E%3Cpolygon fill='%23444' points='990 450 1080 300 900 300'/%3E%3Cpolygon fill='%23222' points='90 750 0 900 180 900'/%3E%3Cpolygon points='270 750 180 900 360 900'/%3E%3Cpolygon fill='%23DDD' points='270 750 360 600 180 600'/%3E%3Cpolygon points='450 750 540 600 360 600'/%3E%3Cpolygon points='630 750 540 900 720 900'/%3E%3Cpolygon fill='%23444' points='630 750 720 600 540 600'/%3E%3Cpolygon fill='%23AAA' points='810 750 720 900 900 900'/%3E%3Cpolygon fill='%23666' points='810 750 900 600 720 600'/%3E%3Cpolygon fill='%23999' points='990 750 900 900 1080 900'/%3E%3Cpolygon fill='%23999' points='180 0 90 150 270 150'/%3E%3Cpolygon fill='%23444' points='360 0 270 150 450 150'/%3E%3Cpolygon fill='%23FFF' points='540 0 450 150 630 150'/%3E%3Cpolygon points='900 0 810 150 990 150'/%3E%3Cpolygon fill='%23222' points='0 300 -90 450 90 450'/%3E%3Cpolygon fill='%23FFF' points='0 300 90 150 -90 150'/%3E%3Cpolygon fill='%23FFF' points='180 300 90 450 270 450'/%3E%3Cpolygon fill='%23666' points='180 300 270 150 90 150'/%3E%3Cpolygon fill='%23222' points='360 300 270 450 450 450'/%3E%3Cpolygon fill='%23FFF' points='360 300 450 150 270 150'/%3E%3Cpolygon fill='%23444' points='540 300 450 450 630 450'/%3E%3Cpolygon fill='%23222' points='540 300 630 150 450 150'/%3E%3Cpolygon fill='%23AAA' points='720 300 630 450 810 450'/%3E%3Cpolygon fill='%23666' points='720 300 810 150 630 150'/%3E%3Cpolygon fill='%23FFF' points='900 300 810 450 990 450'/%3E%3Cpolygon fill='%23999' points='900 300 990 150 810 150'/%3E%3Cpolygon points='0 600 -90 750 90 750'/%3E%3Cpolygon fill='%23666' points='0 600 90 450 -90 450'/%3E%3Cpolygon fill='%23AAA' points='180 600 90 750 270 750'/%3E%3Cpolygon fill='%23444' points='180 600 270 450 90 450'/%3E%3Cpolygon fill='%23444' points='360 600 270 750 450 750'/%3E%3Cpolygon fill='%23999' points='360 600 450 450 270 450'/%3E%3Cpolygon fill='%23666' points='540 600 630 450 450 450'/%3E%3Cpolygon fill='%23222' points='720 600 630 750 810 750'/%3E%3Cpolygon fill='%23FFF' points='900 600 810 750 990 750'/%3E%3Cpolygon fill='%23222' points='900 600 990 450 810 450'/%3E%3Cpolygon fill='%23DDD' points='0 900 90 750 -90 750'/%3E%3Cpolygon fill='%23444' points='180 900 270 750 90 750'/%3E%3Cpolygon fill='%23FFF' points='360 900 450 750 270 750'/%3E%3Cpolygon fill='%23AAA' points='540 900 630 750 450 750'/%3E%3Cpolygon fill='%23FFF' points='720 900 810 750 630 750'/%3E%3Cpolygon fill='%23222' points='900 900 990 750 810 750'/%3E%3Cpolygon fill='%23222' points='1080 300 990 450 1170 450'/%3E%3Cpolygon fill='%23FFF' points='1080 300 1170 150 990 150'/%3E%3Cpolygon points='1080 600 990 750 1170 750'/%3E%3Cpolygon fill='%23666' points='1080 600 1170 450 990 450'/%3E%3Cpolygon fill='%23DDD' points='1080 900 1170 750 990 750'/%3E%3C/g%3E%3C/pattern%3E%3C/defs%3E%3Crect x='0' y='0' fill='url(%23a)' width='100%25' height='100%25'/%3E%3Crect x='0' y='0' fill='url(%23b)' width='100%25' height='100%25'/%3E%3C/svg%3E");
            }

            .formulario{
                margin: auto;
                margin-top: 100px;
                border-radius: 4px;
                font-family: 'century gothic';
                color: white;
                box-shadow: 7px 13px 37px #000;
                width: 400px;
                background: #5C5656;
                padding: 30px;

            }

            .formulario h1 {
                font-size: 25px;
                margin-bottom: 20px;
                font-family: 'century gothic';
            }

            .formulario h2 {
                font-size: 22px;
                margin-bottom: 18px;
                font-family: 'century gothic';
            }

            .formulario legend {
                font-size: 22px;
                margin-bottom: 18px;
                font-family: 'century gothic';
                padding: 10px;
                border-radius: 4px;
            }

            .div {
                font-size: 18px;
                font-family: 'century gothic';
                margin: 0.4rem;
            }
            .control {
                width: 100%;
                padding: 10px;
                border-radius: 4px;
                margin-bottom: 10px;
                border: 3px solid #A39899;
                font-family: 'century gothic';
                font-size: 18px;
                color: black;

            }
            
            .formulario .boton {
                width: 100%;
                background: #A39899;
                border: 1px solid #E6E6E6;
                border-radius: 4px;
                padding: 8px;
                color: white;
                margin: 10px 0;
                font-size: 16px;
                font-family: 'century gothic';
            }
        </style>
</head>
<body>
<section class="formulario"> 
	<h1>Registro de Compras</h1>
	<form action = "Servlet" method ="get">
		<select onchange="mostrarValor()" name="art" id="art" class="control">
			 <option value="" disabled selected>Elije un producto de la lista</option>
			 <option value="50000"> Zapatos</option>
			 <option value="30000"> Camisa</option>
			 <option value="100000"> Reloj</option>
			 <option value="15000"> Libro</option>
			 <option value="2500000"> Computador</option>
		</select>
		<select name="cant" id="cant" class="control">
			 <option value="0" disabled selected>Elije la cantidad de productos</option>
			 <option value="1"> 1</option>
			 <option value="2"> 2</option>
			 <option value="3"> 3</option>
			 <option value="4"> 4</option>
			 <option value="5"> 5</option>
			 <option value="6"> 6</option>
			 <option value="7"> 7</option>
			 <option value="8"> 8</option>
			 <option value="9"> 9</option>
			 <option value="10"> 10</option>
		</select>
		<input class="control" disabled type="number" name="puni" id="puni" placeholder="Valor por unidad" value="" size="20"/>
		<input class="control" type="text" name="ncli" value="" id="ncli" placeholder="Ingresa tu nombre" size="40"/>
		<input class="control" type="text" name="acli" value="" id="acli" placeholder="Ingresa tu apellido" size="40"/>
		<h2>Franquicia de la Tarjeta:</h2>
	    <label>
	        <input type="radio" name="fran" value="VISA"> Visa
	    </label>
	    <label>
	        <input type="radio" name="fran" value="MASTER CARD"> Master Card
	    </label>
	    <label>
	        <input type="radio" name="fran" value="AMERICAN EXPRESS"> American Express
	    </label>
		<input class="control" type="number" name="nt" id="nt" placeholder="Ingresa el numero de tarjeta" value="" min="16" max="16" size="40"/>
		<input class="control" type="number" name="cnt" id="cnt" placeholder="Confirma el numero de tarjeta" value="" min="16" max="16" size="40"/>
		<input class="boton" type="button" value="REALIZAR COMPRA" onClick="valida_envia(this.form)"/>
		</section>
	</form>
</body>
</html>