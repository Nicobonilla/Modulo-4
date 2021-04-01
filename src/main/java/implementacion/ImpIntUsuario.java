package implementacion;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import conexion.Conexion;
import interfaces.IntUsuario;
import modelo.Administrativo;
import modelo.Cliente;
import modelo.Profesional;
import modelo.Usuario;

public class ImpIntUsuario  extends Usuario  implements IntUsuario {

	@Override
	public List<Usuario> obtenerUsuarios(){
		List<Usuario> listadoUsuario = new ArrayList<Usuario>();
		try {
			//Paso 1: Obtener una conexión 
			Connection con = Conexion.conectar();
			//paso 2: crear objeto statement 
			Statement stmt=con.createStatement();
			//paso 3: ejecutar query 
			ResultSet rs = stmt.executeQuery ("SELECT * FROM USUARIO");
			//paso 4: leer resultado registro a registro 
			while (rs.next()) {
				Usuario usu =  new Usuario();
				usu.setNombres(rs.getString("USERNOMBRE"));
				usu.setFeNac( rs.getString("USERFENACI"));
				usu.setRun( rs.getInt("USERRUN"));
				listadoUsuario.add(usu);
			}
			//paso 5: cierra el objeto de conexión 
			//con.close();		
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return listadoUsuario;
	}
	
	
	
	/**
	 * La funcion ingresarUsuario permite ingresar los atributos de la clase 
	 * Usuario al sistema
	 * @return Retorna un objeto de clase Usuario
	 */
	
		@Override
		public boolean registrarUsuario(Usuario usuario){
			boolean registrar = false;
			Statement stmt = null;
			Connection con = null;
			String sql = "INSERT INTO USUARIO (USERNOMBRE, USERAPELLIDO, USERFENACI,"
					+ " USERRUN, TIPO_USUARIO) VALUES ('" 
					+ usuario.getNombres() + "','"
					+ usuario.getApellidos() + "','"
					+ usuario.getFeNac() + "',"
					+ usuario.getRun() + ",'"
					+ usuario.getTipoUsuario() + "')";
			try {
				con = Conexion.conectar();
				stmt = con.createStatement();
				stmt .execute(sql);
				registrar = true;
				stmt.close();
				//con.close();
			} catch (SQLException e) {
				System.out.println("Error: "
						+ " Clase ClienteDaoImpl, "
						+ "método registrar");
				e.printStackTrace();
			}
			return registrar;
		}
		/**
		 * La funcion ingresarCliente permite ingresar los atributos de la clase
		 * Cliente al sistema
		 * @param usuario. Objeto de la clase Usuario
		 * @return Retorna un objeto de la clase Cliente
		 */
		/*
		public boolean ingresarCliente(Usuario usuario) {
			boolean registrar = false;
			Statement stmt = null;
			Connection con = null;
			Cliente cli = new Cliente();
			String sql = "INSERT INTO CLIENTE ( run, nombreComple, telefono, afp, sisSalud, direccion, comuna, edad ) VALUES ("
					+ usuario.getRun() +  "','"
					+ usuario.obtenerNombreComple() +  "','"
					+ cli.getTelefono() +  "','"
					+ cli.getAfp() +  "','"
					+ cli.getSisSalud() +  "','"
					+ cli.getDireccion() +  "','"
					+ cli.getComuna() +  "','"
					+ cli.getEdad() +"'}";
			try {
				con = Conexion.conectar();
				stmt = con.createStatement();
				stmt .execute(sql);
				registrar = true;
				stmt.close();
			} catch (SQLException e) {
				System.out.println("Error: "
						+ " Clase ClienteDaoImpl, "
						+ "método registrar");
				e.printStackTrace();
			}
			return registrar;
		}
			
		/**
		 * El metodo ingresarProfesional permite ingresar los atributos de los usuarios
		 * Profesional al sistema
		 * @param Como parametro utiliza un objeto de la clase Usuario
		 * @return un objeto de clase Profesional
		 */
		/*
		public boolean ingresarProfesional(Usuario  usuario) {
			boolean registrar = false;
			Statement stmt = null;
			Connection con = null;
			Profesional pro = new Profesional();
			String sql = "INSERT INTO PROFESIONAL (run, nombre, apelludos, telefono, ttitulo, feIngreso ) VALUES ('"
					+ usuario.getRun() +  "','"
					+ pro.getTitulo() +  "','"
					+ pro.getFeIngreso() + "'}";
			try {
				con = Conexion.conectar();
				stmt = con.createStatement();
				stmt .execute(sql);
				registrar = true;
				stmt.close();
			} catch (SQLException e) {
				System.out.println("Error: "
						+ " Clase ClienteDaoImpl, "
						+ "método registrar");
				e.printStackTrace();
			}
			return registrar;
		}
	 	
*/	
}
