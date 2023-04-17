<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
</head>
<script language="JavaScript"> 
	
	function validar(form){
    if(formulario.articulo.value=="0"){
    alert("Seleccione un artículo");
    formulario.articulo.focus();
    return;
    }
    if(formulario.cantidad.value==""){
    alert("Ingresar cantidad");
    formulario.cantidad.focus();
    return;
    }
    if(formulario.cantidad.value<="0"){
    alert("No se ha ingresado una cantidad válida");
    formulario.cantidad.focus();
    return;
    }
    if(formulario.precio_por_unidad.value==""){
   	alert("Ingresar precio por unidad");
    formulario.precio_por_unidad.focus();
    return;
    }
    if(parseInt(formulario.precio_por_unidad.value)<=0 ){
  	alert("No se ha ingresado un precio válido");
    formulario.precio_por_unidad.focus();
    return;
    }
    if(formulario.nombre_cliente.value==""){
    alert("Ingresar nombre cliente");
    formulario.nombre_cliente.focus();
    return;
    }
    if(formulario.apellidos_del_cliente.value==""){
    alert("Ingresar apellidos del cliente");
    formulario.apellidos_del_cliente.focus();
    return;
    }   
    if(formulario.tarjeta.value==""){
    alert("Seleccione una tarjeta de crédito");
    formulario.apellidos_del_cliente.focus();
    return;
    }
    if(formulario.numero_tarjeta.value.length!=16){
    alert("Ingrese un número de tarjeta con los digitos exactos");
    formulario.numero_tarjeta.focus();
    return;
    }
    if(formulario.confirmar_numero.value!=form.numero_tarjeta.value){
    alert("Los números no coinciden");
    formulario.confirmar_numero.focus();
    return;
    }
    if(formulario.confirmar_numero.value==""){
    alert("No ha confirmado la tarjeta");
    formulario.confirmar_numero.focus();
    return;
    }
    formulario.submit();
	}

    
  </script>

<body>
	<center>
	<form name="formulario" action="ServletCompras" method="post">
		<table border="0">
			<tr>
				<th colspan="2">Registro de compras</th>
			</tr>
			<tr>
				<td>Art&iacuteculo:</td>
				<td><select name="articulo">
						<option value="0">Seleccionar opci&oacuten</option>
						<option value="zapato(s)">Zapatos</option>
						<option value="camisa(s)">Camisa</option>
						<option value="reloj(es)">Reloj</option>
						<option value="Libro(s)">Libro</option>
						<option value="Computador(es)">Computador</option>
				</select></td>
			</tr>
			<tr>
				<td>Cantidad:</td>
				<td><input type="text" name="cantidad" id="cantidad" size="20" ></td>
			</tr>
			<tr>
				<td>Precio por unidad:</td>
				<td><input type="text" name="precio_por_unidad" id="precio_por_unidad" value=""
					size="20" oninput = total(this)></td>
			</tr>
			<tr>
				<td>Nombre cliente:</td>
				<td><input type="text" name="nombre_cliente" value="" size="40"></td>
			</tr>
			<tr>
				<td>Apellidos cliente:</td>
				<td><input type="text" name="apellidos_del_cliente" value=""
					size="40"></td>
			</tr>
			<tr>
				<td>Tarjeta de cr&eacutedito:</td>
				<td><input type="radio" name="tarjeta" value="visa">Visa<input
					type="radio" name="tarjeta" value="mastercard">Master Card<input
					type="radio" name="tarjeta" value="americanexpress">American
					Express</td>
			</tr>
			<tr>
				<td>N&uacutemero tarjeta: </td>
				<td><input type="text" name="numero_tarjeta" placeholder="Solo se aceptan numeros-16 digitos **** **** **** ****" value="" size="40"></td>
			</tr>
			<tr>
				<td>Confirmar n&uacutemero tarjeta:</td>
				<td><input type="text" name="confirmar_numero" value=""
					size="40"></td>
			</tr>

				<td><input type="button" value="Confirmar compra"
					onClick="validar(this.form)"></td>
				
		</table>

	</form>
	</center>


	<script src="script.js"></script>
</body>





</html>