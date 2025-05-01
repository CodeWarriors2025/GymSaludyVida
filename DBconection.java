/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package conectiondbgym;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author anend
 */
public class DBconection {
   
    
    public static void main(String[] args)
            {
        String usuario="root";
        String password="0000";
        String url="jdbc:mysql://localhost:3306/gimnasio";
        Connection conexion;
        Statement statement;
        ResultSet rs;
        
        
       try {
           Class.forName("com.mysql.cj.jdbc.Driver");
       } catch (ClassNotFoundException ex) {
           Logger.getLogger(DBconection.class.getName()).log(Level.SEVERE, null, ex);
       }
        try {
            conexion = DriverManager.getConnection(url, usuario, password);
            statement = conexion.createStatement();
            rs = statement.executeQuery("Select * From asociadas");
            rs.next();
            do{
                system.out.println(rs.getInt("Identificacion")+" : "+rs.getString("Nombre"));
            }while(rs.next());
        } catch (SQLException ex) {
            Logger.getLogger(DBconection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
