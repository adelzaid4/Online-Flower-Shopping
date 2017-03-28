/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import Entities.Client;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Entities.Product;
import adminFacade.ClientService;
import adminFacade.ProductService;
import java.io.PrintWriter;
import java.util.Map;
import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author Moamenovic
 */
@WebServlet(name = "AddClientServlet", urlPatterns = {"/AddClientServlet"})
public class AddClientServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //************* startAllaa **************/

        //************** EndAllaa **************/
        //************* startAdel ************
        //************** EndAdel **************/
        //************* startSherif **************/
        //************** EndSherif **************/
        //************* startMoamen **************/
        //************** EndMoamen **************/
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            //************* startAllaa **************/
            //************** EndAllaa **************/
            //************* startAdel ************
            //************** EndAdel **************/
            //************* startSherif **************/
            //************** EndSherif **************/
            //************* startMoamen **************/

            Client client = new Client();
            BeanUtils.populate(client, request.getParameterMap());
            ClientService clientService = new ClientService();
            if (clientService.addClient(client)) {
                PrintWriter out = response.getWriter();
                out.println("Client has been added");
                response.sendRedirect("/FlowerCart/AdminView/ClientAddition.jsp");
            } else {
                PrintWriter out = response.getWriter();
                out.println("Client has not been saved");
                response.sendRedirect("/FlowerCart/AdminView/ClientAddition.jsp");
            }
            //************** EndMoamen **************/
        } catch (IllegalAccessException ex) {
            Logger.getLogger(AddClientServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvocationTargetException ex) {
            Logger.getLogger(AddClientServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
