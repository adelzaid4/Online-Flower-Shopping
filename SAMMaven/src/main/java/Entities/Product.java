package Entities;

import java.util.ArrayList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Moamenovic
 */
public class Product {

    private int id;
    private String name;
    private float price;
    private int quantity;
    private String description;
    private int rating;
    private ArrayList<ImageEntity> images;
    private ArrayList<Flower> flowers;


    public ArrayList<Flower> getFlowers() {
        return flowers;
    }
    public int getId() {
        return id;

    }

    public void setFlowers(ArrayList<Flower> flowers) {
        this.flowers = flowers;
    }
    public void setId(int id) {
        this.id = id;
    }

    public ArrayList<ImageEntity> getImages() {
        return images;
    }

    public void setImages(ArrayList<ImageEntity> images) {
        this.images = images;
    }  
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

}
