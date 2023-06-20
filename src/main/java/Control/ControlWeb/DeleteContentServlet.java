package Control.ControlWeb;

import java.io.IOException;
import java.sql.SQLException;

import Control.DB.ContentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deleteContent")
public class DeleteContentServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Retrieve content ID from request parameter
        String contentId = req.getParameter("contentId");
        
        try {
            // Delete content from the database
            ContentDAO contentDAO = new ContentDAO();
            contentDAO.deleteContent(contentId);
            
            // Redirect to a success page or show a success message
            resp.sendRedirect("Content_Creator.jsp");
        } catch (SQLException | ClassNotFoundException e) {
            // Handle any exceptions
            e.printStackTrace();
        }
    }
}
