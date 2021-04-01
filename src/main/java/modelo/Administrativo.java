package modelo;

/**
 * La clase Administrativo es clase hija de Usuarios.
 * @author nbnla
 *
 */
public class Administrativo extends Usuario  {
	//----------------------------------------------------------------------------
	// ATRIBUTOS
	//----------------------------------------------------------------------------
	private String runAdm;
	private String correo; // min 5 car, max 20
	private String area; // max 100 car

	//----------------------------------------------------------------------------
	// CONSTRUCTORES
	//----------------------------------------------------------------------------
	
	
	
	
	public Administrativo () {
		super();
	}
	
	public Administrativo(String runAdm, String correo, String area) {
		super();
		this.runAdm = runAdm;
		this.correo = correo;
		this.area = area;
	}

	// MINIMO CON CLASE PADRE
	public Administrativo(String nombres, String apellidos, String feNac, Integer run, String tipoUsuario) {
		super(nombres, apellidos, feNac, run, tipoUsuario);
		// TODO Auto-generated constructor stub
	}
	
	public Administrativo(String nombres, String apellidos, String feNac, Integer run, String tipoUsuario,
			String runAdm, String correo, String area) {
		super(nombres, apellidos, feNac, run, tipoUsuario);
		this.runAdm = runAdm;
		this.correo = correo;
		this.area = area;
	}

	@Override
	public String toString() {
		return "Administrativo [ correo =" + correo + ", area =" + area +"]";
	}
	//----------------------------------------------------------------------------
	// IMPLEMENTACION INTERFACE ASESORIA
	//----------------------------------------------------------------------------
	/*@Override
	public void analizarUsuario() {
		System.out.println("TIPO DE USUARIO: ADMINISTRATIVO");
		System.out.println("Área="+ getArea()+ ", Experiencia Previa="+ getExperienciaPrevia());
	}*/
	//----------------------------------------------------------------------------
	// METODOS
	//----------------------------------------------------------------------------
	// MOSTRAR
	public void mostrar() {
		super.mostrar();
		System.out.println(" ADM [ Correo: "+ getCorreo()+ ", Area: "+ getArea()+ " ]");
	}

	public String getRunAdm() {
		return runAdm;
	}

	public void setRunAdm(String runAdm) {
		this.runAdm = runAdm;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

}