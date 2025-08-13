package com.proyecto;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBD {
    // Configura estos valores según tu MySQL
    private static final String URL = "jdbc:mysql://localhost:3306/gimnasio";
    private static final String USER = "root";
    private static final String PASS = "admin123"; // Tu contraseña de MySQL

    public static Connection getConexion() {
        Connection conn = null;
        try {
            // 1. Registrar el driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // 2. Obtener conexión
            conn = DriverManager.getConnection(URL, USER, PASS);
            System.out.println("✅ Conexión exitosa a gimnasio");
            
        } catch (ClassNotFoundException e) {
            System.out.println("❌ Error: Driver no encontrado");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("❌ Error al conectar con MySQL");
            e.printStackTrace();
        }
        return conn;
    }

    public static void closeConexion(Connection conn) {
        try {
            if (conn != null) conn.close();
            System.out.println("🔌 Conexión cerrada");
        } catch (SQLException e) {
            System.out.println("❌ Error al cerrar conexión");
            e.printStackTrace();
        }
    }
}