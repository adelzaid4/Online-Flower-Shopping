/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import Entities.Product;
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
@WebServlet(name = "CheckProductServlet", urlPatterns = {"/CheckProductServlet"})
public class CheckProductServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
        ProductDoa productDoa = new ProductDoa();
        ArrayList<Product> allProducts = productDoa.selectAllProducts();
        boolean isvalid=true;
        for (int i = 0; i < allProducts.size(); i++) {
            if (allProducts.get(i).getName().equals(name)) {
                isvalid=false;
                break;
            }
        }
        if(isvalid)
            out.print("Valid Product");
        else
            out.print("Invalid Product");
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
