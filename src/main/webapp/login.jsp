<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title> Log In</title>
	<style type="text/css">
		<jsp:include page = "css/bootstrap.min.css" />  
		<jsp:include page = "css/estilos.css" />
	</style>
	<script type="text/javascript">
		<%@ include file="js/jquery-3.6.0.min.js" %>
	</script>
</head>


<header class="cabecera">	
	<h1 class="titulo" >Log In</h1>
</header>
<body>
	<main class="princinpal">
		
		
		<form action="LoginIngreso" method="post" >
				<label>Usuario:
					<input type ="text" name="usuario">
				</label>
				
				<label>Clave:
					<input type="password" name="password">
				</label> <!--SE DEBIO CAMBIAR EL NAME YA QUE NO PERMITIA EL SERVLET TRABAJAR CON _ -->
				<button type ="submit" >LOG IN</button>
		</form>
		
		
		
		
		
	</main>
</body>
</html>