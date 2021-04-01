package interfaces;

import java.util.List;

import modelo.Administrativo;
import modelo.Cliente;
import modelo.Profesional;
import modelo.Usuario;

public interface IntUsuario {
	
	public  List<Usuario> obtenerUsuarios(); // VER - RECIBE OBJETO DE TIPO CAPACITACION Y LO REGISTRE EN SISTEMA ( NO SE PIDE ALMACENAR AUN)
	
	
	public boolean registrarUsuario(Usuario usuario);
	/*public boolean registrarUsuario(Cliente cli);
	public boolean registrarUsuario(Profesional pro);
	public boolean registrarUsuario(Administrativo adm); */

	
	
}
