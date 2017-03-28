/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Entities.Client;
import Facade.ClientService;
import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Entities.Client;
import Entities.Interests;
import Facade.HomeService;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author alaa
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //************* startAllaa **************/
        HomeService homeService = new HomeService();
        ClientService clientService = new ClientService();
        Client client = new Client();
        try {
            BeanUtils.populate(client, request.getParameterMap());
            System.out.println("Post : Register servlet : " + client);
            String[] interestsNames = request.getParameterValues("clientInterest");
            System.out.println(interestsNames);
            ArrayList<Interests> interests = homeService.getInterestByName(interestsNames);
            System.out.println(interests.toArray());
            client.setInterests(interests);

//************** EndAllaa **************/
//************* startSherif **************/
            if (!clientService.signUp(client)) {
                response.sendRedirect("register.jsp?fail=true");
            } else {
                HttpSession session = request.getSession(true);
                session.setAttribute("LoggedIn", new Boolean("false"));
                response.sendRedirect("index.jsp");
            }
//************** EndSherif **************/

        } catch (IllegalAccessException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvocationTargetException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
