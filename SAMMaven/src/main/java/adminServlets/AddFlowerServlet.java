/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminServlets;

import Entities.Flower;
import adminFacade.FlowerService;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author Adel Zaid
 */
@WebServlet(name = "AddFlowerServlet", urlPatterns = {"/AddFlowerServlet"})
public class AddFlowerServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        FlowerService flowerService=new FlowerService();
        Flower flower=new Flower();
        try {
            BeanUtils.populate(flower, request.getParameterMap());
        } catch (IllegalAccessException ex) {
            Logger.getLogger(AddFlowerServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvocationTargetException ex) {
            Logger.getLogger(AddFlowerServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(flowerService.addFlower(flower))
            response.sendRedirect("/FlowerCart/AdminView/FlowerAddition.jsp");
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
