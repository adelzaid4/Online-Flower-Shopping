/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import Entities.Client;
import Entities.Order;
import Entities.Product;
import adminFacade.ClientService;
import adminFacade.ProductService;
import dao.OrderDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Adel Zaid
 */
@WebServlet(name = "ViewProductServlet", urlPatterns = {"/ViewProductServlet"})
public class ViewProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String str = request.getParameter("ProductID");
        System.out.println(str);
        str = str.replaceAll("\\s+", "");
        ProductService ps=new ProductService();
        Product product=ps.getProduct(Integer.parseInt(str));
        request.setAttribute("product", product);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
