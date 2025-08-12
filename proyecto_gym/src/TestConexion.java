import java.sql.Connection;
import java.sql.DriverManager;

public class TestConexion {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/gimnasio";
        String user = "root";
        String password = "admin123"; // Tu contraseña

        try (Connection conn = DriverManager.getConnection(url, user, password)) {
            System.out.println("✅ ¡Conexión exitosa!");
            System.out.println("Base de datos: " + conn.getCatalog());
            System.out.println("Versión MySQL: " + conn.getMetaData().getDatabaseProductVersion());
        } catch (Exception e) {
            System.out.println("❌ Error de conexión:");
            e.printStackTrace();
        }
    }
}