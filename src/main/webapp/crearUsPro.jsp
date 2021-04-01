<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:include page="head.jsp">
	<jsp:param value="Creae Usuario Profesional" name="title" />
	<jsp:param value="Creae Usuario Profesional" name="titulo" />
</jsp:include>

<form action="CreacionDeUsuario" method="post">
		<label for="nombreu">Nombres: </label> 
		<input style="margin-left: 103px;" type="text" id="nombreu" 
		name="nombre" required>
		<label for="Fecha naciemiento">Fecha de Nacimiento:</label> 
		<input	style="margin-left: 5px;" type="date" id="Fecha" 
		name="feNac" required>
		<label for="run">RUN: </label> <input style="margin-left: 140px;"
			type="text" id="run" name="run" required>

			<label for="">Titulo:</label> <input type="number"
				id="" name="titulo" class="required" >

		<label for="afp">Fecha Ingreso:</label> <input type="text" id="afp"
				name="feIngreso" class="required" minlength="4">
<input type="hidden" id="custId" name="tipoUsuario" value="Profesional">
		<button type="submit" class="btn btn-secondary">Crear</button>
	</form>

    
 <jsp:include page="footer.jsp" ></jsp:include>