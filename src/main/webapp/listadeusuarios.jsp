<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="head.jsp">
	<jsp:param value="Lista de Usuarios" name="title" />
	<jsp:param value="Lista de Usuarios" name="titulo" />
</jsp:include>

<main class="principal">
	<table class="table">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">Nombre</th>
				<th scope="col">Apellido</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Otto</td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td>Jacob</td>
				<td>Thornton</td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td>Larry the Bird</td>
				<td>Cooler</td>
			</tr>
		</tbody>
	</table>
</main>
</body>
</html>