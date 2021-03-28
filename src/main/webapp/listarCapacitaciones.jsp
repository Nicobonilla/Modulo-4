<%@ page import ="modelo.Capacitacion" %>
<%@ page import ="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="head.jsp">
	<jsp:param value="Listar Capacitaciones" name="title"/>
	<jsp:param value="Listado de Capacitaciones" name="titulo"/>
</jsp:include>

<div class="principal">
	<div class="table-responsive ">
	<%
	List<Capacitacion> lista = (List<Capacitacion>) request.getAttribute("listadoCapacitacion");
	%>
		<table class="table table-bordered table caption-top"
			style="color: aliceblue;">
			<thead> 
				<th scope = "col">ID capacitación</th>
				<th scope = "col">Fecha capacitacion</th>
				<th scope = "col">Hora capacitacion</th>
				<th scope = "col">Nombre del cliente</th>
			</thead>
			<tbody>
			<%
			for (Capacitacion cap : lista ){
			%>
			<tr>
				<th><%= cap.getIdCapacitacion() %></th>
				<td><%= cap.getDia() +" - "+cap.getHora() %></td>
				<td><%= cap.getLugar() %></td>
				<td><%= cap.getDuracion() %></td>
			</tr>
			<% } %>
			</tbody>	
		</table>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>