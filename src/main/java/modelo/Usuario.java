package modelo;

import java.util.*;


public class Usuario {
	//----------------------------------------------------------------------------
	// ATRIBUTOS
	//----------------------------------------------------------------------------
	protected String nombres;  // obligatorio, min 10 car max 50
	protected String apellidos;
	protected String feNac; //obligaatorio, data o string no matter, DD/MM/AAAA
	protected Integer run; // run < 99.999.999	
	protected String tipoUsuario;
	
	//----------------------------------------------------------------------------
	// CONSTRUCTORES
	//----------------------------------------------------------------------------

	public Usuario() {
	}
	// EL CONSTRUCTOR MINIMO CON SUS ATRIBUTOS OBLIGATORIOS
	public Usuario(String nombres, String apellidos, Integer run) {
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.run = run;
	}
	// CONSTRUCTOR COMPLETO
	public Usuario(String nombres, String apellidos, String feNac, Integer run, String tipoUsuario) {
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.feNac = feNac;
		this.run = run;
		this.tipoUsuario = tipoUsuario;
	}
	// TO STRING
	@Override
	public String toString() {
		return "Usuario [nombres=" + nombres + ", apellidos=" + apellidos +
				", feNac=" + feNac + ", run=" + run + "]";
	}
	
	//----------------------------------------------------------------------------
	// METODOS
	//----------------------------------------------------------------------------
	
	// MOSTRAR
	public void mostrar() {
		System.out.println("Usuario[ Nombre:"+ getNombres() +", Fecha de Nacimiento: "+ getFeNac()+ ", RUN: "+ getRun()+ "]");
		}
	// MOSTRAR EDAD
	public void mostrarEdad() {
		String[] fechas = new String[3];
		fechas = getFeNac().split("-");
		Integer añoNacimiento = Integer.parseInt(fechas[0]);
		Calendar now = Calendar.getInstance();
		Integer añoActual = now.get(Calendar.YEAR);
		System.out.println("El usuario tiene "+( añoActual - añoNacimiento) +" años"); 
	}
	
	public String obtenerNombreComple() {
		String nombre = "";
		nombre = getNombres()+ " "+ getApellidos();
		return nombre;
	}	
	
	// GETTERS AND SETTERS
	
	
	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) { 
		this.nombres = nombres;
	}
	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) { 
		this.apellidos = apellidos;
	}

	public String getFeNac() {
		return feNac;
	}

	public void setFeNac(String feNac) { 
		this.feNac = feNac;
	}
	
	public Integer getRun() {
		return run;
	}

	public void setRun(Integer run) {
		this.run = run;
	}
	
	public String getTipoUsuario() {
		return tipoUsuario;
	}
	public void setTipoUsuario(String tipoUsuario) {
		this.tipoUsuario = tipoUsuario;
	}
}
