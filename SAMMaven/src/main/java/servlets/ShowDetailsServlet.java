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
@WebServlet(name = "ShowDetailsServlet", urlPatterns = {"/ShowDetails"})
public class ShowDetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //********************************************
        // Product product = (Product) getServletContext().getAttribute("productDetail");
        // int id = product.getId();
        int id = Integer.parseInt(request.getParameter("b"));
        System.out.println(id);
        //***********************************
        BouquetsService bouquetsService = new BouquetsService();
        Product productDetail = bouquetsService.getBouquetById(id);

        ArrayList<Product> simaliarProducts = bouquetsService.getBouquetsByFlowers(productDetail.getFlowers());

        request.setAttribute("productDetail", productDetail);
        request.setAttribute("simaliarProducts", simaliarProducts);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("detail.jsp");
        requestDispatcher.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
