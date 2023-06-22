package Control.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBconnect {
    


    public static Connection makeConnection() throws ClassNotFoundException {
        String namedatabase = "Final_Project";
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String connectionUrl = "jdbc:sqlserver://MSI\\SQLEXPRESS:1433;databaseName=" + namedatabase + "; Encrypt=false;";
            String user = "sa";
            String password = "123456";
            Connection con = DriverManager.getConnection(connectionUrl, user, password);
            return con;
        } catch (Exception e) {

            e.printStackTrace();
        }
        return null;


 
    }
}

