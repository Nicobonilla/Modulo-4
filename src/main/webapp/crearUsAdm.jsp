<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="head.jsp">
	<jsp:param value="Crear Usuario Administrativo" name="title" />
	<jsp:param value="Crear Usuario Administrativo" name="titulo" />
</jsp:include>

<div class="principal">
	<form action="CreacionDeUsuario" method="post">
		<label>Nombres: 
			<input type="text" name="nombres" required>
		</label> 
		<label>Apellidos: 
			<input type="text" name="apellidos" required>
		</label> 
		<label>Fecha Nac.:
			<input type="date" name="feNac" >
		</label> 
		<label>RUN: 
			<input	type="text" name="run" required>
		</label> 
		<label >E-mail:
			<input type="text" name="correo">
		</label> 
		<label>Area:
			<input type="text" name="area">
		</label>
			<input type="hidden" id="custId" name="tipoUsuario" value="Administrativo">
		<button type="submit" class="btn btn-primary">Crear</button>
	</form>
</div>

<jsp:include page="footer.jsp" ></jsp:include>

