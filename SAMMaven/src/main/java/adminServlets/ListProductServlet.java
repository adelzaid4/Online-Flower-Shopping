/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import Entities.Product;
import dao.CategoryProductDao;
import dao.ProductDoa;
import dto.CategoryProduct;
import dto.ProductFlower;
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
@WebServlet(name = "ListProductServlet", urlPatterns = {"/ListProductServlet"})
public class ListProductServlet extends HttpServlet {

    ArrayList<Product> listProducts = new ArrayList<>();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        boolean update = Boolean.parseBoolean(request.getParameter("update"));
        
        if (update) {
            int id = Integer.parseInt(request.getParameter("CategoryID").trim());
            CategoryProductDao categoryProductDao = new CategoryProductDao();
            ArrayList<CategoryProduct> categoryProducts = categoryProductDao.selectCategoryProductsByCategoryId(id);
            ProductDoa productDoa = new ProductDoa();
            listProducts = productDoa.selectAllProducts();
             for (int i = 0; i < listProducts.size(); i++) {
                for (int j = 0; j < categoryProducts.size(); j++) {
                    if (listProducts.get(i).getId() == categoryProducts.get(j).getProductID()) {
                        listProducts.remove(i);
                    }
                }
            }
            request.setAttribute("products", listProducts);

        } else {
            ProductDoa productDoa = new ProductDoa();
            listProducts = productDoa.selectAllProducts();
            request.setAttribute("products", listProducts);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
