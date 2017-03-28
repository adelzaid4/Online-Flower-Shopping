/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import Entities.Product;

/**
 *
 * @author Sheko
 */
public class CheckOutProductDetail {
    private int id;
    private String productName;
    private float unitPrice;
    private String imageUrl;

    public CheckOutProductDetail(Product product) {
        id= product.getId();
        productName=product.getName();
        unitPrice=product.getPrice();
        imageUrl=product.getImages().get(0).getUrl();
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public float getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(float unitPrice) {
        this.unitPrice = unitPrice;
    }
    
    
}
