/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Facade.CartService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sheko
 */
@WebServlet(name = "RemoveCartProductServlet", urlPatterns = {"/RemoveCartProductServlet"})
public class RemoveCartProductServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int  id= Integer.parseInt( request.getParameter("id"));
        CartService cartService=new CartService(request.getSession(true));
//        cartService.removeProduct(id);
      response.sendRedirect("cart.jsp");
    }
}
