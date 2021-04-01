<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <jsp:include page="head.jsp">
	<jsp:param value="Crear Usuario Cliente" name="title"/>
	<jsp:param value="Crear Usuario Cliente" name="titulo"/>
	</jsp:include>
    
	<form action="CreacionDeUsuario" method="post">
		<label>Nombres:
			<input type="text" name="nombres" required>
		 </label> 
		 <label>Apellidos:
			<input type="text" name="apellidos" required>
		 </label> 
		<label >Fecha de Nacimiento:
			<input type="date" name="feNac" > <!-- required -->
		</label> 
		<label>RUN: 
			<input type="text" name="run" >
		</label>
		<label >Telefono:
			<input type="number" name="telefono" required >
		</label>
		<label>Afp:
			<input type="text" 	name="afp" class="required" ><!-- minlength="4" -->
		</label> 
		<label>Sistema de salud:
			<input type="text" name="sisSalud" class="required">
		</label>
		<label>Dirección:
			<input type="text" name="direccion" class="required">
		</label>	
		<label for="comuna">Comuna: 
			<input type="text" name="comuna" class="required" >
		</label>
		<label>Edad:
			<input type="number" name="edad" class="required" min="1" max="99">
		</label> 
			<input type="hidden" id="custId" name="tipoUsuario" value="Cliente">
		<button type="submit" class="btn btn-primary">Crear</button>
	</form>

<jsp:include page="footer.jsp" ></jsp:include>
    