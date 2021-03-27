package login;

public class JBLogin {
	
	private String ingreso_usuario;
	private String ingreso_contraseña;
	
	public String getIngreso_usuario() {
		return ingreso_usuario;
	}
	public void setIngreso_usuario(String ingreso_usuario) {
		this.ingreso_usuario = ingreso_usuario;
	}
	public String getIngreso_contraseña() {
		return ingreso_contraseña;
	}
	public void setIngreso_contraseña(String ingreso_contraseña) {
		this.ingreso_contraseña = ingreso_contraseña;
	}
	
	public boolean validate() {
		if ( ingreso_usuario.equals("admin") && ingreso_contraseña.equals("1234")) {
			return true;
		} else {
			return false;
		}
	}
	
	
}
