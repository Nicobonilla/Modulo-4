<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:include page="head.jsp">
	<jsp:param value="Lista de Usuarios" name="title" />
	<jsp:param value="Lista de Usuarios" name="titulo" />
</jsp:include>

<div class="principal">
	<br>
	<form>
		<ul>
			<li><label for="runadmin">RUN Administrativo</label> <input
				type="text" id="runadmin" name="ingreso_runadmin"></li>
				
			<li><label for="nombreadmin">Nombres Administrativo</label> <input
				type="text" id="nombreadmin" name="ingreso_nombresadmin"></li>
				
			<li><label for="apellidosadmin">Apellidos Administrativo</label>
				<input type="text" id="apellidosadmin" name="ingreso_apellidosadmin"></li>
				
			<li><label for="Correoadmin">Correo Administrativo</label> <input
				type="text" id="correoadmin" name="ingreso_correoadmin"></li>
	
			<li><label for="areaadmin">Área a la que pertenece</label> <input
				type="text" id="areaadmin" name="ingreso_areaadmin"></li>
		</ul>
			<button style='margin-left: 50px;' type="submit"
				class="btn btn-secondary">Modificar datos</button>
	</form>
</div>

<jsp:include page="footer.jsp" ></jsp:include>

