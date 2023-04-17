<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/datepicker/daterangepicker.css" rel="stylesheet"
	media="all">

<meta charset="ISO-8859-1">
<title>José shop</title>
</head>
<body>
	<script language="JavaScript">
		function valida_envia(form) {

			var excepcionNum = /^[a-zA-Z\s]*$/;
			// Expresión regular para validar el campo 
			var expLetra = /^[0-9]+$/;

			if (form.numeroTarjeta.value.length > 16
					|| form.numeroTarjeta.value.lenght < 16) {
				alert("Tarjeta invalida por exceso de caracteres");
				form.numeroTarjeta.focus(); //buscar en el form lo que need
				return;
			}
			// Validar campos de solo letras

			if (form.nombre.value == "") { //comprueba que no es vacio 
				alert("Ingrese el nombre de usuario ");
				form.nombre.focus(); //buscar en el form lo que need
				return;
			}
			if (form.apellido.value == "") { //comprueba que no es vacio 
				alert("Ingrese el apellido de usuario ");
				form.apellido.focus(); //buscar en el form lo que need
				return;
			}
			if (!excepcionNum.test(form.nombre.value)) {
				alert("El campo 'nombre' no debe contener números");
				form.nombre.focus();
				return false;
			}
			if (!excepcionNum.test(form.apellido.value)) {
				alert("El campo 'apellido' no debe contener números");
				form.nombre.focus();
				return false;
			}

			if (!expLetra.test(form.numeroTarjeta.value)) {
				alert("El campo 'numeroTarjeta' debe contener sólo números");
				form.numeroTarjeta.focus();
				return false;
			}
			if (!expLetra.test(form.repetirTarjeta.value)) {
				alert("El campo 'de repetir tarjeta' debe contener sólo  números");
				form.repetirTarjeta.focus();
				return false;
			}

			if (form.numeroTarjeta.value == "") { //comprueba que no es vacio 
				alert("Campo de tarjeta vacio");
				form.numeroTarjeta.focus(); //buscar en el form lo que need
				return;
			}

			if (form.repetirTarjeta.value == "") { //comprueba que no es vacio 
				alert("Campo de tarjeta vacio");
				form.repetirTarjeta.focus(); //buscar en el form lo que need
				return;
			}
			if (form.numeroTarjeta.value != form.repetirTarjeta.value) {
				alert("tarjeta no coincide ");
				form.numeroTarjeta.focus()
				form.repetirTarjeta.focus()
				return;
			}

			if (form.articulo.value == "") { //comprueba que no es vacio 
				alert("Ingrese el articulo");
				form.articulo.focus(); //buscar en el form lo que need
				return;
			}

			if (form.cantidadArt.value == "") { //comprueba que no es vacio 
				alert("Campo de numero de producto vacio");
				form.cantidadArt.focus(); //buscar en el form lo que need
				return;
			}
			if (form.precioProducto.value == "") { //comprueba que no es vacio 
				alert("Campo de precio del producto vacio");
				form.precioProducto.focus(); //buscar en el form lo que need
				return;
			}
			if (form.numeroTarjeta.value != form.repetirTarjeta.value) {
				alert("tarjeta incorrecta");
				form.numeroTarjeta.focus()
				form.repetirTarjeta.focus()
				return;
			}

			// Validar campo de solo numeros

			if (!expLetra.test(form.cantidadArt.value)) {
				alert("El campo 'cantidad Articulo' debe contener sólo  números");
				form.cantidadArt.focus();
				return;
			}

			if (!expLetra.test(form.precioProducto.value)) {
				alert("El campo 'precio Producto' debe contener sólo números");
				form.precioProducto.focus();
				return;
			}

			form.submit(); //si no hay errores envie

		}
	</script>
	<div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
		<div class="wrapper wrapper--w680">
			<div class="card card-4">
				<div class="card-body">
					<h2 class="title">Shop</h2>
					<form action="Servlet" method="get">
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">Nombre</label> <input
										class="input--style-4" type="text" name="nombre" value=""
										size="40">
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">Apellido</label> <input
										class="input--style-4" type="text" name="apellido" value=""
										size="40">
								</div>
							</div>
						</div>
						<div class="row row-space">

							<div class="col-2">
								<div class="input-group">
									<label class="label">Tipo de tarjeta</label>
									<div class="p-t-10">
										<label class="radio-container m-r-45">Visa <input
											type="radio" checked="checked" name="tarjeta" id="visa"
											value="visa"> <span class="checkmark"></span>
										</label> <label class="radio-container">Mastercard <input
											type="radio" name="tarjeta" id="master" value="master">
											<span class="checkmark"></span>
										</label> <label class="radio-container">American Express <input
											type="radio" name="tarjeta" id="american" value="american">
											<span class="checkmark"></span>
										</label>
									</div>
								</div>

							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">Numero de tarjeta</label>
									<div class="input-group-icon">
										<input class="input--style-4 js-datepicker" type="text"
											name="numeroTarjeta" id="numeroTarjeta" value="" size="40">
									</div>
								</div>
								<div class="input-group">
									<label class="label">Confirmar tarjeta</label>
									<div class="input-group-icon">
										<input class="input--style-4 js-datepicker" type="text"
											name="repetirTarjeta" value="" size="40">
									</div>
								</div>
								<div class="input-group">
									<label class="label">Articulo</label>
									<div class="rs-select2 js-select-simple select--no-search">
										<select name="articulo">
											<option disabled="disabled" selected="selected">Seleccione
												el articulo</option>
											<option value="0">Seleccione</option>
											<option value="1">Zapatos</option>
											<option value="2">Camisa</option>
											<option value="3">Reloj</option>
											<option value="4">Libro</option>
											<option value="5">Computador</option>
										</select>
										<div class="select-dropdown"></div>
									</div>
								</div>

							</div>
						</div>
						<div class="col-2">
							<div class="input-group">
								<label class="label">Cantidad</label> <input
									class="input--style-4" type="text" name="cantidadArt" size="20">
							</div>
							<div class="input-group">
								<label class="label">precioProducto</label> <input
									class="input--style-4" type="text" name="precioProducto"
									size="20">
							</div>

						</div>
						<div class="row row-space">
							<div class="col-2"></div>

						</div>


						<div class="p-t-15">
							<button class="btn btn--radius-2 btn--blue" type="button"
								value="Confirmar" onClick="valida_envia(this.form)">Confirmar
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<script src="vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/datepicker/moment.min.js"></script>
	<script src="vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="js/global.js"></script>
</body>
</html>