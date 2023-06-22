package Control.DB;

<<<<<<< HEAD
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
=======
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import Model.Product_Cart;
>>>>>>> main

public class ProductDetailDAO {
    Connection conn;
    PreparedStatement ps;
<<<<<<< HEAD
  

    
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



 
=======
    ResultSet rs;
    public void updateQuantity(List<Product_Cart> list) throws SQLException, ClassNotFoundException {
        String query = "Update ProductDetail_Table Set quantityOfSize = quantityOfSize - ? where product_id = ? and size = ?";
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        for (Product_Cart product_Cart : list) {
            ps.setInt(1, product_Cart.getQuantity());
            ps.setInt(2, product_Cart.getProduct().getProduct_id());
            ps.setInt(3, product_Cart.getSize());
            ps.executeUpdate();
        }
    }


}
>>>>>>> main
