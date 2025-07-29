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
public class DBconection {
   static String url="jdbc:mysql://localhost:3306/gimnasio";
   static String user="root";
   static String pass="0000";
    
    public static Connection conectar()
    {
        Connection con=null;
        try
        {
         con=DriverManager.getConnection(url,user,pass);
            System.out.println("Conexion Exitosa");
        }catch(SQLException e)
        {
        e.printStackTrace();
        }
        
        return con;
    }
}
