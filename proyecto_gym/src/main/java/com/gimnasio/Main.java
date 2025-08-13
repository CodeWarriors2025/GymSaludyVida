package com.proyecto;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

public class Main {
    public static void main(String[] args) {
        Connection conn = null;
        try {
            // 1. Conectar
            conn = ConexionBD.getConexion();
            
            // 2. Crear tabla si no existe
            Statement stmt = conn.createStatement();
            String createTableSQL = "CREATE TABLE IF NOT EXISTS miembros (" +
                                   "id INT AUTO_INCREMENT PRIMARY KEY," +
                                   "nombre VARCHAR(100)," +
                                   "email VARCHAR(100)," +
                                   "tipo_membresia VARCHAR(50))";
            stmt.executeUpdate(createTableSQL);
            
            // 3. Insertar dato de prueba
            String insertSQL = "INSERT INTO miembros (nombre, email, tipo_membresia) " +
                              "VALUES ('Ana López', 'ana@email.com', 'Premium')";
            stmt.executeUpdate(insertSQL);
            
            // 4. Consultar datos
            ResultSet rs = stmt.executeQuery("SELECT * FROM miembros");
            System.out.println("\n📊 Miembros registrados:");
            while (rs.next()) {
                System.out.println(
                    "ID: " + rs.getInt("id") + 
                    ", Nombre: " + rs.getString("nombre") +
                    ", Membresía: " + rs.getString("tipo_membresia")
                );
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConexionBD.closeConexion(conn);
        }
    }
}