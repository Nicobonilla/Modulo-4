package implementacion;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;
import modelo.Capacitacion;
import interfaces.IntCapacitacion;
import conexion.Conexion;

public class ImpIntCapacitacion extends Capacitacion  implements IntCapacitacion{
	
	/*@Override
	public List<Capacitacion>  retornaListaCapacitacion() { // ver - RETORNA UNA LISTA DE OBJETOS DE TIPO CAPACITACION, NO RECIBE PARAMETROS
		List<Capacitacion> listadoCapacitacion = new ArrayList<Capacitacion>();
		Capacitacion capacitacion1 = new Capacitacion( 1, 11111111, "Lunes", "11:00", "Oficina", "120", 10);
		Capacitacion capacitacion2 = new Capacitacion( 2, 22222222, "Martes", "12:00", "Oficina", "120", 10);
		Capacitacion capacitacion3= new Capacitacion( 3, 33333333, "Miercoles", "13:00", "Oficina", "120", 10);
		listadoCapacitacion.add(capacitacion1);
		listadoCapacitacion.add(capacitacion2);
		listadoCapacitacion.add(capacitacion3);
		return listadoCapacitacion;
	}; */

	@Override
	public List<Capacitacion> obtenerCapacitaciones() {
		List<Capacitacion> listadoCapacitacion = new ArrayList<Capacitacion>();
		//Capacitacion capacitacion = (ImpIntCapacitacion) new ImpIntCapacitacion();
		//Capacitacion capacitacion =  new Capacitacion();
		//Capacitacion capacitacion= new Capacitacion(); // idcap, rutcli, fecha, hora, lugar, min, cant
		try {
			//Paso 1: Obtener una conexión 
			Connection con = Conexion.conectar();
			//paso 2: crear objeto statement 
			Statement stmt=con.createStatement();
			//paso 3: ejecutar query 
			ResultSet rs = stmt.executeQuery ("SELECT * FROM CAPACITACION");
			//paso 4: leer resultado registro a registro 
			while (rs.next()) {
				Capacitacion cap =  new Capacitacion();
				cap.setIdCapacitacion(rs.getInt("IDCAPACITACION"));
				cap.setRutCliente( rs.getInt("CLIENTE_RUTCLIENTE"));
				cap.setDia( rs.getString("CAPFECHA"));
				cap.setHora( rs.getString("CAPHORA"));
				cap.setLugar( rs.getString("CAPLUGAR"));
				cap.setDuracion( rs.getString("CAPDURACION"));
				cap.setCantidadAsistentes( rs.getInt("ASISTENTES"));
				listadoCapacitacion.add(cap);
			}
			//paso 5: cierra el objeto de conexión 
			//con.close();		
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return listadoCapacitacion;
	}; // VER - RECIBE OBJETO DE TIPO CAPACITACION Y LO REGISTRE EN SISTEMA ( NO SE PIDE ALMACENAR AUN)

	@Override
	public void registrarCapacitacion(Capacitacion capacitacion) {
		System.out.println(capacitacion.toString());
	}; // VER - RECIBE OBJETO DE TIPO CAPACITACION Y LO REGISTRE EN SISTEMA ( NO SE PIDE ALMACENAR AUN)


}
