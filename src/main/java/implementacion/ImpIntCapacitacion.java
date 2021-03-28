package implementacion;

import java.util.*;
import modelo.Capacitacion;
import interfaces.IntCapacitacion;

public class ImpIntCapacitacion extends Capacitacion  implements IntCapacitacion{
	@Override
	public List<Capacitacion>  retornaListaCapacitacion() { // ver - RETORNA UNA LISTA DE OBJETOS DE TIPO CAPACITACION, NO RECIBE PARAMETROS
		List<Capacitacion> listadoCapacitacion = new ArrayList<Capacitacion>();
		Capacitacion capacitacion1 = new Capacitacion( 1, 11111111, "Lunes", "11:00", "Oficina", "120", 10);
		Capacitacion capacitacion2 = new Capacitacion( 2, 22222222, "Martes", "12:00", "Oficina", "120", 10);
		Capacitacion capacitacion3= new Capacitacion( 3, 33333333, "Miercoles", "13:00", "Oficina", "120", 10);
		listadoCapacitacion.add(capacitacion1);
		listadoCapacitacion.add(capacitacion2);
		listadoCapacitacion.add(capacitacion3);
		return listadoCapacitacion;
	}; 
	
	@Override
	public void recibeCapacitacion(Capacitacion capacitacion) {
		System.out.println(capacitacion.toString());
	}; // VER - RECIBE OBJETO DE TIPO CAPACITACION Y LO REGISTRE EN SISTEMA ( NO SE PIDE ALMACENAR AUN)
}
