package Model;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
import Control.DB.DBconnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ProductDetailDAO {
    Connection conn;
    PreparedStatement ps;
  

    
    public void delete(String product_id) throws SQLException, ClassNotFoundException {
        conn = DBconnect.makeConnection();
        try { 
            String sql = "UPDATE [dbo].[ProductDetail_Table]\n" +
                         "SET [quantityOfSize] = 0\n" +
                         "WHERE [product_id] = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, product_id);
            ps.executeUpdate();
            System.out.println("qua day chua 1");
        } catch (Exception e) {
        }
    }
}



 