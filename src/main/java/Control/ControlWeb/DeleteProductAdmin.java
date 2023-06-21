/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.ControlWeb;

import Control.DB.ProductDetailDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */

@WebServlet(urlPatterns = {"/delete"})

public class DeleteProductAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            try {
                
                String product_id = request.getParameter("product_id");
                ProductDetailDAO dao = new ProductDetailDAO();
                dao.delete(product_id);
                response.sendRedirect("listProduct");
            } catch (SQLException | ClassNotFoundException e) {
                   e.printStackTrace();
            }
        }
      
}
