package Control.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBconnect {
    

    public static Connection makeConnection() throws ClassNotFoundException, SQLException{
        try{
            String connectionUrl = "jdbc:sqlserver://LAPTOP-H06LKF92\\SQLEXPRESS:1433;databaseName=Final_Project;User=sa;Password=12345;encrypt=true;trustServerCertificate=true";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection(connectionUrl);
            System.out.println("da ket noi db");
            return con;
        }catch(ClassNotFoundException | SQLException ex){
            System.out.println(ex);
        }
        return null;
}

}


