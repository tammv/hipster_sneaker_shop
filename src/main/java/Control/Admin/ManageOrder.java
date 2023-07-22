package Control.Admin;

import Control.DB.OrderDAO;
import Model.Order;
import Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@WebServlet(urlPatterns = {"/manageOrder"})
public class ManageOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "Home.jsp";
        HttpSession session = req.getSession();
        User ad = (User) session.getAttribute("admin");
        if(ad != null) {

            if(ad.getRole().equals("admin") || ad.getRole().equals("seller")){
                url = "ManageOrder.jsp";
                try {
                    List<Order> list = new OrderDAO().getAllOrder();
                    Map<String , Float> map = new OrderDAO().getPercentofStatusOrder();
                    List<String> list_status = new ArrayList<>();
                    List<Float> list_percent = new ArrayList<>();
                    for (Map.Entry<String , Float> entry : map.entrySet()) {
                        list_status.add(entry.getKey());
                        list_percent.add(entry.getValue());
                    }
                    System.out.println(list_status);
                    System.out.println(list_percent);
                    req.setAttribute("list_status", list_status);
                    req.setAttribute("list_percent", list_percent);
                    req.setAttribute("listOrders", list);
                    
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                } catch (ClassNotFoundException e) {
                    throw new RuntimeException(e);
                }
            }
        }

        req.getRequestDispatcher(url).forward(req, resp);
        

    }
    
    
}
