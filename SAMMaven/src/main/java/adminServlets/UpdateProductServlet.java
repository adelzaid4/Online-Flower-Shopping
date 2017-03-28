/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import Entities.Flower;
import java.io.IOException;
import java.util.logging.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import Entities.Product;
import adminFacade.ProductService;
import java.util.*;
import javax.servlet.annotation.MultipartConfig;

/**
 *
 * @author Adel Zaid
 */
@WebServlet(name = "UpdateProductServlet", urlPatterns = {"/UpdateProductServlet"})
@MultipartConfig
public class UpdateProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //************* startAllaa **************/

        //************** EndAllaa **************/
        //************* startAdel ************
        //************** EndAdel **************/
        //************* startSherif **************/
        //************** EndSherif **************/
        //************* startMoamen **************/
        //************** EndMoamen **************/
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //************* startAllaa **************/
        //************** EndAllaa **************/
        //************* startAdel ************
        updateProduct(request, response);

        //************** EndAdel **************/
        //************* startSherif **************/
        //************** EndSherif **************/
        //************* startMoamen **************/
        //************** EndMoamen **************/
    }

    List<String> imgPaths = new ArrayList<>();

    private void updateProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {

        Product product = new Product();
         ArrayList<String> listOfFlowers = new ArrayList<>();
            for (Map.Entry<String, String[]> entry : request.getParameterMap().entrySet()) {
                String key = entry.getKey();
                if (key.contains("flower")) {
                    listOfFlowers.add(entry.getValue()[0]);
                }
            }
        ArrayList<Flower> listFlowers = new ArrayList<>();
        Flower flower;
        for (String listFlower : listOfFlowers) {
            flower = new Flower();
            if (!listFlower.equals("")) {
                flower.setName(listFlower);
                listFlowers.add(flower);
            }
        }
        product.setId(Integer.parseInt(request.getParameter("id")));
        product.setName(request.getParameter("name"));
        product.setPrice(Float.parseFloat(request.getParameter("price")));
        product.setQuantity(Integer.parseInt(request.getParameter("quantity")));
        product.setRating(Integer.parseInt(request.getParameter("rating")));
        product.setDescription(request.getParameter("description"));
        product.setFlowers(listFlowers);
        ProductService productService = new ProductService();
        if (productService.updateProduct(product, imgPaths)) {

            try {

                response.sendRedirect("/FlowerCart/AdminView/ProductDetails.jsp");

            } catch (Exception ex) {
                Logger.getLogger(UpdateProductServlet.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
            }
        } else {
            try {
                response.sendRedirect("/FlowerCart/AdminView/ProductDetails.jsp");

            } catch (Exception ex) {
                Logger.getLogger(UpdateProductServlet.class
                        .getName()).log(Level.SEVERE, null, ex);

            }
        }

    }
}
