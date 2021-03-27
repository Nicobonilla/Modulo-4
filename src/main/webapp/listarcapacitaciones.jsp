<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="head.jsp">
	<jsp:param value="Listar Capacitaciones" name="title"/>
	<jsp:param value="Listar Capacitaciones" name="titulo"/>
</jsp:include>

<main class="principal">
	<table class="table">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">Capacitación</th>
				<th scope="col">Capacitador</th>
				<th scope="col">Empresa</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Constructora</td>
				<td>Luis Castro</td>
				<td>Constru SPA</td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td>Contabilidad</td>
				<td>Francisco Uribe</td>
				<td>Numeros SA</td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td>Prevención de Riesgo</td>
				<td>José José</td>
				<td>Cuidado LTDA</td>
			</tr>
		</tbody>
	</table>
</main>
</body>
</html>