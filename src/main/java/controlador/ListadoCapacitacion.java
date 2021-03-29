package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import implementacion.ImpIntCapacitacion;
import modelo.Capacitacion;

/**
 * Servlet implementation class ListarCapacitacion
 */
@WebServlet("/ListadoCapacitacion")
public class ListadoCapacitacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListadoCapacitacion() {
        super();
        // TODO Auto-generated constructor stub
    }
    private static final void listaCapacitacion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	ImpIntCapacitacion impIntCap = new ImpIntCapacitacion();
		List<Capacitacion> listaCap = impIntCap.obtenerCapacitaciones();
		request.setAttribute("listadoCapacitacion", listaCap );
		request.getRequestDispatcher("listarCapacitaciones.jsp").include(request, response);
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession sesion = request.getSession();
		Object usuario = (String) sesion.getAttribute("usuario");
		if (usuario != null) {
			listaCapacitacion(request, response);
			request.getRequestDispatcher("listarCapacitaciones.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
