package Control;

import java.io.IOException;
import java.sql.SQLException;

import Control.DB.NotificationDAO;
import Control.DB.OrderDAO;
import Control.DB.ProductDetailDAO;
import Model.Order;
import Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet(urlPatterns = {"/cancelOrderForCustomer"})
public class CancelOrderCus extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String order_id = req.getParameter("order_id");
        String type = "cancelOrder";
        try {
            new OrderDAO().updateOrderId(type, order_id);
            Order o = new OrderDAO().getOrder(order_id);
            new ProductDetailDAO().updateQuantityForCancel(o.getList_item());
            String title = "Cancel Orders";
                String content = "Order: -" + order_id
                        + "- was canceled. Because you canceled it " ;
                new NotificationDAO().insertNoti(o.getOrderDetail().getUsername(), title, content);
        } catch (ClassNotFoundException | SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        resp.sendRedirect("profile");
        
    }
    
}
