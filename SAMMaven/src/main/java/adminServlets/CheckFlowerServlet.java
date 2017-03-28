/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import Entities.Category;
import Entities.Flower;
import Entities.Product;
import dao.CategoryDao;
import dao.FlowerDao;
import dao.ProductDoa;
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
 * @author Adel Zaid
 */
@WebServlet(name = "CheckFlowerServlet", urlPatterns = {"/CheckFlowerServlet"})
public class CheckFlowerServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
        FlowerDao flowerDao = new FlowerDao();
        ArrayList<Flower> allFlowers= flowerDao.selectAllFlowers();
        boolean isvalid = true;
        for (int i = 0; i < allFlowers.size(); i++) {
            if (allFlowers.get(i).getName().equals(name)) {
                isvalid = false;
                break;
            }
        }
        if (isvalid) {
            out.print("Valid Flower");
        } else {
            out.print("Invalid Flower");
        }
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
