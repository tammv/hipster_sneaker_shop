package Control.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import Control.Feature;
import Model.Product_Cart;

public class OrderDAO {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public void insertOrder(String code,String username, String address, float total , List<Product_Cart> list) throws  ClassNotFoundException, SQLException{
        String query = "Insert into Order_Table Values(?,?,?,?,?,?,?) ";
        String status = "Processing";
        Date currentDate = new Date();

        // Chuyển đổi sang kiểu java.sql.Date
        java.sql.Date sqlDate = new java.sql.Date(currentDate.getTime());
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, code);
        ps.setString(2, username);
        ps.setString(3, status);
        ps.setString(4, address);
        ps.setFloat(5, total);
        ps.setDate(6, sqlDate);
        ps.setDate(7, sqlDate);
        ps.execute();
        new OrderItemDAO().insertItemsForOrder(code, list);
        new ProductDetailDAO().updateQuantity(list);
        
         


    }
}
