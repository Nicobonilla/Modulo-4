<%@ page import ="modelo.Usuario" %>
<%@ page import ="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="head.jsp">
	<jsp:param value="Lista de Usuarios" name="title" />
	<jsp:param value="Lista de Usuarios" name="titulo" />
</jsp:include>
<div class="principal">
	<div class="table-responsive ">
	<%
	List<Usuario> lista = (List<Usuario>) request.getAttribute("listadoUsuario");
	%>
		<table class="table table-bordered table caption-top"
			style="color: aliceblue;">
			<thead> 
				<th scope="col">RUN</th>
				<th scope="col">Nombre</th>
				<th scope="col">Fecha de Nacimiento</th>
			</thead>
			<tbody>
				<%
				for (Usuario usu : lista ){
				%>
				<tr>
					<td><%= usu.getRun() %></td>
					<td><%= usu.getNombres()%></td>
					<td><%= usu.getFeNac() %></td>
				</tr>
				<% } %>
			</tbody>	
		</table>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
