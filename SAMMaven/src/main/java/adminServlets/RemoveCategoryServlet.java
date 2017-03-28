/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import adminFacade.CategoryService;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminFacade.ClientService;
import adminFacade.ProductService;

/**
 *
 * @author Moamenovic
 */
@WebServlet(name = "RemoveCategoryServlet", urlPatterns = {"/RemoveCategoryServlet"})
public class RemoveCategoryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //************* startAllaa **************/
        Enumeration<String> names = request.getParameterNames();
        while (names.hasMoreElements()) {
            System.out.println(names.nextElement());
        }

        String str = request.getParameter("id");
        System.out.println(str);

        int id = Integer.parseInt(str.trim());
        System.out.println(id);
        CategoryService categoryService = new CategoryService();
        if (categoryService.deleteCategory(id)) {
            System.out.println(id);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
