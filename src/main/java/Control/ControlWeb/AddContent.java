package Control.ControlWeb;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import com.sendgrid.Response;

import Control.DB.ContentDAO;
import Model.Content;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/addContent"})
public class AddContent extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String username = (String) session.getAttribute("user");
        String title = req.getParameter("title");
        String img = req.getParameter("img");
        String content = req.getParameter("content");
        String detailTitle = req.getParameter("detailTitle");
        String id = req.getParameter("contentId");

        // Get current date
        Date currentDate = new Date(System.currentTimeMillis());

        // Create a new Content object
        Content newContent = new Content(username, title, img, content, currentDate, currentDate, detailTitle, id);

        try {
            // Add content to the database
            ContentDAO contentDAO = new ContentDAO();
            contentDAO.addContent(newContent);
            List<Content> list = new ContentDAO().getListContent();
            session.setAttribute("listContent", list);

            // Redirect to a success page or show a success message
            resp.sendRedirect("Content_Creator.jsp");
        } catch (SQLException | ClassNotFoundException e) {
            // Handle any exceptions
            e.printStackTrace();
            // Redirect to an error page or show an error message
            resp.sendRedirect("add-content.jsp");
        }
    }
}
