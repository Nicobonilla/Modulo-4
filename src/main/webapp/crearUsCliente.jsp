<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <jsp:include page="head.jsp">
	<jsp:param value="Crear Usuario Cliente" name="title"/>
	<jsp:param value="Crear Usuario Cliente" name="titulo"/>
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

			<label for="telefono">Telefono:</label> <input type="number"
				id="telefono" name="telefono" class="required" >

		<label for="afp">Afp:</label> <input type="text" id="afp"
				name="afp" class="required" minlength="4">

		<label for="sistsalud">Sistema de salud:</label> <input
				type="text" id="sisSalud" name="ingreso_salud" class="required">
	
			<label for="direccion">Dirección:</label> <input type="text"
				id="direccion" name="ingreso_direccion" class="required">
				
		<label for="comuna">Comuna:</label> <input type="text"
				id="comuna" name="ingreso_comuna" class="required" >
	
			<label for="edad">Edad:</label> <input type="number"
				id="edad" name="ingreso_edad" class="required" min="1"
				max="99">
				<input type="hidden" id="custId" name="tipoUsuario" value="cli">
		<button style='margin-left: 240px;' type="submit"
			class="btn btn-secondary">Crear</button>
	</form>

<jsp:include page="footer.jsp" ></jsp:include>
    