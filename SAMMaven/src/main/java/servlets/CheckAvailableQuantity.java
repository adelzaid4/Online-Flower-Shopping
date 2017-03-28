/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Facade.CartService;
import com.google.gson.Gson;
import dto.LocalProducts;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sheko
 */
@WebServlet(name = "CheckAvailableQuantity", urlPatterns = {"/CheckAvailableQuantity"})
public class CheckAvailableQuantity extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Gson gson = new Gson();
        LocalProducts localproduct = gson.fromJson(req.getParameter("localProduct"), LocalProducts.class);
        CartService cartService = new CartService(req.getSession());
        int avalQuantity = cartService.getAvailableProductQuantity(localproduct.getId());
        Boolean isLoggedIn = (Boolean) req.getSession().getAttribute("LoggedIn");
        if (avalQuantity >= localproduct.getValue() && isLoggedIn != null && isLoggedIn) {
            cartService.updateUserCart(localproduct);
        }
        resp.getWriter().print(avalQuantity);
    }

}
