package Control.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import Model.Product_Cart;

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


}
