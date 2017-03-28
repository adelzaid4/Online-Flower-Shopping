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
@WebServlet(name = "addProductToCartDetail", urlPatterns = {"/addProductToCartDetail"})
public class addProductToCartDetail extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Gson gson = new Gson();
        LocalProducts productsId = gson.fromJson(req.getParameter("addProduct"), LocalProducts.class);
        CartService cartService = new CartService(req.getSession());
        cartService.updateUserCart(productsId);
    }

}
