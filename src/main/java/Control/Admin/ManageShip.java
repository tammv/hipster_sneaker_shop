package Control.Admin;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import Control.DB.OrderDAO;
import Control.DB.ShipDAO;
import Control.DB.UserDAO;
import Model.Order;
import Model.Shipper;
import Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet(urlPatterns = {"/manageShipAdmin"})
public class ManageShip extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "Home.jsp";
        HttpSession session = req.getSession();
        User ad = (User) session.getAttribute("admin");
        if(ad!=null) {
            if(ad.getRole().equals("admin")){
                url = "ManageShip.jsp";
                try {
                    List<Order> list_order;
                    List<String> userShipper = new UserDAO().getUserShipper();
                    Map <String , List<Shipper>> map = new HashMap<String, List<Shipper>>();
                    userShipper.forEach(u -> {
                        try {
                            List<Shipper> list_order_ship = new ShipDAO().getOrderFollowShipper(u);
                            map.put(u, list_order_ship);
                            
                        } catch (ClassNotFoundException | SQLException e) {
                            // TODO Auto-generated catch block
                            e.printStackTrace();
                        }
                    });
                    list_order = new OrderDAO().getAllOrder();
                    List<Order> list_order_prepare = list_order.stream().filter(order -> order.getOrderDetail().getStatus_order().equals(" Preparing for delivery")).collect(Collectors.toList());
                    req.setAttribute("list_order_prepare", list_order_prepare);
                    req.setAttribute("AllShipper", map);


                } catch (ClassNotFoundException | SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                
            }
        }
        req.getRequestDispatcher(url).forward(req, resp);
    }
    
}
