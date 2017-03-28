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
@WebServlet(name = "FlowerBouquetsServlet", urlPatterns = {"/flowerBouquests"})
public class FlowerBouquetsServlet extends HttpServlet {

   
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id = Integer.parseInt(request.getParameter("f"));
        String flowername = request.getParameter("n");
        BouquetsService service = new BouquetsService();
        ArrayList<Product> bouquets = service.getBouquetsFormFlower(id);
        
        request.setAttribute("bouquets", bouquets);
        request.setAttribute("flowername", flowername);
        RequestDispatcher dis = request.getRequestDispatcher("BouquetsFlower.jsp");
        dis.forward(request, response);
        
        
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    
}
