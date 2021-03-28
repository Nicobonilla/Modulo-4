<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="head.jsp">
	<jsp:param value="Listar Capacitaciones" name="title"/>
	<jsp:param value="Listado de Capacitaciones" name="titulo"/>
</jsp:include>

<div class="principal">
	<br>
	<div class="table-responsive ">
		<table class="table table-bordered table caption-top"
			style="color: aliceblue;">
			<caption>Listado de capacitaciones</caption>
			<tr>
				<th>ID capacitación</th>
				<th>Fecha capacitacion</th>
				<th>Hora capacitacion</th>
				<th>Nombre del cliente</th>
			</tr>
			<tr>
				<th>1</th>
				<td>10-11-2020</td>
				<td>12:00</td>
				<td>Peter Rock</td>
			</tr>
			<tr>
				<th>2</th>
				<td>12-12-2020</td>
				<td>10:00</td>
				<td>Elsa Pallo</td>
			</tr>
			<tr>
		</table>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>