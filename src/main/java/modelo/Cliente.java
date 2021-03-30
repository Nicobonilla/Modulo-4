package modelo;
/**
 * La clase Cliente es clase hija de Usuarios.
 * @author nbnla
 *
 */
public class Cliente extends Usuario{
	//----------------------------------------------------------------------------
	// ATRIBUTOS
	//----------------------------------------------------------------------------
	private String nombre;
	private String Apellidos;
	private String feNac;
	private Integer run;
	private String telefono; // obligatorio
	private String afp; // min 4 car, max 30
	private Integer sisSalud; // 1 : Fonasa ; 2 : Isapre
	private String direccion; // max 70 car
	private String comuna; // max 40 car
	private Integer edad; // obligatorio, n >= 0 && n < 150

	//----------------------------------------------------------------------------
	// CONSTRUCTORES
	//----------------------------------------------------------------------------

	public Cliente() {
		super();
	}
	// CONSTRUCTOR MÍNIMO, INCLUYE SU CLASE PADRE: USUARIO, 
	//Y LOS ATRIBUTOS OBLIGATORIOS
	public Cliente(String nombre, String feNac, Integer run, String nombres, 
			String apellidos, String telefono, Integer edad) {
		super( nombre, feNac, run);
			this.telefono = telefono;
			this.edad = edad;
		}

	
	// COMPLETO
	public Cliente(String nombre, String feNac, Integer run, String telefono,  String afp, Integer sisSalud,
			String direccion, String comuna, Integer edad) {
		super( nombre, feNac, run);
		this.telefono = telefono;
		this.afp = afp;
		this.sisSalud = sisSalud;
		this.direccion = direccion;
		this.comuna = comuna;
		this.edad = edad;
	}
	// TO STRING
	@Override
	public String toString() {
		return "Cliente [ rut="  + run + ", nombres=" + nombre  + ", telefono=" + 
					telefono+ ", afp=" + afp + ", sisSalud="
				+ sisSalud + ", direccion=" + direccion + ", comuna=" + comuna
				+ ", edad=" + edad + "]";
	}
	//----------------------------------------------------------------------------
	// IMPLEMENTACION INTERFACE ASESORIA
	//----------------------------------------------------------------------------
/*
	public void analizarUsuario() { 	
	super.analizarUsuario();
		System.out.println("TIPO DE USUARIO: CLIENTE");
		System.out.println( "Dirección="+ getDireccion()+ ", Comuna="+ getComuna() + " ]");
	}*/
	//----------------------------------------------------------------------------
	// METODOS
	//----------------------------------------------------------------------------
	
	// MOSTRAR
	public void mostrar() {
		super.mostrar();
		System.out.println("CLIENTE[ RUT: "+ getRun()+ "Nombres: "+ getNombre()+ "Nombres: "+ getFeNac()+
				", Telefono: "+ getTelefono()+ ", AFP: "+ getAfp()+", Sistema de Salud: "+ getSisSalud()+
				", Dirección"+ getDireccion()+ ", Comuna: "+ getComuna()+ ", Edad: "+ getEdad());
		}
	// OBTENER NOMBRE: Obtiene Nombre y Apellidos del cliente
	public String obtenerNombre() {
		return getNombre()+ " "+ getApellidos();
	}	
	// OBTENER SISTEMA DE SALUD: Despliega el tipo de Sistema de Salud del Cliente
	public String obtenerSistemaSalud( Integer sisSalud ) {
		String respuesta = "";
		boolean repetir ;
		do {
			if (sisSalud == 1) {
				respuesta = "Fonasa";
				repetir = false;
			} else if ( sisSalud == 2) {
				respuesta = "Isapre";
				repetir = false;
			} else {
				System.out.println(" Debe ingresar una opción válida");
				repetir = true;
			}
		} while ( repetir );
		return respuesta;
	}
	

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getFeNac() {
		return nombre;
	}

	public void setFeNac(String feNac) {
		this.feNac = feNac;
	}
	public Integer getRun() {
		return run;
	}

	public void setRun(Integer run) {
		this.run = run;
	}
	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getAfp() {
		return afp;
	}

	public void setAfp(String afp) {
		this.afp = afp;
	}

	public Integer getSisSalud() {
		return sisSalud;
	}

	public void setSisSalud(Integer sisSalud) {
		this.sisSalud = sisSalud;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getComuna() {
		return comuna;
	}

	public void setComuna(String comuna) {
		this.comuna = comuna;
	}

	public Integer getEdad() {
		return edad;
	}

	public void setEdad(Integer edad) {
		this.edad = edad;
	}

}
