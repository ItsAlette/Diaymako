package app.avpsm.entities;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

public class ConnexionRapide 
{
	private static final String URL = "jdbc:mysql://localhost:3306/avpsm?useSSL=false";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
}
