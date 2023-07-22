package Control;

import java.io.IOException;
import java.sql.SQLException;

import Control.DB.ContentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = {"/deleteBlog"})
public class DeleteContent extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int content_id = Integer.parseInt(req.getParameter("content_id"));
        try {
            new ContentDAO().deleteContent(content_id);
        } catch (ClassNotFoundException | SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        resp.sendRedirect("manageContent");

    }
    
}
