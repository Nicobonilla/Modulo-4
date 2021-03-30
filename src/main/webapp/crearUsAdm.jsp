<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="head.jsp">
	<jsp:param value="Crear Usuario Administrativo" name="title" />
	<jsp:param value="Crear Usuario Administrativo" name="titulo" />
</jsp:include>

<div class="principal">

	<form action="CreacionDeUsuario" method="post">
		<label for="nombreu">Nombres: </label> 
		<input style="margin-left: 103px;" type="text" id="nombreu" 
		name="nombre" required>
		<label for="Fecha naciemiento">Fecha de Nacimiento:</label> 
		<input	style="margin-left: 5px;" type="date" id="Fecha" 
		name="feNac" required>
		<label for="run">RUN: </label> <input style="margin-left: 140px;"
			type="text" id="run" name="run" required>

			<label for="telefono">Area:</label> <input type="number"
				id="telefono" name="area" class="required" >

		<label for="afp">Experiencia:</label> <input type="text" id="afp"
				name="experienciaPrevia" class="required" minlength="4">
				<input type="hidden" id="custId" name="tipoUsuario" value="adm">
		<button style='margin-left: 240px;' type="submit"
			class="btn btn-secondary">Crear</button>
	</form>

</div>

<jsp:include page="footer.jsp" ></jsp:include>

