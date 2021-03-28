<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:include page="head.jsp">
	<jsp:param value="Lista de Usuarios" name="title" />
	<jsp:param value="Lista de Usuarios" name="titulo" />
</jsp:include>

<div class="principal">  <!--  HAY QUE REVISAR TIPO DE USUARIO -->
	<br>
	<form>
		<ul>
			<li><label for="nombreu">Nombres: </label> <input
				style="margin-left: 103px;" type="text" id="nombreu"
				name="nombre" required></li>

			<li><label for="Fecha naciemiento">Fecha de Nacimiento:
			</label> <input style="margin-left: 5px;" type="date" id="Fecha"
				name="feNac" required></li>
	
			<li><label for="run">RUN: </label> <input
				style="margin-left: 140px;" type="text" id="run" name="run"
				required></li>
		
			<li><label for="type">Tipo de usuario: </label> <select
				style="margin-left: 50px;" name="tipoUsuario" required>
					<option value="1">Cliente</option>
					<option value="2">Profesional</option>
					<option value="3">Administrativo</option>
			</select></li>
		</ul>
		<button style='margin-left: 250px;' type="submit"
			class="btn btn-secondary">Crear Usuario</button>
	</form>
</div>

<jsp:include page="footer.jsp" ></jsp:include>

