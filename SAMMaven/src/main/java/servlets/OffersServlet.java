/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Entities.Client;
import Facade.OrderServicee;
import adminFacade.OrderService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alaa
 */
@WebServlet(name = "OffersServlet", urlPatterns = {"/OffersServlet"})
public class OffersServlet extends HttpServlet {

    OrderServicee os = new OrderServicee();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        Client client = (Client) request.getSession().getAttribute("user");
        
        if ( os.isBirthdayToday(client.getBirthday())){
            request.setAttribute("isBirthday", new Boolean("true"));
        }
        else {
            request.setAttribute("isBirthday", new Boolean("false"));
        }
        out.write("true");
        out.write("false");
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}