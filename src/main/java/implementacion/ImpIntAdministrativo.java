package implementacion;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import conexion.Conexion;
import interfaces.IntUsuario;
import modelo.Administrativo;
import modelo.Usuario;

public class ImpIntAdministrativo implements IntUsuario {

	/*El metodo ingresarAdministrativo permite ingresar los atributos de los usuarios
	 * Administrativo al sistema
	 * @param Como parametro utiliza un objeto de la clase Usuario
	 * @return un objeto de clase Administrativo
	 */
	
	
	@Override
	public boolean registrarUsuario(Administrativo adm ) {
		boolean registrar = false;
		Statement stmt = null;
		Connection con = null;
		
		String sql = "INSERT INTO ADMINISTRATIVO ( RUNADM, "
				+ "ADMCORREO,ADMAREA ) VALUES ("
				+ adm.getRun() + ",'"
				+ adm.getCorreo() + "','"
				+ adm.getArea() + "')";
		try {
			con = Conexion.conectar();
			stmt = con.createStatement();
			stmt.execute(sql);
			registrar = true;
			stmt.close();
			con.close();
		} catch (SQLException e) {
			System.out.println("Error: "
					+ " Clase ClienteDaoImpl, "
					+ "método registrar");
			e.printStackTrace();
		}
		return registrar;
	}
	
	//@Override
	public List<Usuario> obtenerUsuarios(){ // VER - RECIBE OBJETO DE TIPO CAPACITACION Y LO REGISTRE EN SISTEMA ( NO SE PIDE ALMACENAR AUN)
		List<Usuario> lista = new List<Usuario> ;
		return lista;
	}
	
	
	
}
