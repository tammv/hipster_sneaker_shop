package Control.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Product;

public class ProductDAO {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;


    public List<Product> getListProduct() throws SQLException, ClassNotFoundException{
        conn = DBconnect.makeConnection();
        String query = "Select * from Product_Table";
        ps = conn.prepareStatement(query);
        rs = ps.executeQuery();
        List<Product> list_product = new ArrayList<>();
        while(rs.next()){
            Product p = new Product(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4), rs.getFloat(5), rs.getString(6), rs.getInt(7), rs.getDate(8), rs.getDate(9));
            list_product.add(p);
        }
        return list_product;
        
    }
    public List<Product> getListProductForadd() throws SQLException, ClassNotFoundException{
        conn = DBconnect.makeConnection();
        String query = "Select * from Product_Table where quantity > 0";
        ps = conn.prepareStatement(query);
        rs = ps.executeQuery();
        List<Product> list_product = new ArrayList<>();
        while(rs.next()){
            Product p = new Product(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4), rs.getFloat(5), rs.getString(6), rs.getInt(7), rs.getDate(8), rs.getDate(9));
            list_product.add(p);
        }
        return list_product;
        
    }


    public Product getProduct(int product_id) throws SQLException, ClassNotFoundException{
        conn = DBconnect.makeConnection();
        String query = "Select * from Product_Table where product_id = ?";
        ps = conn.prepareStatement(query);
        ps.setInt(1  , product_id);
        rs = ps.executeQuery();
        while(rs.next()){
            Product p = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getFloat(5), rs.getString(6), rs.getInt(7), rs.getDate(8), rs.getDate(9));
            return p;
        }
        return null;
    }
    
    
    public void add(String product_name, String brand, String product_description, String profit_price, String img ,String quantity) throws SQLException, ClassNotFoundException{
        conn = DBconnect.makeConnection();
        try {
            String sql = "INSERT INTO Product_Table (product_name, brand, product_description, profit_price, img, quantity, created_at)\n" +
"VALUES (?,?,?,?,?,?,GETDATE());";
            ps = conn.prepareStatement(sql);
            ps.setString(1,product_name);
            ps.setString(2,brand);
            ps.setString(3,product_description);
            ps.setString(4, profit_price);
            ps.setString(5, img);
            ps.setString(6, quantity);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
    }
    
    public void delete(int product_id) throws SQLException, ClassNotFoundException {
        conn = DBconnect.makeConnection();
        try { 
            String sql = "DELETE From Product_Table WHERE product_id = ?";            
            ps = conn.prepareStatement(sql);
            ps.setInt(1, product_id);
            ps.executeUpdate();
            System.out.println("qua day chua 2");
        } catch (Exception e) {
        }
    }
    public void edit(String product_name, String brand, String product_description, String profit_price, String img ,String quantity, String product_id) throws SQLException, ClassNotFoundException{
        conn = DBconnect.makeConnection();
        try {
            String sql = "  UPDATE Product_Table SET product_name = ?, brand = ?, product_description = ?, profit_price = ?, img = ?, quantity = ? WHERE product_id = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,product_name);
            ps.setString(2,brand);
            ps.setString(3,product_description);
            ps.setString(4, profit_price);
            ps.setString(5, img);
            ps.setString(6, quantity);
            ps.setString(7, product_id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
}
