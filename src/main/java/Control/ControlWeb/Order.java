package Control.ControlWeb;

import java.io.IOException;
import java.lang.reflect.Array;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import Control.Feature;
import Control.DB.CartDAO;
import Control.DB.CartUserDAO;
import Control.DB.OrderDAO;
import Model.Cart;
import Model.Product_Cart;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/order"})
public class Order  extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String list_order_String = req.getParameter("list_order");
        String[] list_orderString = list_order_String.split("--");
        List<String> list_order = new ArrayList<>(Arrays.asList(list_orderString));
        String city = req.getParameter("city");
        String address = req.getParameter("address");
        float total = Float.parseFloat(req.getParameter("total").replace("$", ""));
        HttpSession session = req.getSession();
        Cart cart = (Cart) session.getAttribute("cart_user");
        String user = (String) session.getAttribute("user");
        List<Product_Cart> list_order_cart = new ArrayList<>();
        int flag=-1;
        for (Product_Cart product_Cart : cart.getList_product()) {
            for(int i = 0 ; i< list_order.size(); i++){
                if(product_Cart.getProduct().getProduct_id() == Integer.parseInt(list_order.get(i))){
                    list_order_cart.add(product_Cart);
                    flag = i;
                    System.out.println(flag);
                    break;
                }
            }
            if (flag != -1 ){
                list_order.remove(flag);
                }
        }
        List<Product_Cart> afterRemove = cart.getList_product();

        for (Product_Cart product_Cart : list_order_cart) {
            if(afterRemove.contains(product_Cart)){
                afterRemove.remove(product_Cart);
            }
        }
        cart.setList_product(afterRemove);
        session.setAttribute("cart_user", cart);
        String code = new Feature().getCode();
        Boolean check = true;
        while(check){
            try {
                new OrderDAO().insertOrder(code,user, address, total, list_order_cart);
                new CartUserDAO().editCart(cart);
                new Send().SendOrder(code, list_order_cart, user, address, total);
                check = false;
    
            } catch (ClassNotFoundException | SQLException e) {
                code = new Feature().getCode();
            }

        }

        resp.sendRedirect("Home.jsp");
        


    }
}
