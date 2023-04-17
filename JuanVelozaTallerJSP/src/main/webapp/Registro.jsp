<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro de Compras</title>
	<script language = "JavaScript">
	
		function asignarValor(){
			var articulos = document.getElementById("producto");
			var precioUnidad = document.getElementById("precio");
			precioUnidad.value = articulos.value;
		}
	
		function validar_envio(form){
			if(form.producto.value == 0){
				alert("Seleccione el producto que desee...")
				form.producto.focus();
				return;
			}
			if(form.cantidad.value == 0){
				alert("Debe ingresar la cantidad de productos que quiere...")
				form.cantidad.focus();
				return;
			}
			if(form.nombres.value == ""){
				alert("Debe ingresar sus nombres...")
				form.nombres.focus();
				return;
			}
			if(form.apellidos.value == ""){
				alert("Debe ingresar sus apellidos...")
				form.apellidos.focus();
				return;
			}
			if(form.tarjeta.value == ""){
				alert("Debe seleccionar el tipo de su tarjeta...")
				form.tarjeta.focus();
				return;
			}
			if(form.numero.value == ""){
				alert("Ingrese el numero de su tarjeta...")
				form.numero.focus();
				return;
			}
			if(form.numero.value <= 999999999999999){
				alert("Recuerde que el numero de una tarjeta es de 16 digitos  -  Ingrese mas digitos")
				form.numero.focus();
				return;

			}
			if(form.numero.value >= 10000000000000000){
				alert("Recuerde que el numero de una tarjeta es de 16 digitos  -  Ingrese menos digitos")
				form.numero.focus();
				return;
			}
			
			if(form.numero1.value == "" ){
				alert("Por favor confirme el numero de su tarjeta...")
				form.numero1.focus();
				return;
			}
			if(form.numero1.value != form.numero.value){
				alert("Los numeros de tarjeta no coinciden...")
				form.numero1.focus();
				return;
			}
			form.submit();
		}
	</script>
</head>
<body>
	<style>

    body{font-family: cursive; background-color: #02735E; box-sizing: border-box; background-image: url("slanted-gradient.png")}

    h1 {
        margin: 0 auto;
        padding: 20px 0;
        color: white;
        text-shadow: 3px 3px 1px black;
    }

    h4 {
        margin: 0 auto;
        padding: 20px 0;
        color: white;
        font-size:20px;
      
        text-align: center;
    }

    p{
        margin: 0;
        padding: auto;
        color: white;
        text-shadow: 3px 3px 1px black;
    }

    form{
        background-color:#82655F;
        background-image:url("fondo.jpg");
        padding: 20px;
     	color:white;
        border-radius: 8px;
        margin: 0 auto;
        width: 420px;
        height: 520px;
        font-size: 12px;
        
    }

    input, textarea{
            outline: none;
            border: 0;
    }

    .field{
        border: solid 2px #ccc;
        padding: 10px;
    }
    .field:focus{
        border-color: #02735E ;
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

	<center><h1>Formulario de registro de compras</h1></center>
	<center><p>Juan Sebasti&aacute;n Veloza Ni&ntilde;o </p> </center><br>
	<form action = "respuesta" method = "get">
        <h4> Datos del usuario</h4>
		 <table >
		 <tr><td></td><td><select onchange="asignarValor()" class="field" name = "producto" id="producto">
		 		<option value = "0" disabled selected> :: Seleccione un Producto :: </option>
		 		<option value = "50000"> Zapatos </option>
		 		<option value = "20000"> Camisa </option>
		 		<option value = "100000"> Reloj </option>
		 		<option value = "70000"> Libro </option>
		 		<option value = "300000"> Computador </option>
		 </select> </td></tr>
		 <tr><td></td><td><select class="field" name="cantidad" id="cantidad">
		 		<option value = "0" disabled selected> :: Seleccione la cantidad de productos ::</option>
		 		<option value = "1"> 1 </option>
		 		<option value = "2"> 2 </option>
		 		<option value = "3"> 3 </option>
		 		<option value = "4"> 4 </option>
		 		<option value = "5"> 5 </option>
		 		<option value = "6"> 6 </option>
		 		<option value = "7"> 7 </option>
		 		<option value = "8"> 8 </option>
		 		<option value = "9"> 9 </option>
		 		<option value = "10"> 10 </option>
		 </select></td></tr>
		 <tr><td></td><td><input class ="field" disabled type="number" name="precio" id="precio"  placeholder="Precio por unidad" value="" size="20"/></td></tr>
		 <tr><td></td><td><input class="field" type="text" name="nombres" id="nombres" placeholder="Ingrese su nombre" value="" size="40"/></td></tr>
		 <tr><td></td><td><input class="field" type="text" name="apellidos" id="apellidos" placeholder="Ingrese sus apellidos" value="" size="40"/></td></tr> 
		 </table>
		 <h4> Datos de transacci&oacute;n</h4>
		 <table >
		 	<tr><td>Tarjeta de credito: <input type="radio"  name="tarjeta" value="VISA"/>Visa
		 						<input type="radio"  name="tarjeta" value="MasterCard"/>MasterCard
		 						<input type="radio"  name="tarjeta" value="American Express"/>American Express</td></tr>
		 	<tr><td>N&uacute;mero tarjeta de credito: <input class="field" type="number" name="numero" value=""  size="40" /></td></tr>	
		 	<tr><td>Confirme su n&uacute;mero de tarjeta: <input class="field" type="number" name="numero1" value="" size="40"/></td></tr>
		 </table>
		 <br>
		<center><input type="button"  class="button" value="Confirmar Compra" onClick="validar_envio(this.form)"/></center>
		
	</form>
</body>
</html>