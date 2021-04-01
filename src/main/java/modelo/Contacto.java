package modelo;

public class Contacto {

	String nombre;
	String correo;
	String telefono;
	String mensaje;
	
	public Contacto(String nombre, String correo, String telefono, String mensaje) {
		super();
		this.nombre = nombre;
		this.correo = correo;
		this.telefono = telefono;
		this.mensaje = mensaje;
	}

	public void desplegarPorConsola(Contacto cont) {
		System.out.println( "Nombre: "+ getNombre());
		System.out.println( "E-mail: "+ getCorreo());
		System.out.println( "Teléfono: "+ getTelefono() );
		System.out.println( "Mensaje: "+ getMensaje());
		
	}
	
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}
	
	
}
