<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
	<form id="editarcliente">
		<ul>
			<li><label for="runclie">Run cliente a editar:</label> <input
				type="text" id="runclie" name="run_cliente" class="required"
				minlength="8" min="1111111" max="99999999"></li>
				
			<li><label for="nombApelli">Nombres y Apellidos:</label> <input
				type="text" id="nombApelli" name="nombres_apellidos"
				class="required" minlength="5"></li>

			<li><label for="telefono">Telefono:</label> <input type="number"
				id="telefono" name="ingreso_telefono" class="required" minlength="9"></li>

			<li><label for="afp">Afp:</label> <input type="text" id="afp"
				name="ingreso_afp" class="required" minlength="4"></li>

			<li><label for="sistsalud">Sistema de salud:</label> <input
				type="text" id="sistsalud" name="ingreso_salud" class="required"
				minlength="6"></li>
	
			<li><label for="direccion">Dirección:</label> <input type="text"
				id="direccion" name="ingreso_direccion" class="required"
				minlength="4"></li>
	
			<li><label for="comuna">Comuna:</label> <input type="text"
				id="comuna" name="ingreso_comuna" class="required" minlength="4"></li>
	
			<li><label for="edad">Edad:</label> <input type="number"
				id="edad" name="ingreso_edad" class="required" minlength="1" min="1"
				max="99"></li>
		</ul>
		<button style='margin-left: 240px;' type="submit"
			class="btn btn-secondary">Modificar datos</button>
	</form>

<jsp:include page="footer.jsp" ></jsp:include>
    