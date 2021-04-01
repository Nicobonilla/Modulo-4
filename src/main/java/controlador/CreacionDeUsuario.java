package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import implementacion.ImpIntAdministrativo;
import implementacion.ImpIntUsuario;
import interfaces.IntUsuario;
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

    	//USUARIO
   	 	String nombres = request.getParameter("nombres");
		 String apellidos = request.getParameter("apellidos");
		 String feNac = request.getParameter("feNac");
		 Integer run = Integer.parseInt(request.getParameter("run"));  // run < 99.999.999 
		 String tipoUsuario = request.getParameter("tipoUsuario");
		
		/* IntUsuario usuDao = new ImpIntUsuario();
		 Usuario usu = new Usuario(nombres, apellidos, feNac, run, tipoUsuario);
		 usuDao.registrarUsuario(usu);*/

		 // CLIENTE
		String telefono = request.getParameter("telefono");
		String afp = request.getParameter("afp");
		Integer sisSalud = Integer.parseInt(request.getParameter("sisSalud"));
		String direccion = request.getParameter("direccion");
		String comuna = request.getParameter("comuna");
		Integer edad = Integer.parseInt(request.getParameter("edad")); 

		// PROFESIONAL
    	
  
    	// ADMINISTRATIVO
    	
    	String correo = request.getParameter("correo");
		String area = request.getParameter("area");
		
		
		
		switch (tipoUsuario) {
		/*case "Cliente":
			ImpIntUsuario cliDao = new ImpIntCliente);
			Cliente cli = new Cliente( nombres, apellidos, run, telefono, afp, sisSalud, direccion, comuna, edad);
			cliDao.registrarUsuario(cli);
			break;
		case "Profesional":
		
			break;*/
		case "Administrativo":
		
			/* Usuario usu = new Usuario(nombres, apellidos, feNac, run, tipoUsuario);*/
	
			
			
			Administrativo adm = new Administrativo();
			adm.setCorreo(area);
			adm.setArea(correo);
			
			/*IntUsuario admDao = new ImpIntAdministrativo();*/
			ImpIntAdministrativo admDao = new ImpIntAdministrativo();
			admDao.registrarUsuario(adm);
			break;
	}
		RequestDispatcher rd=request.getRequestDispatcher("ListadoUsuario");
		rd.forward(request, response);
	}
}


