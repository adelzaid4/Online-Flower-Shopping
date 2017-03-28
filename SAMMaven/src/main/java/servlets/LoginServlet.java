/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Entities.Client;
import Facade.ClientService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author alaa
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //************* startAllaa **************/
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String email = request.getParameter("inputEmail");
        String password = request.getParameter("inputPassword");
        String remember = request.getParameter("remember");

        Cookie rememberEmail = new Cookie("rememberEmail", "");
        Cookie rememberPassword = new Cookie("rememberPassword", "");
        Cookie checked = new Cookie("checked", "");
        // check against database
        ClientService clientService = new ClientService();
        int flag = clientService.Login(email, password);
        if ( flag == 1) {
            Client user = clientService.getUser(email);
            HttpSession session = request.getSession(true);
            session.setAttribute("LoggedIn", new Boolean("true"));
            session.setAttribute("PasswordDiv", true);
            session.setAttribute("user", user);
            response.sendRedirect("index.jsp");
            if (remember != null) {
                rememberEmail = new Cookie("rememberEmail", email);
                rememberEmail.setMaxAge(24 * 60 * 60 * 30);
                response.addCookie(rememberEmail);
                rememberPassword = new Cookie("rememberPassword", password);
                rememberPassword.setMaxAge(24 * 60 * 60 * 30);
                response.addCookie(rememberPassword);
                checked = new Cookie("checked", "true");
                checked.setMaxAge(24 * 60 * 60 * 30);
                response.addCookie(checked);
            } else {
                rememberEmail = new Cookie("rememberEmail", "");
                response.addCookie(rememberEmail);
                rememberPassword = new Cookie("rememberPassword", "");
                response.addCookie(rememberPassword);
                checked = new Cookie("checked", "");
                response.addCookie(checked);
                rememberPassword.setMaxAge(0);
                rememberEmail.setMaxAge(0);
            }
        } else if (flag == 2) { // failed to log in
            HttpSession session = request.getSession(true);
            session.setAttribute("LoggedIn", new Boolean("false"));
            response.sendRedirect("index.jsp?fail=true");
        } else if (flag == 0) { // already logged in
            HttpSession session = request.getSession(true);
            session.setAttribute("LoggedIn", new Boolean("false"));
            response.sendRedirect("index.jsp?loggedin=true");
        }

        //************** EndAllaa **************/
        //************* startAdel ************
        //************** EndAdel **************/
        //************* startSherif **************/
        //************** EndSherif **************/
        //************* startMoamen **************/
        //************** EndMoamen **************/
    }

}
