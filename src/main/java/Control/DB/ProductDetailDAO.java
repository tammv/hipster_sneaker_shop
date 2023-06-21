package Control.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import Model.Product_Cart;
import java.util.Map;

public class ProductDetailDAO {
    Connection conn;
    PreparedStatement ps;
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
        
        
        public void addProductDetail(int product_id, Map<Integer, Integer> sizeQuantityMap) throws ClassNotFoundException, SQLException {
        conn = DBconnect.makeConnection();

       String query = "Insert into ProductDetail_Table Values(?, ?, ?)";
       ps = conn.prepareStatement(query);
       for(Map.Entry<Integer, Integer> entry : sizeQuantityMap.entrySet()){
           ps.setInt(1 , product_id);
           ps.setInt(2,entry.getKey());
           ps.setInt(3,entry.getValue());
           ps.executeUpdate();
       }      
    }    
}
