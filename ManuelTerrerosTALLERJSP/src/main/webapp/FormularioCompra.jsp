<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
      body{
      background: #654ea3;  /* fallback for old browsers */
background: -webkit-linear-gradient(to top, #eaafc8, #654ea3);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to top, #eaafc8, #654ea3); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

      }
      
      .botoncito:hover{
      background-color: #4CAF50;
      color: white;
      
      }
      .cancelar:hover{
      background-color: #F00000;
      color: white;
      border-style: dashed;
      border-color: white;
      }      
</style>

 <meta charset="ISO-8859-1">
 <title >Tienda del Ingeniero</title>
</head>
<body>

<center><h1>Registro de Compras</h1></center>
 <form action="TiendaServlet" method="post">
 <table align="center" >
 
   <tr><td>Artículos</td>
       <td>
         <Select name="articulos"size="1">
         <option value="Zapatos">Zapatos</option>
         <option value="Camisa">Camisa</option>
         <option value="Reloj">Reloj</option>
         <option value="Libro" >Libro</option>
         <option value="Computador" >Computador</option>
         </Select>
       </td>   
   </tr>
   
   <tr><td >Cantidad</td>
       <td>
          <input type="number" size="20" Name="cant">
       </td>  
   </tr>
   
   <tr><td>Precio por unidad</td>
       <td>
          <input type="number" size="20" name="prec">
       </td>  
   </tr>
   
   <tr><td> Nombre Cliente</td>
       <td>
          <input type="text" size="40" name="nombre">
       </td>  
   </tr>
   
   <tr><td> Apellido Cliente</td>
       <td>
         <input type="text" size="40" name="apellido">
       </td>  
   </tr>
   
   <tr><td > Tarjeta de crédito </td>
       <td>
          <input type="radio" name="boton1" value="Visa"  >Visa<br>
          <input type="radio" name="boton1" value="MasterCard" >MasterCard<br>
          <input type="radio" name="boton1" value="American Express" >American Express
       </td>  
   </tr>
   
   <tr><td> Número de Tarjeta</td>
       <td>
          <input type="password" size="40" value="" name="numtar">
       </td>  
   </tr>
   
   <tr><td> Confirmar Número de Tarjeta</td>
       <td>
          <input type="password" size="40" name="valdtar">
       </td>
       
         
<!-- Función que valida la confirmacion de los campos de entrada -->   
   <script lenguage="JavaScript">
   function comprobaciones(form){
	    tar1 = form.numtar.value
	    tar2 = form.valdtar.value
	  
	    if (form.cant.value==""){
			alert("Debe ingresar la cantidad a comprar....");
			form.cant.focus();
			return;
			
		}
	    if (form.prec.value==""){
			alert("Debe ingresar el costo de la mercancía....");
			form.prec.focus();
			return;
		} 
	    
		if (form.nombre.value==""){
			alert("Debe ingresar su nombre....");
			form.nombre.focus();
			return;
			
		}
	    if (form.apellido.value==""){
			alert("Debe ingresar su apellido....");
			form.apellido.focus();
			return;
		}
	    if (form.boton1.value==""){
			alert("Ingrese la franquicia de su tarjeta....");
			form.boton1.focus();
			return;
	    }
		
	    if (tar1==""){
	    	alert("Debe completar los campos.");
	    	form.numtar.focus();
	    	return;
	    }
	    if (tar2==""){
	    	alert("Debe completar los campos.");
	    	form.valdtar.focus();
	    	return;
	    }
	    if(form.numtar.value<1000000000000000){
	    	alert("Numero de tarjeta inválido");
	    	form.numtar.focus();
	    	return;
	    }
	    if(form.numtar.value>10000000000000000){
	    	alert("Numero de tarjeta inválido");
	    	form.numtar.focus();
	    	return;
	    }
	    
	     if(tar1==tar2){
	  		  alert("Tarjetas validadas, puede continuar. :)");
	  		  form.submit();
	  	}else{	
	  		  alert("El número de tarjetas no son válidas")
	  	}
	   return;
   }
   </script>      
   </tr>	
 </table><br>
   
      <center><input type="button" value="Realizar Pago" onclick="comprobaciones(this.form)" class="botoncito">
         <input type="reset" class="cancelar">  
         
      </center>
 </form>

</body>
</html>