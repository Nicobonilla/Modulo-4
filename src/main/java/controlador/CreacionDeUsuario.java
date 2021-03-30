package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import implementacion.ImpIntUsuario;
import modelo.Administrativo;
import modelo.Cliente;
import modelo.Profesional;
import modelo.Usuario;

/**
 * Servlet implementation class CrearUsuario
 */
@WebServlet("/CreacionDeUsuario")
public class CreacionDeUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreacionDeUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }
    private static final void crearCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 Integer run = Integer.parseInt(request.getParameter("run"));  // run < 99.999.999 
    	 String nombres = request.getParameter("nombres"); 
    	 String apellidos = request.getParameter("apellidos"); 
    	 String telefono = request.getParameter("telefono");
    	 String afp = request.getParameter("afp"); 
    	 Integer sisSalud = Integer.parseInt(request.getParameter("sisSalud"));
    	 String direccion = request.getParameter("direccion"); 
    	 String comuna = request.getParameter("comuna");
    	 Integer edad = Integer.parseInt(request.getParameter("edad")); 
    	 
    	 Cliente cli = new Cliente( nombres, apellidos, telefono, afp, sisSalud,
    			 direccion, comuna, edad); String nombre, String feNac, Integer run, String nombres, 
    				String apellidos, String telefono, String afp, Integer sisSalud,
    				String direccion, String comuna, Integer edad)
    	 HttpSession sesion = request.getSession();
     	sesion.setAttribute("cli", cli);
    }
    private static final void crearProfesional(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String nombre = request.getParameter("nombre");
    	String fecha = request.getParameter("feNac");
    	Integer run = Integer.parseInt(request.getParameter("run"));
    	String feIngre = request.getParameter("feIngreso");
    	String titu = request.getParameter("titulo");
    	
    	Profesional pro = new Profesional(nombre, fecha, run , feIngre , titu);
    	HttpSession sesion = request.getSession();
    	sesion.setAttribute("pro", pro);
    	
    };
    
    private static final void crearAdministrativo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String nombre = request.getParameter("nombre");
    	String fecha = request.getParameter("feNac");
    	Integer run = Integer.parseInt(request.getParameter("run"));
    	String area = request.getParameter("area");
    	String expe = request.getParameter("experienciaPrevia");
    	
    	Administrativo adm = new Administrativo(nombre, fecha, run , area , expe);
    	HttpSession sesion = request.getSession();
    	sesion.setAttribute("adm", adm);
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tipo = request.getParameter("tipoUsuario");
		switch (tipo) {
		case "cli":
			
			break;
		case "pro":
			break
		case "adm":
			break;
		}
	}

}
