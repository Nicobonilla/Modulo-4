package implementacion;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import conexion.Conexion;
import interfaces.IntUsuario;
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
				usu.setNombre(rs.getString("USERNOMBRE"));
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
	};
}
