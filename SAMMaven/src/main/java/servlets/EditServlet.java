/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Entities.Client;
import Entities.Interests;
import Facade.ClientService;
import Facade.HomeService;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author alaa
 */
@WebServlet(name = "EditServlet", urlPatterns = {"/EditServlet"})
public class EditServlet extends HttpServlet {

    ClientService clientService;
    HomeService homeService;
    String newpassword;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        clientService = new ClientService();
        Client user = (Client) request.getSession().getAttribute("user");
        String mail = user.getMail();
        System.out.println("mailll " + mail);

        String oldpassword = request.getParameter("password");
        newpassword = request.getParameter("newpassword");
        System.out.println("password " + request.getParameter("password"));
        System.out.println("newpassword " + request.getParameter("newpassword"));

        request.setAttribute("PasswordWrong", false);
        request.getSession().setAttribute("PasswordDiv", true);

        if (clientService.CheckPassword(mail, oldpassword)) {
            System.out.println("find user");
            request.getSession().setAttribute("PasswordDiv", false);
            RequestDispatcher dis = request.getRequestDispatcher("EditAccount.jsp");
            dis.include(request, response);
            request.getSession().setAttribute("PasswordDiv", true);

        } else {
            System.out.println("not found user");
            RequestDispatcher dis = request.getRequestDispatcher("EditAccount.jsp?password=wrong");
            dis.forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            clientService = new ClientService();
            homeService = new HomeService();

            Client clientUpdated = new Client();
            BeanUtils.populate(clientUpdated, request.getParameterMap());

            String[] interestsNames = request.getParameterValues("clientInterest");
            System.out.println(interestsNames);
            ArrayList<Interests> interests = homeService.getInterestByName(interestsNames);
            clientUpdated.setInterests(interests);
            System.out.println("Client Edittt : " + clientUpdated);
            Client clientToSave = clientService.getUser(clientUpdated.getMail());
            clientUpdated.setId(clientToSave.getId());
            if (newpassword != null) {
                clientUpdated.setPassword(newpassword);
            } else {
                clientUpdated.setPassword(clientToSave.getPassword());
            }

            if (clientService.updateUser(clientUpdated)) {
                response.sendRedirect("Account.jsp");
                request.getSession().setAttribute("user", clientUpdated);

            } else {
                response.sendRedirect("EditAccount.jsp?update=fail");
            }

        } catch (IllegalAccessException ex) {
            Logger.getLogger(EditServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvocationTargetException ex) {
            Logger.getLogger(EditServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
