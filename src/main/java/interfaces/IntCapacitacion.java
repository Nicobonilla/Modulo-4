package interfaces;

import java.util.List;
import modelo.Capacitacion;

public interface IntCapacitacion {
	public void recibeCapacitacion(Capacitacion capacitacion); // VER - RECIBE OBJETO DE TIPO CAPACITACION Y LO REGISTRE EN SISTEMA ( NO SE PIDE ALMACENAR AUN)
	public List<Capacitacion> retornaListaCapacitacion(); // ver - RETORNA UNA LISTA DE OBJETOS DE TIPO CAPACITACION, NO RECIBE PARAMETROS
	}
