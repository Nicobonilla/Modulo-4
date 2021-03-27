<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear capacitación</title>
    
    <style type="text/css">
       	<%@ include file = "css/estilos.css" %>
     </style>
</head>

<body>
    <header class="cabecera">
        <br>
        <h1>Formulario para crear capacitación</h1>
        <br>
    </header>
    <br>
    
    <jsp:include page="menu.jsp"></jsp:include>
    
    <br>
    <main class="principal">
        <br>
        <form >
            <ul>
            <li>
                <label for="nombreu">Nombre cliente:</label>
                <input class="form" type="text" id="nombreu" name="ingreso_nombre">
            </li>
            <li>
                <label for="Fecha">Fecha capacitación:</label>
                <input class="form" type="date"  id="Fecha" name="ingreso_fecha">
            </li>
            <li>
                <label for="hora">Hora capacitación:</label>
                <input class="form" type="time"  id="hora" name="ingreso_hora">
            </li>
            <li>
                <label for="lugar">Lugar capacitación:</label>
                <input class="form" type="text" id="lugar" name="ingreso_lugar">
            </li>
            <li>
                <label for="duracion">Duración en minutos:</label>
                <input class="form" type="number" id="duracion" name="ingreso_duracion">
            </li>
            </ul> 
            <button style='margin-left: 50px;'  type="submit">Crear capacitación</button>
                <br>
                <br>
                <br>
         </form>
         
      
    </main>
    <br>
    
    <footer class="pie">
® Derechos reservados 2021
    </footer>
    
        
</body>
</html>