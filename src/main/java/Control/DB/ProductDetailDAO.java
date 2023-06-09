package Control.DB;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ProductDetailDAO {
    Connection conn;
    PreparedStatement ps;
  

    
    public void delete(int product_id) throws SQLException, ClassNotFoundException {
        conn = DBconnect.makeConnection();
        try { 
            String sql = "DELETE from ProductDetail_Table WHERE product_id = ?";            
            ps = conn.prepareStatement(sql);
            ps.setInt(1, product_id);
            ps.executeUpdate();
            System.out.println("qua day chua 1");
        } catch (Exception e) {
        }
    }
}



 