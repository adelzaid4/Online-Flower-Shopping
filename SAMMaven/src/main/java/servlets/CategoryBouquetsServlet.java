/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Entities.Product;
import Facade.BouquetsService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alaa
 */
@WebServlet(name = "CategoryBouquetsServlet", urlPatterns = {"/categoryBouquets"})
public class CategoryBouquetsServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         int id = Integer.parseInt(request.getParameter("c"));
         String categoryname = request.getParameter("n");
        BouquetsService service = new BouquetsService();
        ArrayList<Product> bouquetscat = service.getBouquetsFormCategory(id);
        
        request.setAttribute("bouquetscat", bouquetscat);
        request.setAttribute("categoryname", categoryname);
        RequestDispatcher dis = request.getRequestDispatcher("BouquetsCategory.jsp");
        dis.forward(request, response);
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }


}
