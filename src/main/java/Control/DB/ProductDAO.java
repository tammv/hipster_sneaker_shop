package Control.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Product;

public class ProductDAO {
<<<<<<< HEAD
    Connection conn;
=======

   
    public Connection conn;
>>>>>>> main
    PreparedStatement ps;
    ResultSet rs;


    public List<Product> getListProduct() throws SQLException, ClassNotFoundException{
        conn = DBconnect.makeConnection();
        String query = "Select * from Product_Table";
        ps = conn.prepareStatement(query);
        rs = ps.executeQuery();
        List<Product> list_product = new ArrayList<>();
        while(rs.next()){
<<<<<<< HEAD
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
=======
            Product p = new Product(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4), rs.getFloat(5), rs.getString(6), rs.getInt(7), rs.getDate(8), rs.getDate(9),rs.getString(10));
>>>>>>> main
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
<<<<<<< HEAD
            Product p = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getFloat(5), rs.getString(6), rs.getInt(7), rs.getDate(8), rs.getDate(9));
=======
            Product p = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getFloat(5), rs.getString(6), rs.getInt(7), rs.getDate(8), rs.getDate(9), rs.getString(10));
>>>>>>> main
            return p;
        }
        return null;
    }
<<<<<<< HEAD
    
    
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
=======

    public List<Product> getListProductRelated(String brand , float profit_price, String color) throws ClassNotFoundException, SQLException{
        List<Product> list = new ArrayList<>();
        Float max_price = profit_price + 25;
        Float min_price = profit_price - 25;
        String query = "Select * From Product_Table where brand = ? and color = ? and profit_price between ? and ?";
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, brand);
        ps.setString(2, color);
        ps.setFloat(3, min_price);
        ps.setFloat(4, max_price);
        rs = ps.executeQuery();
        while(rs.next()){
            Product p = new Product(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4), rs.getFloat(5), rs.getString(6), rs.getInt(7), rs.getDate(8), rs.getDate(9), rs.getString(10));
            list.add(p);
        }
        System.out.println(list.size());
        System.out.println(max_price);
        System.out.println(min_price);
        return list;
    }
}
   

>>>>>>> main
