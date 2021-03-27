<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:include page="head.jsp">
	<jsp:param value="Contacto" name="title"/>
	<jsp:param value="Contacto" name="titulo"/>
</jsp:include>

<main class="principal">
	<form>
		<br>
		<ul>
			<li><label for="nombreu">Nombre:</label> <input class="form"
				type="text" id="nombreu" name="ingreso_nombre"></li>
			<li><label for="correo">Correo electronico:</label> <input
				class="form" type="text" id="correo" name="ingreso_correo">
			</li>
			<li><label for="telefono">Telefono:</label> <input class="form"
				type="tel" id="telefono" name="telefono_usuario"></li>
			<li><label for="mensaje">Mensaje:</label> <textarea class="form"
					id="mensaje" name="mensaje_usuario"></textarea></li>
		</ul>
		<button style='margin-left: 300px;' type="submit">Enviar</button>
	</form>
	<br> <br>
</main>
<br>
<footer class="pie"> ® Derechos reservados 2021 </footer>
</body>
</html>