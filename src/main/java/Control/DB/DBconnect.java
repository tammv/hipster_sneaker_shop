package Control.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBconnect {
    
    public static Connection makeConnection() throws ClassNotFoundException {
        try {
            String url = "jdbc:sqlserver://MSI\\SQLEXPRESS:1433;encrypt=true;databaseName=Final_Project;trustServerCertificate=true";
            String username = "sa";
            String password = "123456";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection(url, username, password);
            return con;
        } catch (SQLException e) {
            e.getMessage();
            return null;
        }
    }
}

