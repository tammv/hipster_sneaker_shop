package Control.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Product;

public class ProductDAO {

   
    public Connection conn;
    PreparedStatement ps;
    ResultSet rs;


    public List<Product> getListProduct() throws SQLException, ClassNotFoundException{
        conn = DBconnect.makeConnection();
        String query = "Select * from Product_Table";
        ps = conn.prepareStatement(query);
        rs = ps.executeQuery();
        List<Product> list_product = new ArrayList<>();
        while(rs.next()){
            Product p = new Product(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4), rs.getFloat(5), rs.getString(6), rs.getInt(7), rs.getDate(8), rs.getDate(9),rs.getString(10));
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
            Product p = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getFloat(5), rs.getString(6), rs.getInt(7), rs.getDate(8), rs.getDate(9), rs.getString(10));
            return p;
        }
        return null;
    }

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
   

