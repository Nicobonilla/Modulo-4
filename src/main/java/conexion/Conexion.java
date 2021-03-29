package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import modelo.Capacitacion;

public class Conexion {

	// Propiedades 
	private static Connection conn = null;
	private static Capacitacion cap = null;
	
	// Constructor 
	private Conexion() {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";	
		String driver = "oracle.jdbc.driver.OracleDriver";
		String usuario = "SYSTEM";
		String password = "123123";
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection (url, usuario, password);
		} catch (ClassNotFoundException e) {
			System.out.println("Error: " + e.getMessage());
			e.printStackTrace();
		} catch (SQLException e) {
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	// Métodos 
	public static Connection conectar() {
		if (conn == null) {
			new Conexion();
		}
		System.out.println("conn(2): " + conn.toString() );
		try {
			System.out.println("conn(2): " + conn.getSchema() );
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
}
