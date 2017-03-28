/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Facade.CartService;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import dto.LocalProducts;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sheko
 */
@WebServlet(name = "SyncCartServlet", urlPatterns = {"/SyncCartServlet"})
public class SyncCartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Gson gson = new Gson();
        ArrayList<LocalProducts> productsId = gson.fromJson(req.getParameter("localProducts"), new TypeToken<ArrayList<LocalProducts>>() {
        }.getType());
        CartService cartService = new CartService(req.getSession());
        resp.setContentType("application/json");
        ArrayList<LocalProducts> merged = cartService.syncCart(productsId);
        System.out.println(gson.toJson(merged));
        resp.getWriter().write(gson.toJson(merged));

    }

}
