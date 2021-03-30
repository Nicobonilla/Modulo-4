package modelo;

import java.util.*;


public class Usuario {
	//----------------------------------------------------------------------------
	// ATRIBUTOS
	//----------------------------------------------------------------------------
	private String nombre;  // obligatorio, min 10 car max 50
	private String feNac; //obligaatorio, data o string no matter, DD/MM/AAAA
	private Integer run; // run < 99.999.999	
	private Integer tipoUsuario;
	
	//----------------------------------------------------------------------------
	// CONSTRUCTORES
	//----------------------------------------------------------------------------


	public Usuario() {
	}
	// EL CONSTRUCTOR MINIMO CON SUS ATRIBUTOS OBLIGATORIOS
	public Usuario(String nombre, String feNac) {
		this.nombre = nombre;
		this.feNac = feNac;
	}
	// CONSTRUCTOR COMPLETO
	public Usuario(String nombre, String feNac, Integer run) {
		this.nombre = nombre;
		this.feNac = feNac;
		this.run = run;
	}
	// TO STRING
	@Override
	public String toString() {
		return "Usuario [nombre=" + nombre + ", feNac=" + feNac + ", run=" + run + "]";
	}
	
	//----------------------------------------------------------------------------
	// METODOS
	//----------------------------------------------------------------------------
	
	// MOSTRAR
	public void mostrar() {
		System.out.println("Usuario[ Nombre:"+ getNombre() +", Fecha de Nacimiento: "+ getFeNac()+ ", RUN: "+ getRun()+ "]");
		}
	// MOSTRAR EDAD
	public void mostrarEdad() {
		String[] fechas = new String[3];
		fechas = getFeNac().split("/");
		Integer añoNacimiento = Integer.parseInt(fechas[0]);
		Calendar now = Calendar.getInstance();
		Integer añoActual = now.get(Calendar.YEAR);
		System.out.println("El usuario tiene "+( añoActual - añoNacimiento) +" años"); 
	}
	// GETTERS AND SETTERS
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) { 
		this.nombre = nombre;
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

	public Integer getTipoUsuario() {
		return tipoUsuario;
	}
	public void setTipoUsuario(Integer tipoUsuario) {
		this.tipoUsuario = tipoUsuario;
	}
}
