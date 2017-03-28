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
import java.io.File;
import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.annotation.MultipartConfig;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Adel Zaid
 */
@WebServlet(name = "AddProductServlet", urlPatterns = {"/AddProductServlet"})
@MultipartConfig
public class AddProductServlet extends HttpServlet {

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

        try {
            //************* startAllaa **************/
            //************** EndAllaa **************/
            //************* startAdel ************
            uploadImage(request, response);
            insertProduct(request, response);
            
            //************** EndAdel **************/
            //************* startSherif **************/
            //************** EndSherif **************/
            //************* startMoamen **************/
            //************** EndMoamen **************/
        } catch (IllegalAccessException ex) {
            Logger.getLogger(AddProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvocationTargetException ex) {
            Logger.getLogger(AddProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (FileUploadException ex) {
            Logger.getLogger(AddProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    List<String> imgPaths = new ArrayList<>();
    Map<String, String> paramaters = new HashMap<String, String>();

    private void uploadImage(HttpServletRequest request, HttpServletResponse response) throws FileUploadException {
        PrintWriter out = null;
        try {

            out = response.getWriter();
            DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            List<FileItem> items = upload.parseRequest(request);
            Iterator<FileItem> iter = items.iterator();

            while (iter.hasNext()) {

                FileItem item = (FileItem) iter.next();

                if (item.isFormField()) {
                    String name = item.getFieldName();
                    String value = item.getString();
                    paramaters.put(name, value);

                } else // processUploadedFile(item);
                {
                    if (item.getSize() != 0) {
                        String itemName = item.getName();
                        Random generator = new Random();
                        int r = Math.abs(generator.nextInt());

                        String reg = "[.*]";
                        String replacingtext = "";

                        Pattern pattern = Pattern.compile(reg);
                        Matcher matcher = pattern.matcher(itemName);
                        StringBuffer buffer = new StringBuffer();

                        while (matcher.find()) {
                            matcher.appendReplacement(buffer, replacingtext);
                        }
                        int IndexOf = itemName.indexOf(".");
                        String domainName = itemName.substring(IndexOf);

                        String finalimage = buffer.toString() + "_" + r + domainName;

                        String path = "assets\\img\\bouques\\" + finalimage;
                        imgPaths.add(path);
                        File savedFile = new File(getServletContext().getRealPath("/") + path);

                        try {
                            item.write(savedFile);
                        } catch (Exception ex) {
                            Logger.getLogger(AddProductServlet.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }
                }
            }
        } catch (IOException ex) {
            Logger.getLogger(AddProductServlet.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
        }

    }

    private void insertProduct(HttpServletRequest request, HttpServletResponse response) throws IllegalAccessException, InvocationTargetException {

        Product product = new Product();
        Flower flower = null;
        ArrayList<Flower> listFlowers = new ArrayList<>();
        ArrayList<String> listOfFlowers = new ArrayList<>();
        for (Map.Entry<String, String> entry : paramaters.entrySet()) {
            String key = entry.getKey();
            if (key.contains("flower")) {
                listOfFlowers.add(entry.getValue());
            }
        }
        for (String listFlower : listOfFlowers) {
            flower = new Flower();
            flower.setName(listFlower);
            listFlowers.add(flower);
        }
        BeanUtils.populate(product, paramaters);
        product.setFlowers(listFlowers);
        ProductService productService = new ProductService();
        if (productService.addProduct(product, imgPaths)) {
            
            try {
                response.sendRedirect("/FlowerCart/AdminView/ProductAddition.jsp?add=true");
            } catch (IOException ex) {
                Logger.getLogger(AddProductServlet.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
            }
        } else {
            try {
                response.sendRedirect("/FlowerCart/AdminView/ProductAddition.jsp?add=false");
            } catch (IOException ex) {
                Logger.getLogger(AddProductServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }
}
