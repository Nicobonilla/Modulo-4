<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="head.jsp">
	<jsp:param value="Creae Usuario" name="title" />
	<jsp:param value="Crear Usuario" name="titulo" />
</jsp:include>
	
<div class="principal">  <!--  HAY QUE REVISAR TIPO DE USUARIO -->

	<h2> Indique el tipo de usuario que desea registrar</h2>
	<a href="crearUsCliente.jsp" > CLIENTE</a></br>
	<a href="crearUsPro.jsp" > PROFESIONAL</a></br>
	<a href="crearUsAdm.jsp" > ADMINISTRATIVO</a></br>
</div>

<jsp:include page="footer.jsp" ></jsp:include>

