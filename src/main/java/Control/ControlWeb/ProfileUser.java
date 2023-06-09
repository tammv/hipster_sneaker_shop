package Control.ControlWeb;

import java.io.IOException;
import java.sql.SQLException;

import Control.DB.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/profile"})
public class ProfileUser extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fullName = req.getParameter("name");
        String email = req.getParameter("email");
        String address = req.getParameter("address");

        HttpSession session = req.getSession();
        String username = (String)session.getAttribute("user");
        
        try {
            new UserDAO().editProfile(fullName, email, address, username );
            resp.sendRedirect("Home.jsp");
        } catch (ClassNotFoundException | SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
}
