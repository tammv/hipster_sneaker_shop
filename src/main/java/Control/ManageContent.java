package Control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import Control.DB.ContentDAO;
import Model.Content;
import Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet(urlPatterns = {"/manageContent"})
public class ManageContent extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = "Home.jsp";
        HttpSession session = req.getSession();
        User ad = (User) session.getAttribute("admin");
        if(ad != null & (ad.getRole().equals("admin")||ad.getRole().equals("contentCreator"))){
            url = "ManageContent.jsp";
            try {
                List<Content> list = new ContentDAO().getListContent();
                req.setAttribute("list_content", list);

            } catch (ClassNotFoundException | SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        req.getRequestDispatcher(url).forward(req, resp);
    }
    
}
