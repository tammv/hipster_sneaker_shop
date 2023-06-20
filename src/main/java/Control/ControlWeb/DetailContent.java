package Control.ControlWeb;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import Control.DB.ContentDAO;
import Model.Content;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet(urlPatterns = {"/blog-detail"})
public class DetailContent extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
            HttpSession session = req.getSession();
            List<Content> listDetail = (List<Content>) session.getAttribute("listContent");
            session.setAttribute("listContent", listDetail);
            req.getRequestDispatcher("blog-detail.jsp").forward(req, resp);
        
        }
}
