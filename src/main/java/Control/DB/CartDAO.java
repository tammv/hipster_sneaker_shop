package Control.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CartDAO  {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public void insertCartTable(String username) throws SQLException, ClassNotFoundException{
        String query = "Insert into Cart_Table(username) Values (?)";
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, username);
        ps.executeUpdate();
    }

    public int getCartId(String username) throws SQLException, ClassNotFoundException{
        String query = "Select Cart_id from Cart_Table where username = ?";
        conn = DBconnect.makeConnection();
        ps =conn.prepareStatement(query);
        ps.setString(1, username);
        rs=ps.executeQuery();
        while(rs.next()){
            return rs.getInt(1);
        }
        return 0;
        
    }

    
}
