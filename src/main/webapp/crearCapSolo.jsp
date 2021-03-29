<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
</br>
<h2> Crear Capacitación</h2>
	<div class="principal">
		<form class = "" action ="CreacionDeCapPost" method = "post">
				<label for="nombreu">ID Capacitación:</label>
				<input type="text" id="nombreu" name="idCapacitacion">
				<label for="nombreu">Rut Cliente:</label>
				<input type="text" id="nombreu" name="rutCliente">
				<label for="Fecha">Día:</label>
				<input type="date" id="Fecha" name="dia">
				<label for="hora">Hora:</label> 
				<input type="time" id="hora" name="hora">
				<label for="lugar">Lugar:</label> 
				<input type="text" id="lugar" name="lugar">
				<label for="duracion">Duración (min):</label> 
				<input type="number" id="duracion" name="duracion">
				<label for="duracion">Cantidad Asistentes:</label> 
				<input type="number" id="duracion" name="cantidadAsistentes">
			<button style='margin-left: 50px;' type="submit">Crear capacitación</button>
		</form>
		</div>

