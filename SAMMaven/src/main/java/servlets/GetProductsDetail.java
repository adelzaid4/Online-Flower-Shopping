/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Entities.Product;
import Facade.ProductDetail;
import com.google.gson.Gson;
import dto.CheckOutProductDetail;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author  
 */
@WebServlet(name = "GetProductsDetail", urlPatterns = {"/GetProductsDetail"})
public class GetProductsDetail extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Gson gson = new Gson();
        Integer[] ids = gson.fromJson(req.getParameter("productsId"), Integer[].class);
        resp.setContentType("application/json");
        resp.getWriter().write(gson.toJson(getProduct(ids)));
    }

    private static ArrayList<CheckOutProductDetail> getProduct(Integer[] id) {
        ProductDetail detail = new ProductDetail();
        ArrayList<Product> products = detail.getProductsDetails(id);
        ArrayList<CheckOutProductDetail> checkOutProductDetails = new ArrayList<>();
        for (Product p : products) {
            checkOutProductDetails.add(new CheckOutProductDetail(p));
        }
        return checkOutProductDetails;
    }

}
