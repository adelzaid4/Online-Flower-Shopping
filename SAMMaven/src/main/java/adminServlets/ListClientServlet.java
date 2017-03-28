/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import Entities.Client;
import dao.ClientDao;
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
@WebServlet(name = "ListClientServlet", urlPatterns = {"/ListClientServlet"})
public class ListClientServlet extends HttpServlet {

    List allClients = new ArrayList<Client>();

    public List getAllClients() {
        return allClients;
    }

    public void setAllClients(List allClients) {
        this.allClients = allClients;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        allClients = new ClientDao().selectAll();
        request.setAttribute("allClients", allClients);
//        RequestDispatcher rd = request.getRequestDispatcher("/AdminView/ListClient.jsp");
//        rd.forward(request, response);
     //   response.sendRedirect("/FlowersCart1/AdminView/ListClient.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
