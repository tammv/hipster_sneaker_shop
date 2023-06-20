package Control.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import Model.Product_Cart;

public class OrderItemDAO {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    public void insertItemsForOrder(String code, List<Product_Cart> list) throws ClassNotFoundException, SQLException {
        String query = "Insert into OrderItems_Table Values(?,?, ?, ?)";
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        for (Product_Cart product_Cart : list) {
            ps.setString(1, code);
            ps.setInt(2, product_Cart.getProduct().getProduct_id());
            ps.setInt(3, product_Cart.getSize());
            ps.setInt(4, product_Cart.getQuantity());
            ps.executeUpdate();
        }

    }

    
}
