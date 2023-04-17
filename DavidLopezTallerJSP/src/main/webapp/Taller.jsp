<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Taller</title>

<script language="javascript">

function unselect() {
    document.querySelectorAll('[name=tarjeta]').forEach((x) => x.checked = false);
}
  function valida_envia(form){
	  if(form.nombres.value==""){
		  alert("Debe ingresar sus nombres");
		  form.usuario.focus();
		  return;
	  }
	  if(form.apellidos.value==""){
		  alert("Debe ingresar sus apellidos");
		  form.clave.focus();
		  return;
	  }
	  if(form.articulos.value=="0"){
		  alert("Debe seleccionar un articulo");
		  form.articulos.focus();
		  return;
	  }
	  
	  if(form.valor.value=="0" ||form.valor.value==""){
		  alert("Debe digitar un valor valido");
		  form.valor.focus();
		  return;
	  }
	  
	  if(form.cantidad.value=="0"){
		  alert("Debe digitar un cantidad");
		  form.cantidad.focus();
		  return;
	  }
	  
	  if(!document.querySelector('input[name="tarjeta"]:checked')) {
	      alert('Debe seleccionar su tipo de tarjeta');
	      return;
	      }
	 
	  
	  if(form.numerotarjeta.value==""||form.numerotarjeta.value<1000000000000000){
		  alert("Debe digitar un numero de tarjeta valido");
		  form.numerotarjeta.focus();
		  return;
	  }
	  if(form.numerotarjetaconfirmacion.value==""){
		  alert("Digite el numero de confirmacion");
		  form.numerotarjetaconfirmacion.focus();
		  return;
	  }
	  if(form.numerotarjetaconfirmacion.value!=form.numerotarjeta.value){
		  alert("el numero no coincide ");
		  form.numerotarjetaconfirmacion.focus();
		  return;
	  }
	 
	  
	  form.submit();
	  
	      form.nombres.value="";
          form.apellidos.value="";
    	  form.articulos.value="0";
    	  form.cantidad.value="1";
    	  form.numerotarjeta.value="";
    	  form.numerotarjetaconfirmacion.value="";
    	  form.valor.value="0";
    	  unselect();
    	  
}
  </script>
  
</head>
<body style="background-color: #666666">
<center><h1>Formulario de compras</h1></center>
<form action="Servlet1" method="post">
<table align="center" style="background-color: WHITE">
<tr><td>Nombres: </td><td><input type="text" name="nombres" value="" size="40"></td></tr>
<tr><td>Apellidos: </td><td><input type="text" name="apellidos" value="" size="40"></td></tr>

<tr><td>Articulos</td><td><select name="articulos">
<option value="0">::Seleccione::</option>
<option value="1">Zapatos</option>
<option value="2">Camisas</option>
<option value="3">Relojes</option>
<option value="4">Libros</option>
<option value="5">Computadores</option>
</select> $: <input type="number" name="valor" value="0" min="1000" size="20"></td></tr>
<tr><td>Cantidad articulos:</td><td><input type="number" value="1" name="cantidad" min="1" max="100" size = "20"></td></tr>
<tr><td>Tarjeta credito:</td><td> Visa<input type="radio" name="tarjeta" value="1"> MasterCard<input type="radio" name="tarjeta" value="2"> American Express<input type="radio" name="tarjeta" value="3"></td></tr>
<tr><td>Número de tarjeta:</td><td><input type="text" name="numerotarjeta" value="" size="40"></td></tr>
<tr><td>Confirmar número:</td><td><input type="text" name="numerotarjetaconfirmacion" value="" size="40"></td></tr>

</table><br><br>
<center><input type="button" value="CONFIRMAR COMPRA" onClick="valida_envia(this.form)"/></center>
</form>

<p>
</body>
</html>