/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import Entities.Client;
import Entities.Extra;
import Entities.Order;
import Entities.OrderDetails;
import Entities.Product;
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
@WebServlet(name = "ViewOrderDetailsServlet", urlPatterns = {"/ViewOrderDetailsServlet"})
public class ViewOrderDetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String str = request.getParameter("ID");
        int OrderId = Integer.parseInt(str.replaceAll("\\s+", ""));
        OrderService orderService = new OrderService();
        String clientID = request.getParameter("clientid");
        int clientIDNumber = Integer.parseInt(clientID.replaceAll("\\s+", ""));
        List<Order> orders = orderService.selectOrdersByCLientID(clientIDNumber);

        List<OrderDetails> orderDetailses = new ArrayList<>();
        List<Extra> extras = new ArrayList<>();
        for (Order o : orders) {
            if (o.getID() == OrderId) {
                for (OrderDetails ods : o.getOrderDetails()) {
                    ods.setPname(orderService.returnProductName(ods.getProductId()));
                    orderDetailses.add(ods);
                }
                for (Extra e : o.getExtras()) {
                    e.seteName(orderService.returnExtraName(e.getId()));
                    extras.add(e);
                }
            }
        }

        request.getSession().setAttribute("ordersDetails", orderDetailses);
        request.getSession().setAttribute("extras", extras);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
