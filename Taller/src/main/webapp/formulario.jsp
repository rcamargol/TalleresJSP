<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8" import="javax.servlet.jsp.JspWriter"%>
<!DOCTYPE html>
<%
//String p_computador = request.getAttribute("p_computador").toString();
%>
<html>
<head>
<meta charset="UTF-8">
<title>ACTIVIDAD - 1</title>
<link rel="stylesheet" href="Style.css">
<script language="JavaScript">
	function valida_envia(form) {
		
		if (form.nombre.value == "") { //valida que prof no vacia 
			alert("Insertar nombre");
			form.nombre.focus();
			return ;
		}
		if (form.apellido.value == "") { //valida que prof no vacia 
			alert("Insertar apellido");
			form.apellido.focus();
			return ;
		}
		
		if (form.producto.value == "0") { //comprueba que no es vacio 
			alert("Seleccione el articulo");
			form.producto.focus(); //buscar en el form lo que need
			return ;
		}
		if (form.cantidad.value == "") { //valida clave
			alert("Ingrese la cantidad a comprar ");
			form.cantidad.focus();
			return ;
		}
		if (form.precio_unidad.value == "") { //valida que prof no vacia 
			alert("Especifique el precio por unidad");
			form.precio_unidad.focus();
			return ;
		}
		
		if (form.opcion.value == "") { //valida que prof no vacia 
			alert("Seleccione un tipo de tarjeta");
			form.opcion.focus();
			return ;
		}
		if (form.numero_tarjeta.value == "") { //valida que prof no vacia 
			alert("Digite el numero de la tarjeta");
			form.numero_tarjeta.focus();
			return ;
		}
		if (form.numero_tarjeta.value.length !== 16) { //valida que prof no vacia 
			alert("La tarjeta debe constar de 16 digitos");
			form.numero_tarjeta.focus();
			return ;
		}
		if (form.numero_confirmacion.value == "") { //valida que prof no vacia 
			alert("Confirmar el numero de la tarjeta");
			form.numero_confirmacion.focus();
			return ;
		}
		if (form.numero_confirmacion.value !== form.numero_tarjeta.value) { //valida que prof no vacia 
			alert("NO COINCIDEN LOS NUMEROS");
			form.numero_confirmacion.focus();
			form.numero_tarjeta.focus();
			return ;
		}
		
		form.submit(); //si no hay errores envie

	}
</script>
</head>
<body>
<center><h1>Carrito de compra</h1></center>
<form action="Servlet" method="get" class='form'>
  <p class='field required'>
    <label class='label required' for='name'>Nombre</label>
    <input class='text-input' id='name' name="nombre" value=""  size="40" required type='text' >
  </p>
  <p class='field required'>
    <label class='label required' for='name'>Apellido</label>
    <input class='text-input' id='name'  name="apellido" value=""  size="40" required type='text' >
  </p>
  <p class='field half'>
    <label class='label' for='select'>Articulo</label>
    <select class='select' id='select' name="producto">
      <option selected value ="0">Seleccione</option>
      <option value ="Zapatos">Zapatos</option>
      <option value ="Reloj"> Reloj</option>
	  <option value ="Libro"> Libro</option>
	  <option value ="Computador"> Computador</option>
    </select>
  </p>
  <p class='field required half'>
    <label class='label' for='email'>Cantidad</label>
    <input required type="text" name="cantidad" value="" size="20" class='text-input' id='email'  >
  </p>
  <p class='field half'>
    <label class='label' for='phone'>Precio por unidad</label>
    <input type='text' name='precio_unidad' value="" size='20' class='text-input' id='phone'  >
  </p>
  <div class='field'>
    <label class='label'>Tipo de tarjeta</label>
    <ul class='options'>
      <li class='option'>
        <input type="radio" name="opcion" value="visa" id = "visa" class='option-input' id='option-0'>
        <label class='option-label' for='visa'>Visa</label>
      </li>
      <li class='option'>
        <input type="radio" name="opcion" value="mastercard" id="mastercard" class='option-input' id='option-1' >
        <label class='option-label' for='mastercard'>MasterCard</label>
      </li>
      <li class='option'>
        <input type="radio" name="opcion" value="a_express" id="American_express" class='option-input' id='option-2'>
        <label class='option-label' for='American_express'>American Express</label>
      </li>
    </ul>
  </div>
  <p class='field half required'>
    <label class='label' for='password'>Numero de tarjeta</label>
    <input name="numero_tarjeta" value=""  size="40" class='text-input' id='password' required type='password'>
  </p>
  <p class='field half required'>
    <label class='label' for='password'>Confirmacion de tarjeta</label>
    <input name="numero_confirmacion" value=""  size="40" class='text-input' id='password' required type='password'>
  </p>
  
  
  <p class='field half'>
    <input type="button" value="CONFIRMAR COMPRA" onClick="valida_envia(this.form)" class='button' >
  </p>
</form>
</form>
</body>
</html>