<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login de usuario</title>

	<style type="text/css">
		<jsp:include page = "css/bootstrap.min.css" />
		<jsp:include page = "css/estilos.css" />
	</style>
<!--<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.0.js"/>-->

		
</head>
<body>
	<header class="cabecera">
		<br>
		<h1 class="titulo" id="mensaje1">Login de usuario</h1>
		<br>
	</header>
	<br>
	<jsp:include page="loginNav.jsp"></jsp:include>
	<br>
	<main class="principal">
		<form id="login" novalidate class="was-validated">
			<br>
			<ul>
				<li>
					<div class="col-md-4">
						<label for="usuario">RUT del usuario: (ejemplo:12345678-9)</label>
						<input class="form-control" type="text" id="usuario"
								name="ingreso_usuario" placeholder="XXXXXXXX-Y" required>
						<div class="invalid-feedback">Debe ingresar el RUT.</div>
					</div>
				</li>
				<div style="color: crimson;">
					<p id="msgerror"></p>
				</div>
				<li><label for="contras" class="form-label">Clave:</label> <input
					class="form-control" style="width: 25%;" type="password"
					id="contras" name="ingreso_contraseña" maxlength="20" required>
					<div class="invalid-feedback">Debe ingresar una contraseña.</div></li>
			</ul>
			<input type="button" id="botoning" style="margin-left: 200px;"
				value="ingresar" onclick=" ingreso()">
		</form><br>
		<div>
			<p id="msgerror" style='margin-left: 15px;'></p>
		</div><br> <br>
	</main><br>
	<footer class="pie">
		<br> ® Derechos reservados 2021 <br>
	</footer>
	<!-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"/></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/login.js"/></script> -->
</body>
</html>

