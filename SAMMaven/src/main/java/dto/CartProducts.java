/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import Entities.Product;
import java.util.LinkedList;

/**
 *
 * @author Sheko
 */
public class CartProducts {

    ///start sherif
    private LinkedList<Product> products;

    public CartProducts() {
        products=new LinkedList<>();
    }

    public boolean addProduct(Product product) {
        return products.add(product);
    }

    public LinkedList<Product> getProducts() {
        return products;
    }

    public float totalPrice() {
        float price = 0;
        for (Product product : products) {
            price += product.getPrice();
        }
        return price;
    }

    public void removeProduct(Product product) {
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId()== product.getId()) {
                products.remove(i);
                break;
            }
        }
    }

    public void removeProduct(int id) {
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId()== id) {
                products.remove(i);
                break;
            }
        }
    }
    ///end sherif

    ///start alaa 
    ///end alaa
    ///start adel
    ///end adel
    ///start moamen 
    ///end moamen
}
