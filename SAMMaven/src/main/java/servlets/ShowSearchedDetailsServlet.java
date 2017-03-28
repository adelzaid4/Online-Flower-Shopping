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
@WebServlet(name = "ShowSearchedDetailsServlet", urlPatterns = {"/ShowSearchedDetailsServlet"})
public class ShowSearchedDetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        System.out.println(name);
        BouquetsService bouquetsService = new BouquetsService();
        Product productDetail = bouquetsService.getBouquetByName(name);

        ArrayList<Product> simaliarProducts = bouquetsService.getBouquetsByFlowers(productDetail.getFlowers());

        request.getServletContext().setAttribute("productDetail", productDetail);
        request.getServletContext().setAttribute("simaliarProducts", simaliarProducts);

//        response.sendRedirect("detail.jsp");
//        RequestDispatcher requestDispatcher = request.getRequestDispatcher("detail.jsp");
//        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
