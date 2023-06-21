package Control.ControlWeb;

import java.io.IOException;
import java.sql.SQLException;

import Control.DB.ContentDAO;
import Model.Content;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/updateContentAction")
public class UpdateContentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy các tham số từ yêu cầu POST
        String title = request.getParameter("title");
        String img = request.getParameter("img");
        String content = request.getParameter("content");

        // Lấy thông tin Content cần cập nhật từ cơ sở dữ liệu
        String contentId = request.getParameter("contentId");
        ContentDAO contentDAO = new ContentDAO();
        Content existingContent;
        try {
            existingContent = contentDAO.getContentById(contentId);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            // Xử lý lỗi nếu cần thiết
            response.sendRedirect("error.jsp");
            return;
        }

        // Cập nhật thông tin trong đối tượng Content đã lấy từ cơ sở dữ liệu
        existingContent.setTitle(title);
        existingContent.setImg(img);
        existingContent.setContent(content);

        // Thực hiện cập nhật dữ liệu trong cơ sở dữ liệu
        try {
            contentDAO.updateContent(existingContent);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            // Xử lý lỗi cập nhật nếu cần thiết
            response.sendRedirect("error.jsp");
            return;
        }

        // Chuyển hướng đến trang hoàn tất cập nhật
        response.sendRedirect("Content_Creator.jsp");
    }
}
