/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Entities.Category;
import Entities.Flower;
import Entities.Product;
import Facade.HomeService;
import dto.CartProducts;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author alaa
 */
@WebServlet(name = "HomeServlet", urlPatterns = {"/HomeServlet"})
public class HomeServlet extends HttpServlet {

    //sherif 
    // added cartproducts object to session which represent list of products in client cart
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //start alaa
        HomeService service = new HomeService();
        ArrayList<Category> categories = new ArrayList<>();
        ArrayList<Flower> flowers = new ArrayList<>();
        ArrayList<Product> products = new ArrayList<>();
        ArrayList<Product> highRated = new ArrayList<>();
        
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);
        Boolean userLogged = (Boolean) session.getAttribute("LoggedIn");
        categories = service.getCategories();
        flowers = service.getFlowers();
        products = service.getProducts();
        highRated = service.getHighRated();
        request.setAttribute("categories", categories);
        request.setAttribute("flowers", flowers);
        request.setAttribute("products", products);
        request.setAttribute("highRated", highRated);
        request.getServletContext().setAttribute("productsOnContext", products);
        System.out.println("no");
//end alaa
//start sherif
        sessionInit(request);
// end sherif
    }

    private void sessionInit(HttpServletRequest request) {
        HttpSession session = request.getSession(true);

        if (session.getAttribute("userCart") == null) {
            session.setAttribute("userCart", new CartProducts());
            System.out.println("new user");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();

    }
}
