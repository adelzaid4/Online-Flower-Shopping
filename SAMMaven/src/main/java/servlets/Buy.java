/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Entities.Extra;
import Facade.BuyService;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import dto.BuyOrder;
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
@WebServlet(name = "BuyExtras", urlPatterns = {"/BuyExtras"})
public class Buy extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Gson  gson=new Gson();
        System.out.println(req.getParameter("buyorder"));
        BuyOrder buyOrder=gson.fromJson(req.getParameter("buyorder"),BuyOrder.class);
        BuyService buyService=new BuyService(req.getSession());
        if( buyService.buy(buyOrder))
        {
        resp.getWriter().print("true");
        }
    
        else{
            resp.getWriter().print("false");
        }
        System.out.println(buyOrder.getPrice());
        
        
    }


}
