package controlador;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Capacitacion;
import implementacion.*;
/**
 * Servlet implementation class CreacionDeCapPost
 */
@WebServlet("/CreacionDeCapPost")
public class CreacionDeCapPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreacionDeCapPost() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer idCapacitacion = Integer.parseInt(request.getParameter("idapacitacion")); // obligatorio, numero interno
		Integer rutCliente  =  Integer.parseInt(request.getParameter("rutCliente")) ; // obligatorio
		String dia = request.getParameter("dia"); // dia de la semana. Valor entre "Lunes" y "Domingo" (en ese formator)
		String hora = request.getParameter("hora"); // formato HH:MM ( hor entre 0 a 23, minutos 0 a 59 )
		String lugar = request.getParameter("lugar"); // obligatorio, min 10 car max 50
		String duracion = request.getParameter("duracion"); // max 70 car
		Integer cantidadAsistentes =  Integer.parseInt(request.getParameter("cantidadAsistentes")); // obligatorio, numero entero menor que 1000
		
		ImpIntCapacitacion cap = (ImpIntCapacitacion) new Capacitacion( idCapacitacion,
					rutCliente, dia,hora, lugar,duracion, cantidadAsistentes);
		cap.registrarCapacitacion(cap);
		RequestDispatcher rd=request.getRequestDispatcher("registroCapExistoso.jsp");
		rd.forward(request, response);
	}

}
