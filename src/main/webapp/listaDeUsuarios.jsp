<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="head.jsp">
	<jsp:param value="Lista de Usuarios" name="title" />
	<jsp:param value="Lista de Usuarios" name="titulo" />
</jsp:include>
<div class="principal">
	<div class="table-responsive ">
		<table class="table table-bordered table caption-top"
			style="color: aliceblue;">
			<tr>
				<th>RUN</th>
				<th>Nombre</th>
				<th>Apellidos</th>
				<th>Tipo de usuario</th>

			</tr>
			<tr>
				<th>22222222-2</th>
				<td>Ricardo</td>
				<td>Galindo Cuevas</td>
				<td>Administrativo</td>
				<td><a title="modificar datos" href=""><img
						src="img/modificar.png" alt="modificar datos" width="24" height="24" /></a></td>
				<td><a title="eliminar usuario" href="#"><img
						src="img/eliminar.png"
						alt="eliminar usuario" width="24" height="24" /></a></td>
		</table>
	</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>