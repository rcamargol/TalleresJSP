<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejercicio 1</title>
<script type="text/javascript">
	function validar(form) {
		if(parseInt(form.num2.value, 10) == 0) {
			alert("El segundo numero no puede ser cero...");
			return;
		}
		form.submit();
	}
</script>
<style type="text/css">
* {
	box-sizing: border-box;
}

html {
     min-height: 100vh;
}

body {
	font-family: "Poppins", sans-serif;
	margin: auto;
    min-height: 100vh;
    min-width: 100vw;
}

.container {
	display: flex;
	aling-items: center;
    justify-content: center;
    height: 100vh;
    width: 100vw;
    background-color: trasparent;
}

#form {
	padding: 40px 0;
	display: flex;
	aling-items: center;
    justify-content: center;
    border-radius: 30px;
	height: 30%;
    width: 40%;
    margin: auto;
	box-shadow: 0 15px 25px rgba(139, 128, 249, 0.6);
}
</style>
</head>
<body>
	<div class="container">
		<section id = "form">
			<form action="respuesta1.jsp" method="post">
				<table>
					<tr>
						<td><h3>Numero 1:</h3></td>
						<td><input type="number" name="num1"></td>
					</tr>
					<tr>
						<td><h3>Numero 2:</h3></td>
						<td><input type="number" name="num2"></td>
					</tr>
				</table>
				<input type="button" value="ENVIAR" onClick="validar(this.form)">
			</form>
		</section>
	</div>
</body>
</html>