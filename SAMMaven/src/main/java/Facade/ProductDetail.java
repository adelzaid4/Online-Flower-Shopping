/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Facade;

import Entities.Product;
import dao.ProductDoa;
import java.util.ArrayList;

/**
 *
 * @author Sheko
 */
public class ProductDetail {

    public ArrayList<Product> getProductsDetails(Integer[] ids) {
        ArrayList<Product> products = new ArrayList<>();
        ProductDoa pDao = new ProductDoa();
        if( ids == null) 
            return products;
        for (int i = 0; i < ids.length; i++) {
            products.add(pDao.selectOneProduct(ids[i]));
        }
        return products;
    }
}
