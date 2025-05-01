/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package conectiondbgym;

import java.sql.*;


/**
 *
 * @author anend
 */
public class DeleteExampleGymJDBC {

    public static void main(String[] args) {
        
        String usuario = "root";
        String password = "0000";
        String url = "jdbc:mysql://localhost:3306/gimnasio";
        
        try (Connection conexion = DriverManager.getConnection(url, usuario, password);
             Statement statement = conexion.createStatement()) {
            
            // Registrar el driver (no necesario desde JDBC 4.0)
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Insertar datos
            statement.executeUpdate(
                "INSERT INTO asociadas (Identificacion, Nombre, Direccion, Email, Numero_de_contacto, EPS, Estatura, Peso_Corporal) " +
                "VALUES (50123456, 'Patricia Gomez Ramirez', 'Cra 124 # 120-51 -30', 'patogora.89@gmail.com', '32012234567', 'Famisanar', 1.69, 60)");
            
            // Consultar datos
            try (ResultSet rs = statement.executeQuery("SELECT * FROM ASOCIADAS")) {
                while (rs.next()) {
                    // Procesar cada fila aquí
                    System.out.println(rs.getString("Nombre"));
                }
            }
            
        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace();
        }
    }
}
