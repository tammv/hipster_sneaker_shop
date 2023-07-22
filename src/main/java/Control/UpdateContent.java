package Control;

import java.io.IOException;
import java.sql.SQLException;

import Control.DB.ContentDAO;
import Model.Content;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
@WebServlet(urlPatterns = {"/updateBlog"})
@MultipartConfig(
    location = "D:\\SU23\\SWP301\\WorkSpace_SWP\\vai2\\hipster_sneaker_shop\\src\\main\\webapp\\imgs"
)
public class UpdateContent extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String content_title  = req.getParameter("content_title");
        int content_id = Integer.parseInt(req.getParameter("content_id"));
        String content_detail_title = req.getParameter("content-detail_title");
        String content_content = req.getParameter("content_content");
        String filename=req.getParameter("oldimg");
        System.out.println(filename);
        Part part = req.getPart("linkimg");
        System.out.println(part);
        if(part.getSize() != 0){
            filename = new Feature().getFileName(part);
            part.write(filename);
            filename = "./imgs/" + filename;
        }
        try {
            new ContentDAO().updateContent(content_id,content_title, content_detail_title,content_content,filename);
        } catch (ClassNotFoundException | SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        resp.sendRedirect("manageContent");
    }

   
        

    
    
}
