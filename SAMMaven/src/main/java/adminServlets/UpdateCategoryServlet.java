/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import Entities.Category;
import Entities.Flower;
import java.io.IOException;
import java.util.logging.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import Entities.Product;
import adminFacade.CategoryService;
import adminFacade.ProductService;
import java.util.*;
import javax.servlet.annotation.MultipartConfig;

/**
 *
 * @author Adel Zaid
 */
@WebServlet(name = "UpdateCategoryServlet", urlPatterns = {"/UpdateCategoryServlet"})
@MultipartConfig
public class UpdateCategoryServlet extends HttpServlet {

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
        updateCategory(request, response);

        //************** EndAdel **************/
        //************* startSherif **************/
        //************** EndSherif **************/
        //************* startMoamen **************/
        //************** EndMoamen **************/
    }

    private void updateCategory(HttpServletRequest request, HttpServletResponse response) throws IOException, IOException {
        Map<String, String[]> parameterMap = request.getParameterMap();
        Category category = new Category();
        String[] listOfProdcuts = parameterMap.get("bouqet");
        ArrayList<Product> listProdcuts = new ArrayList<>();
        Product product;
        for (String p : listOfProdcuts) {
            product = new Product();
            product.setName(p);
            listProdcuts.add(product);
        }
        category.setId(Integer.parseInt(parameterMap.get("id")[0]));
        category.setName(parameterMap.get("name")[0]);
        category.setProductList(listProdcuts);
        CategoryService categoryService = new CategoryService();
        if (categoryService.updateCategory(category)) {

            try {
                response.sendRedirect("/FlowerCart/AdminView/CategoryDetails.jsp");
            } catch (IOException ex) {
                Logger.getLogger(AddCategoryServlet.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
            }
        } else {
            try {
                response.sendRedirect("/FlowerCart/AdminView/CategoryDetails.jsp");
            } catch (IOException ex) {
                Logger.getLogger(AddCategoryServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
