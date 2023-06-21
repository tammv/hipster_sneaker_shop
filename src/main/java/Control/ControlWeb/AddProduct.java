/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control.ControlWeb;

import Control.DB.ProductDAO;
import Control.DB.ProductDetailDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "AddProduct", urlPatterns = {"/addProduct"})
public class AddProduct extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddProduct</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddProduct at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
            String product_name = request.getParameter("nameParam");
            String brand = request.getParameter("brandParam");
            String prouduct_description = request.getParameter("descriptionParam");
            float input_price = Float.parseFloat(request.getParameter("priceParam"));
            String img = request.getParameter("formFileParam");
            String color = request.getParameter("colorParam");
            List<Integer> list_size = new ArrayList<>();
            list_size.add(34);
            list_size.add(35);
            list_size.add(36);
            list_size.add(37);
            list_size.add(38);
            list_size.add(39);
            list_size.add(40);
            list_size.add(41);
            list_size.add(42);
            list_size.add(43);
              
          Map<Integer, Integer> sizeQuantityMap = new HashMap<>();
                for (int size : list_size) {
                       int quantity = Integer.parseInt(request.getParameter(String.valueOf(size)));
                        sizeQuantityMap.put(size, quantity);
                }
 
                try {
                    ProductDAO dao = new ProductDAO();
                    dao.addProduct(product_name, brand, prouduct_description, input_price, img, color);
                    ProductDetailDAO dao1 = new ProductDetailDAO(); 
                    int product_id = dao.getNewProductId();
                    dao1.addProductDetail(product_id, sizeQuantityMap);
            
            response.sendRedirect("listProduct"); 
        } catch (ClassNotFoundException | SQLException e) {

        } 
            
        } 
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
