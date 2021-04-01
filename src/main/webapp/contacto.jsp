<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:include page="head.jsp">
	<jsp:param value="Contacto" name="title"/>
	<jsp:param value="Contacto" name="titulo"/>
</jsp:include>

<main >
	<div class="row">
		<div class="col">
			<div class="container-fluid col-10 col-xl-10 mx-auto in-line">
				<form action = "ContactoPost" method = "post" id="contacto">
					<label >Nombre:
						<input type="text" name="nombre">
					</label> 
					<label >E-mail:
						<input type="text" name="correo">
					</label>
					<label>Telefono:
						<input type="text" name="telefono"> 
					</label> 
					<label>Mensaje: 	
						<textarea name="mensaje"></textarea>
					</label>
					<button style= "btn btn-primary" type="submit">Enviar</button>
				</form>
			</div>
		</div>
	</div>


</main>
<jsp:include page="footer.jsp"></jsp:include>
