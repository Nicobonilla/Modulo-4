package login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginIngreso
 */
@WebServlet("/LoginIngreso")
public class LoginIngreso extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginIngreso() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession();
		String usuario = request.getParameter("usuario");
		String password = request.getParameter("password");
		// EJERCICIO GRUPAL 4
		if (usuario.equals("admin") && password.equals("1234")) {	
			sesion.setAttribute("usuario", usuario);
			sesion.setAttribute("password", password);
			RequestDispatcher rd=request.getRequestDispatcher("Contacto");
			rd.forward(request, response);
		} else{
			RequestDispatcher rd=request.getRequestDispatcher("Login");
			rd.forward(request, response);
		}
		
		
		// GRUPAL FINAL
		/*JBLogin bean = new JBLogin();
		bean.setIngreso_usuario(name);
		bean.setIngreso_contraseña(password);
		request.setAttribute("bean",bean);
		
		boolean status=bean.validate();
		
		if(status){

			RequestDispatcher rd=request.getRequestDispatcher("Contacto");
			rd.forward(request, response);
		}
		else{
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}*/
	}
}
