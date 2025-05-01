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
public class UpdateExampleGymJDBC {

    public static void main(String[] args) {
        
        String usuario = "root";
        String password = "0000";
        String url = "jdbc:mysql://localhost:3306/gimnasio";
        
        try (Connection conexion = DriverManager.getConnection(url, usuario, password);
             Statement statement = conexion.createStatement()) {
            
            // Registrar el driver (no necesario desde JDBC 4.0)
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Insertar datos
            statement.executeUpdate("DELETE FROM ASOCIADAS WHERE NOMBRE = 'Sonia Sanchez'");
            
            // Consultar datos
            try (ResultSet rs = statement.executeQuery("SELECT * FROM ASOCIADAS")) {
                while (rs.next()) {
                    // Procesar cada fila aquí
                    System.out.println(rs.getString("Nombre"));
                }
            }
            
        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace();
        
