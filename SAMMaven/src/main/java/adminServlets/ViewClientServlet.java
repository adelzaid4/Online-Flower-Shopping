/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import Entities.Client;
import Entities.Order;
import adminFacade.ClientService;
import adminFacade.OrderService;
import dao.OrderDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Moamenovic
 */
@WebServlet(name = "ViewClientServlet", urlPatterns = {"/ViewClientServlet"})
public class ViewClientServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String str = request.getParameter("ClientID");
        System.out.println(str);
        int id = Integer.parseInt(str.replaceAll("\\s+", ""));
        ClientService cs = new ClientService();
        Client c = cs.getClientById(id);
        OrderService orderService = new OrderService();
        List<Order> list = (List<Order>) request.getSession().getAttribute("orders");
        Client c2 =(Client) request.getSession().getAttribute("client");
        List orders = orderService.selectOrdersByCLientID(id);
        request.getSession().setAttribute("orders", orders);
        request.getSession().setAttribute("client", c);
        System.out.println(c.toString());

//        RequestDispatcher rd = request.getRequestDispatcher("/AdminView/ViewClient.jsp");
//        rd.include(request, response);
//        response.sendRedirect("/FlowerCart/AdminView/ViewClient.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
