package Control.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

<<<<<<< HEAD
=======
import Model.Cart;
>>>>>>> main
import Model.Product;
import Model.Product_Cart;

public class CartUserDAO {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    

    public List<Product_Cart> getListProductInCart(int cart_id) throws ClassNotFoundException, SQLException{
        List<Product_Cart> list = new ArrayList<>();
        String query = "Select * from CartUser_Table where cart_id = ?";
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query) ;
        ps.setInt(1, cart_id);
        rs = ps.executeQuery();
        while(rs.next()){
            Product p = new ProductDAO().getProduct(rs.getInt(2));
            Product_Cart p_cart = new Product_Cart(p, rs.getInt(3), rs.getInt(4));
            list.add(p_cart);
        }
        return list;
    }


    public void insertProduct(int cartId, int product_id, int quantity, int size) throws SQLException, ClassNotFoundException {
<<<<<<< HEAD
        String query = "Insert into CartUser_Table Values(?,?,?,?,?)";
        Date currentDate = new Date();

        // Chuyển đổi sang kiểu java.sql.Date
        java.sql.Date sqlDate = new java.sql.Date(currentDate.getTime());
=======
        String query = "Insert into CartUser_Table Values(?,?,?,?)";
>>>>>>> main
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        ps.setInt(1, cartId);
        ps.setInt(2, product_id);
        ps.setInt(3, size);
        ps.setInt(4, quantity);
<<<<<<< HEAD
        ps.setDate(5, sqlDate);
=======
>>>>>>> main
        try {
            ps.execute();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            update( cartId,  product_id,  quantity,  size);

        }

    }

<<<<<<< HEAD
    private void update(int cartId, int product_id, int quantity, int size) throws SQLException, ClassNotFoundException {
        String query = "Update CartUser_Table Set quantity = quantity + ? , updated_at = ? where cart_id = ? and product_id = ? and size = ?";
        conn = DBconnect.makeConnection();
        Date currentDate = new Date();

        // Chuyển đổi sang kiểu java.sql.Date
        java.sql.Date sqlDate = new java.sql.Date(currentDate.getTime());
        ps = conn.prepareStatement(query);
        ps.setInt(1, quantity);
        ps.setDate(2, sqlDate);
        ps.setInt(3, cartId);
        ps.setInt(4, product_id );
        ps.setInt(5, size);
=======

    private void update(int cartId, int product_id, int quantity, int size) throws SQLException, ClassNotFoundException {
        String query = "Update CartUser_Table Set quantity = quantity + ?  where cart_id = ? and product_id = ? and size = ?";
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        ps.setInt(1, quantity);
        ps.setInt(2, cartId);
        ps.setInt(3, product_id );
        ps.setInt(4, size);
>>>>>>> main
        ps.executeUpdate();
    }


    public void delete(int cartId, int product_id, int size) throws SQLException, ClassNotFoundException {
        String query ="Delete From CartUser_Table where cart_id = ? and product_id = ? and size = ?";
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        ps.setInt(1, cartId);
        ps.setInt(2, product_id);
        ps.setInt(3, size);
        ps.executeUpdate();
    }

<<<<<<< HEAD
=======
    public void deleteAll(int cartId) throws SQLException, ClassNotFoundException{
        String query = "Delete From CartUser_Table where cart_id = ?";
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        ps.setInt(1 , cartId);
        ps.executeUpdate();
    }
    


    public void editCart(Cart cart) throws  ClassNotFoundException, SQLException {
        deleteAll(cart.getCartId());
        for (Product_Cart product_Cart : cart.getList_product()) {
            if(product_Cart.getQuantity()!=0){
                insertProduct(cart.getCartId(), product_Cart.getProduct().getProduct_id(), product_Cart.getQuantity(), product_Cart.getSize());
            }
        }
    }

>>>>>>> main
    

    

    
}
