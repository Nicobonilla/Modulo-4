package interfaces;

import java.util.List;

import modelo.Administrativo;
import modelo.Usuario;

public interface IntAdministrativo {
	public  List<Usuario> obtenerUsuarios(); // VER - RECIBE OBJETO DE TIPO CAPACITACION Y LO REGISTRE EN SISTEMA ( NO SE PIDE ALMACENAR AUN)
	public boolean registrarUsuario(Administrativo adm);

}
