package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import implementacion.ImpIntUsuario;
import modelo.Usuario;

/**
 * Servlet implementation class ListadoUsuario
 */
@WebServlet("/ListadoUsuario")
public class ListadoUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListadoUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }
    private static final void listaUsuarios(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	ImpIntUsuario impIntUsu = new ImpIntUsuario();
		List<Usuario> listaUsu = impIntUsu.obtenerUsuarios();
		request.setAttribute("listadoUsuario", listaUsu );
		request.getRequestDispatcher("listaDeUsuarios.jsp").include(request, response);
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession();
		Object usuario = (String) sesion.getAttribute("usuario");
		if (usuario != null) {
			listaUsuarios(request, response);
			request.getRequestDispatcher("listaDeUsuarios.jsp").forward(request, response);
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
