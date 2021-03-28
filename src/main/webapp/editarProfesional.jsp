<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:include page="head.jsp">
	<jsp:param value="Lista de Usuarios" name="title" />
	<jsp:param value="Lista de Usuarios" name="titulo" />
</jsp:include>


<div class="principal">
        <br>
        <form >
            <ul>
             <li>
                <label for="runpro">RUN Profesional</label>
                <input type="text"  id="runpro" name="ingreso_runpro">
             </li>
             <br>
            <li>
                <label for="nombrepro">Nombres Profesional</label>
                <input type="text" id="nombrepro" name="ingreso_nombrespro">
            </li>
            <br>
            <li>
                <label for="apellidospro">Apellidos Profesional</label>
                <input type="text" id="apellidospro" name="ingreso_apellidospro">
            </li>
            <br>
            <li>
                <label for="telefonopro">Telefono Profesional</label>
                <input type="text"  id="Telefonopro" name="ingreso_telefonopro">
            </li>
            <br>
            <li>
                <label for="titulopro">Titulo Profesional</label>
                <input type="text"  id="titulopro" name="ingreso_titulopro">
            </li>
            <br>
            <li>
                <label for="Proyecto">Proyecto que desempeña</label>
                <input type="text"  id="proyecto" name="ingreso_proyecto">
            </li>
            <br>
            <br>
            <button style='margin-left: 50px;'  type="submit" class="btn btn-secondary">Modificar datos</button>
                <br>
                <br>
                <br>
         </form>
    </div>
    
 <jsp:include page="footer.jsp" ></jsp:include>