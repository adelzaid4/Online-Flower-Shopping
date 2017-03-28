/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import Entities.Flower;
import Entities.Product;
import dto.ProductFlower;
import dao.FlowerDao;
import dao.ProductDoa;
import dao.ProductFlowerDao;
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
@WebServlet(name = "ListFlowerServlet", urlPatterns = {"/ListFlowerServlet"})
public class ListFlowerServlet extends HttpServlet {

    ArrayList<Flower> listFlowers = new ArrayList<>();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        boolean update = Boolean.parseBoolean(request.getParameter("update"));
        
        if (update) {
            int id = Integer.parseInt(request.getParameter("ProductID").trim());
            ProductFlowerDao productFlowerDao = new ProductFlowerDao();
            ArrayList<ProductFlower> productFlowers = productFlowerDao.selectProductFlowersByProductId(id);
            FlowerDao flowerDoa = new FlowerDao();
            listFlowers = flowerDoa.selectAllFlowers();
            for (int i = 0; i < listFlowers.size(); i++) {
                for (int j = 0; j < productFlowers.size(); j++) {
                    if (listFlowers.get(i).getId() == productFlowers.get(j).getFlowerID()) {
                        listFlowers.remove(i);
                    }
                }
            }
            request.setAttribute("flowers", listFlowers);
        } else {
            FlowerDao flowerDoa = new FlowerDao();
            listFlowers = flowerDoa.selectAllFlowers();
            request.setAttribute("flowers", listFlowers);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
