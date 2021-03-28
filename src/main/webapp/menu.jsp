<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<nav class="navegacion">
		<ul class="nav nav-pills">
			<li class="nav-item"><a class="nav-link active"
				aria-current="page" href="index.jsp"
				style="background-color: rgb(57, 65, 65);">Inicio</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#"
				role="button" aria-expanded="false">Usuarios</a>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="Login">Login</a></li>
					<li><a class="dropdown-item" href="crearusuario.jsp">Crear
							usuario</a></li>
				</ul></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#"
				role="button" aria-expanded="false">Capacitaciones</a>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="listarcapacitaciones.jsp">Lista
							de capacitaciones</a></li>
					<li><a class="dropdown-item" href="crearcapacitacion.jsp">Crear
							capacitaciones</a></li>
					<li><a class="dropdown-item" href="administrarasistentes.jsp">Administrar
							asistentes</a></li>
				</ul></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#"
				role="button" aria-expanded="false">Asesorias</a>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="listadoasesorias.jsp">Lista
							de asesorias</a></li>
					<li><a class="dropdown-item" href="crearasesorias.jsp">Crear
							asesoria</a></li>
					<li><a class="dropdown-item" href="listadovisitas.jsp">Visitas</a></li>
					<li><a class="dropdown-item" href="listadoaccidentes.jsp">Lista
							de accidentes</a></li>
				</ul></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#"
				role="button" aria-expanded="false">Pagos</a>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="listadopago.jsp">Lista
							de pagos</a></li>
					<li><a class="dropdown-item" href="crearpago.jsp">Crear
							pago</a></li>
				</ul></li>
			<li class="nav-item"><a class="nav-link" href="reportes.jsp">Reportes</a></li>
			<li class="nav-item"><a class="nav-link" href="Contacto">Contacto</a></li>
			<li class="nav-item"><a class="nav-link" href="LogOutServlet">Log Out</a></li>
		</ul>
	</nav>