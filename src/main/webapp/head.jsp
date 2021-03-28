<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title> ${param.title}</title>
	<style type="text/css"> <%-- 	<jsp:include page = "css/bootstrap.min.css" />  --%>
	
		 <jsp:include page = "css/estilos.css" />
	</style>
	<script type="text/javascript">
		<%@ include file="js/jquery-3.6.0.min.js" %>
	</script>
	<jsp:include page="menu.jsp"></jsp:include>	
</head>
<br>
<body>
	<header class="cabecera">
		<br>
		<h1 class="titulo" id="mensaje1">${param.titulo}</h1>
		<br>
	</header>
	