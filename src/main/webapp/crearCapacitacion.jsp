<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="head.jsp">
	<jsp:param value="Contacto" name="title"/>
	<jsp:param value="Contacto" name="titulo"/>
</jsp:include>

<main class="principal">
		<form class = "" action ="" method = "post">
				<label for="nombreu">Nombre cliente:</label>
				<input type="text" id="nombreu" name="ingreso_nombre">
				<label for="Fecha">Fecha capacitación:</label>
				<input type="date" id="Fecha" name="ingreso_fecha">
				<label for="hora">Hora capacitación:</label> 
				<input type="time" id="hora" name="ingreso_hora">
				<label for="lugar">Lugar capacitación:</label> 
				<input type="text" id="lugar" name="ingreso_lugar">
				<label for="duracion">Duración en minutos:</label> 
				<input type="number" id="duracion" name="ingreso_duracion">
				<label for="duracion">Duración en minutos:</label> 
				<input type="number" id="duracion" name="ingreso_duracion">
			<button style='margin-left: 50px;' type="submit" value= "capacitacion">Crear capacitación</button>
		</form>
</main>

<jsp:include page="footer.jsp"></jsp:include>
Integer setIdCapacitacion = 1;// += ultimo;
		Integer rutCliente = entrada.nextInt();
		String dia = entrada.next();			// VALIDACION DIA DE LA SEMANA
		String hora = entrada.next();	// VALIDACION HORA
		String lugar = entrada.nextLine();
		String duracion = entrada.next();
		Integer cantidadAsistentes = entrada.nextInt();