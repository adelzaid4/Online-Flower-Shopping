/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import Entities.Category;
import adminFacade.CategoryService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Adel Zaid
 */
@WebServlet(name = "ViewCategoryServlet", urlPatterns = {"/ViewCategoryServlet"})
public class ViewCategoryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String str = request.getParameter("CategoryID");
        str = str.replaceAll("\\s+", "");
        CategoryService categoryService=new CategoryService();
        Category category=categoryService.getCategory(Integer.parseInt(str.trim()));
        request.setAttribute("category", category);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
