/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.ControlWeb;

<<<<<<< HEAD
import Control.DB.ProductDAO;
import Control.DB.ProductDetailDAO;
=======
import Model.ProductDetailDAO;
>>>>>>> main
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
<<<<<<< HEAD
=======
import java.sql.SQLException;
>>>>>>> main

/**
 *
 * @author ASUS
 */

@WebServlet(urlPatterns = {"/delete"})
<<<<<<< HEAD
public class DeleteProductAdmin extends HttpServlet {
        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int product_id = Integer.parseInt(request.getParameter("product_id"));
        ProductDetailDAO dao1 = new ProductDetailDAO();
        try {
        dao1.delete(product_id);
        ProductDAO dao = new ProductDAO();
        dao.delete(product_id);
        response.sendRedirect("listProduct");
        } catch (Exception e) {
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
    }


=======

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
      
>>>>>>> main
}
